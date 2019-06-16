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

import com.turing.manage.entity.ResourceData;
import com.turing.manage.entity.ResourceType;
import com.turing.manage.entity.SubjSection;
import com.turing.manage.entity.SubjUnit;
import com.turing.manage.entity.Teacher;
import com.turing.manage.service.IResourceDataService;
import com.turing.manage.service.ISubjSectionService;

@Controller
@RequestMapping("rsrc")
public class ResourceDataController {

	@Autowired
	private IResourceDataService  rsrcService;
	
	@RequestMapping("query")
	public String query(HttpSession session, Model model) {		
		List<ResourceData> list = rsrcService.query();
		model.addAttribute("list", list);
		return "jsp/rsrc/list_rsrc";
	}
	
	@RequestMapping("addPage")
	public String addPage(HttpSession session, Model model) {

		List<ResourceType> typeList = rsrcService.queryType();
		model.addAttribute("typeList", typeList);
		
		List<SubjUnit> unitList = rsrcService.queryUnit();
		model.addAttribute("unitList", unitList);
		return "jsp/rsrc/add_rsrc";
	}
	
	@RequestMapping("addSave")
	public String addSave(
					ResourceData rsrc
					,@RequestParam("rsrcPicUrl")CommonsMultipartFile picFile
					, HttpSession session
				) throws IllegalStateException, IOException {
		// 上传logo图片
		ServletContext app = session.getServletContext();
		if(picFile != null) {
			System.out.println("picFile-fileName：" + picFile.getOriginalFilename());
			String picRootPath = app.getRealPath("/upload/rsrc/pic/");
	        String picPath = new Date().getTime() + picFile.getOriginalFilename();	         
	        File sctnPicFile = new File(picRootPath + picPath);
	        //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
	        picFile.transferTo(sctnPicFile);
	        rsrc.setRsrcLogoUrl("/upload/rsrc/pic/" + picPath);
		}
		rsrc.setRsrcId(UUID.randomUUID().toString());
		int count = rsrcService.save(rsrc);
		
		System.out.println("sctn:" + count);
		
		return "redirect:query.action";
	}
	
	@RequestMapping("editPage")
	public String editPage(String rsrcId,HttpSession session, Model model) {
		
		ResourceData rsrc = rsrcService.queryById(rsrcId);
		model.addAttribute("rsrc", rsrc);
		
		List<ResourceType> typeList = rsrcService.queryType();
		model.addAttribute("typeList", typeList);
		
		List<SubjUnit> unitList = rsrcService.queryUnit();
		model.addAttribute("unitList", unitList);
		
		return "jsp/rsrc/edit_rsrc";
	}
	
}
