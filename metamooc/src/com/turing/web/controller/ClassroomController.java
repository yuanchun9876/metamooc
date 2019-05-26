package com.turing.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.turing.manage.entity.SubjUnit;
import com.turing.web.entity.Student;
import com.turing.web.service.IClassroomService;

@Controller
@RequestMapping("/classroom")
public class ClassroomController {
	
	@Autowired
	private IClassroomService classroomService;

	@RequestMapping("/login")
	public String login(HttpSession session) {
		System.out.println("/classroom/login");
		String crdSn = "J2019000001";
		Student stu = classroomService.queryStuByCard(crdSn);
		session.setAttribute("stu", stu);
		return "redirect:openVideoPage.action";
	}
	
	@RequestMapping("/openVideoPage")
	public String openVideoPage(HttpSession session, Model model) {
		System.out.println("/classroom/openVideoPage");
		List<SubjUnit> unitList = classroomService.querySubjUnitList();
//		System.out.println("unitList:" + unitList);
		model.addAttribute("unitList", unitList);
		
		Student stu = (Student) session.getAttribute("stu");
		System.out.println(stu.getStuName());
		
		return "classroom/video";
	}
}
