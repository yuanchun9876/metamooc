package com.turing.manage.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.turing.manage.entity.ResourceType;
import com.turing.manage.entity.SubjSection;
import com.turing.manage.entity.SubjUnit;
import com.turing.manage.entity.Teacher;
import com.turing.manage.service.IResourceTypeService;
import com.turing.manage.service.ISubjSectionService;

@Controller
@RequestMapping("rsrcType")
public class ResourceTypeController {

	@Autowired
	private IResourceTypeService  rsrcTypeService;
	
	@RequestMapping("query")
	public String query(HttpSession session, Model model) {		
		List<ResourceType> list = rsrcTypeService.query();
		model.addAttribute("list", list);
		return "jsp/rsrctype/list_rsrctype";
	}
	
	@RequestMapping("addPage")
	public String addPage(HttpSession session, Model model) {
		return "jsp/rsrctype/add_rsrctype";
	}
	
	@RequestMapping("addSave")
	public String addSave(ResourceType rsrcType) throws IllegalStateException, IOException {
		rsrcType.setRsrcTypeId(UUID.randomUUID().toString());
		int count = rsrcTypeService.save(rsrcType);		
		System.out.println("sctn:" + count);		
		return "redirect:query.action";
	}
	
	@RequestMapping("editPage")
	public String editPage(String rsrcTypeId, Model model) {
		ResourceType rsrcType = rsrcTypeService.queryById(rsrcTypeId);
		model.addAttribute("rsrcType", rsrcType);		
		return "jsp/subjsctn/edit_sctn";
	}
	
}
