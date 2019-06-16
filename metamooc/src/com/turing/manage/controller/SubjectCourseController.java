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
import com.turing.manage.service.ISubjectCourseService;

@Controller
@RequestMapping("subj")
public class SubjectCourseController {

	@Autowired
	private ISubjectCourseService  subjectCourseService;
	
	@RequestMapping("query")
	public String query(HttpSession session, Model model) {
		
		List<SubjectCourse> list = subjectCourseService.query();
		model.addAttribute("list", list);
		return "jsp/subj/list_subj";
	}
	
	@RequestMapping("addPage")
	public String addPage(HttpSession session, Model model) {
		return "jsp/subj/add_subj";
	}
	
	@RequestMapping("addSave")
	public String addSave(
						SubjectCourse subj
						,@RequestParam("subjPicUrl")CommonsMultipartFile picFile
						, HttpSession session
					) throws IllegalStateException, IOException {
		// 上传logo图片
		ServletContext app = session.getServletContext();
		if(picFile != null) {
			System.out.println("picFile-fileName：" + picFile.getOriginalFilename());
			String picRootPath = app.getRealPath("/upload/subj/pic/");
	        String picPath = new Date().getTime() + picFile.getOriginalFilename();	         
	        File sctnPicFile = new File(picRootPath + picPath);
	        //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
	        picFile.transferTo(sctnPicFile);
	        subj.setSubjLogoUrl("/upload/subj/pic/" + picPath);
		}
	
		subj.setSubjId(UUID.randomUUID().toString());
		int count = subjectCourseService.save(subj);
		
		System.out.println("sctn:" + count);
		
		return "redirect:query.action";
	}
	
	@RequestMapping("editPage")
	public String editPage(String subjId,HttpSession session, Model model) {
		
		SubjectCourse subj = subjectCourseService.queryById(subjId);
		model.addAttribute("subj", subj);
		
		return "jsp/subj/edit_subj";
	}
	
}
