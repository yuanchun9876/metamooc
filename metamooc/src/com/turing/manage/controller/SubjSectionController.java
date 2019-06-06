package com.turing.manage.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.turing.manage.entity.SubjSection;
import com.turing.manage.entity.SubjUnit;
import com.turing.manage.entity.Teacher;
import com.turing.manage.service.ISubjSectionService;

@Controller
@RequestMapping("subjSctn")
public class SubjSectionController {

	@Autowired
	private ISubjSectionService  subjSctnService;
	
	@RequestMapping("query")
	public String query(HttpSession session, Model model) {
		Teacher tch = (Teacher) session.getAttribute("tch");
		String tchId = "1"; // tch.getTchId()
		List<SubjSection> list = subjSctnService.queryByTchId(tchId);
		model.addAttribute("list", list);
		return "jsp/subjsctn/list_sctn";
	}
	
	@RequestMapping("addPage")
	public String addPage(HttpSession session, Model model) {
		Teacher tch = (Teacher) session.getAttribute("tch");
		String tchId = "1"; // tch.getTchId()
		model.addAttribute("tchId", tchId);
		List<SubjUnit> unitList = subjSctnService.queryUnitByTchId(tchId);
		model.addAttribute("unitList", unitList);
		return "jsp/subjsctn/add_sctn";
	}
	
	@RequestMapping("addSave")
	public String addSave(SubjSection sctn, HttpSession session) {
		int count = subjSctnService.save(sctn);
		return "redirect:query.action";
	}
}
