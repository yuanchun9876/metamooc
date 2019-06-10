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
	public String addSave(SubjSection sctn,@RequestParam("sctnPicUrl")CommonsMultipartFile picFile,@RequestParam("sctnVideoUrl") CommonsMultipartFile videoFile, HttpSession session) throws IllegalStateException, IOException {
		// 上传logo图片
		ServletContext app = session.getServletContext();
		if(picFile != null) {
			System.out.println("picFile-fileName：" + picFile.getOriginalFilename());
			String picRootPath = app.getRealPath("/upload/sctn/pic/");
	        String picPath = new Date().getTime() + picFile.getOriginalFilename();	         
	        File sctnPicFile = new File(picRootPath + picPath);
	        //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
	        picFile.transferTo(sctnPicFile);
	        sctn.setSubjSctnLogoUrl("/upload/sctn/pic/" + picPath);
		}
		if(videoFile != null) {
			System.out.println("videoFile-fileName：" + videoFile.getOriginalFilename());
			String videoRootPath = app.getRealPath("/upload/sctn/video/");
	        String videoPath = new Date().getTime() + videoFile.getOriginalFilename();	         
	        File sctnVideoFile = new File(videoRootPath + videoPath);
	        //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
	        videoFile.transferTo(sctnVideoFile);
	        sctn.setSubjSctnVideoUrl("/upload/sctn/video/" + videoPath);
		}
		sctn.setSubjSctnId(UUID.randomUUID().toString());
		int count = subjSctnService.save(sctn);
		
		System.out.println("sctn:" + count);
		
		return "redirect:query.action";
	}
	
	@RequestMapping("editPage")
	public String editPage(String subjSctnId,HttpSession session, Model model) {
		
		SubjSection sctn = subjSctnService.queryById(subjSctnId);
		model.addAttribute("sctn", sctn);
		
		Teacher tch = (Teacher) session.getAttribute("tch");
		String tchId = "1"; // tch.getTchId()
		model.addAttribute("tchId", tchId);
		List<SubjUnit> unitList = subjSctnService.queryUnitByTchId(tchId);
		model.addAttribute("unitList", unitList);
		return "jsp/subjsctn/edit_sctn";
	}
	
	@RequestMapping("videoPlay")
	public String videoPlay(String subjSctnId, Model model) {
		
		SubjSection sctn = subjSctnService.queryById(subjSctnId);
		model.addAttribute("pic", sctn.getSubjSctnLogoUrl());
		model.addAttribute("vv", sctn.getSubjSctnVideoUrl());
		return "jsp/common/play_video";
	}
}
