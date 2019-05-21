package com.turing.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.turing.manage.entity.SubjUnit;
import com.turing.web.service.IClassroomService;

@Controller
@RequestMapping("/classroom")
public class ClassroomController {
	
	@Autowired
	private IClassroomService classroomService;

	@RequestMapping("/login")
	public String login() {
		System.out.println("/classroom/login");
		
		
		
		return "redirect:openVideoPage.action";
	}
	
	@RequestMapping("/openVideoPage")
	public String openVideoPage(Model model) {
		System.out.println("/classroom/openVideoPage");
		List<SubjUnit> unitList = classroomService.querySubjUnitList();
		System.out.println("unitList:" + unitList);
		model.addAttribute("unitList", unitList);
		return "classroom/video";
	}
}
