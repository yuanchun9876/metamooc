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

import com.turing.manage.entity.SubjSection;
import com.turing.manage.entity.SubjUnit;
import com.turing.manage.entity.SubjectCourse;
import com.turing.manage.entity.Teacher;
import com.turing.manage.service.ISubjSectionService;
import com.turing.manage.service.ISubjUnitService;

@Controller
@RequestMapping("subjUnit")
public class SubjUnitController {

	@Autowired
	private ISubjUnitService  subjUnitService;
	
	@RequestMapping("query")
	public String query(HttpSession session, Model model) {
		Teacher tch = (Teacher) session.getAttribute("tch");
		String tchId = "1"; // tch.getTchId()
		List<SubjUnit> list = subjUnitService.queryByTchId(tchId);
		model.addAttribute("list", list);
		return "jsp/subjunit/list_unit";
	}
	
	@RequestMapping("addPage")
	public String addPage(HttpSession session, Model model) {
		Teacher tch = (Teacher) session.getAttribute("tch");
		String tchId = "1"; // tch.getTchId()
		model.addAttribute("tchId", tchId);
		List<SubjectCourse> subjList = subjUnitService.querySubjectCourse();
		model.addAttribute("subjList", subjList);
		return "jsp/subjunit/add_unit";
	}
	
	@RequestMapping("addSave")
	public String addSave(
					SubjUnit unit
					,@RequestParam("unitPicUrl")CommonsMultipartFile picFile
					, HttpSession session
				) throws IllegalStateException, IOException {
		// 上传logo图片
		ServletContext app = session.getServletContext();
		if(picFile != null) {
			System.out.println("picFile-fileName：" + picFile.getOriginalFilename());
			String picRootPath = app.getRealPath("/upload/unit/pic/");
	        String picPath = new Date().getTime() + picFile.getOriginalFilename();	         
	        File sctnPicFile = new File(picRootPath + picPath);
	        //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
	        picFile.transferTo(sctnPicFile);
	        unit.setSubjUnitLogoUrl("/upload/unit/pic/" + picPath);
		}
		unit.setSubjUnitId(UUID.randomUUID().toString());
		int count = subjUnitService.save(unit);
		
		System.out.println("sctn:" + count);
		
		return "redirect:query.action";
	}
	
	@RequestMapping("editPage")
	public String editPage(String subjUnitId,HttpSession session, Model model) {
		
		SubjUnit unit = subjUnitService.queryById(subjUnitId);
		model.addAttribute("unit", unit);	
		Teacher tch = (Teacher) session.getAttribute("tch");
		String tchId = "1"; // tch.getTchId()
		model.addAttribute("tchId", tchId);
		List<SubjectCourse> subjList = subjUnitService.querySubjectCourse();
		model.addAttribute("subjList", subjList);
		return "jsp/subjunit/edit_unit";
	}
	
}
