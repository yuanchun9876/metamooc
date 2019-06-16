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
import com.turing.manage.entity.Teacher;
import com.turing.manage.service.ISubjSectionService;
import com.turing.manage.service.ITeacherService;

@Controller
@RequestMapping("tch")
public class TeacherController {

	@Autowired
	private ITeacherService  teacherService;
	
	@RequestMapping("query")
	public String query(HttpSession session, Model model) {
		
		List<Teacher> list = teacherService.queryAll();
		model.addAttribute("list", list);
		return "jsp/tch/list_tch";
	}
	
	@RequestMapping("addPage")
	public String addPage(HttpSession session, Model model) {
		
		return "jsp/tch/add_tch";
	}
	
	@RequestMapping("addSave")
	public String addSave(
				Teacher tch
				,@RequestParam("tchPicUrl")CommonsMultipartFile picFile
				, HttpSession session
			) throws IllegalStateException, IOException {
		
		// 上传logo图片
		
		ServletContext app = session.getServletContext();
		
		if(picFile != null) {
			System.out.println("picFile-fileName：" + picFile.getOriginalFilename());
			String picRootPath = app.getRealPath("/upload/tch/pic/");
	        String picPath = new Date().getTime() + picFile.getOriginalFilename();	         
	        File sctnPicFile = new File(picRootPath + picPath);
	        //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
	        picFile.transferTo(sctnPicFile);
	        tch.setTchPic("/upload/tch/pic/" + picPath);
		}
		tch.setTchId(UUID.randomUUID().toString());
		int count = teacherService.save(tch);		
		System.out.println("sctn:" + count);
		
		return "redirect:query.action";
	}
	
	@RequestMapping("editPage")
	public String editPage(String tchId,HttpSession session, Model model) {
		
		Teacher tch = teacherService.queryById(tchId);
		model.addAttribute("tch", tch);
		return "jsp/tch/edit_tch";
	}
	

}
