package com.turing.web.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.turing.manage.entity.SubjSection;
import com.turing.manage.entity.SubjUnit;
import com.turing.web.entity.Student;
import com.turing.web.service.IClassroomService;

@Controller
@RequestMapping("/classroom")
public class ClassroomController {
	
	@Autowired
	private IClassroomService classroomService;
	
	
	@RequestMapping("/loginPage")
	public String loginPage(String subjId, Model model) {
		System.out.println("/classroom/loginPage");
		model.addAttribute("subjId", subjId);
		
		return "home/login";
	}
	
	
	@RequestMapping("/login")
	public String login(HttpSession session) {
		System.out.println("/classroom/login");
		String crdSn = "J2019000001";
		Student stu = classroomService.queryStuByCard(crdSn);
		session.setAttribute("stu", stu);
		// ��ǰ�Ŀ�Ŀ��Ԫ����
		session.setAttribute("subj", "1");
		return "redirect:openVideoPage.action";
	}
	
	@RequestMapping("/openVideoPage")
	public String openVideoPage(HttpSession session, Model model) {
		System.out.println("/classroom/openVideoPage");
		
		// �õ� ���б�
		String subjId = (String) session.getAttribute("subj");
		List<SubjUnit> unitList = classroomService.querySubjUnitListBySubj(subjId);
		System.out.println("unitList:" + unitList);
		model.addAttribute("unitList", unitList);
		
		// �õ� ���б��е�һ����Ӧ�Ľ��б�
		if (unitList!=null && unitList.size()>0) {
			List<SubjSection> sctnList = classroomService.querySubjSectionListByUnit(unitList.get(0).getSubjUnitId());
			System.out.println("sctnList:" + sctnList);
			model.addAttribute("sctnList", sctnList);
		}
		
//		// ѧԱ��Ϣ
//		Student stu = (Student) session.getAttribute("stu");
//		System.out.println(stu.getStuName());
//		model.addAttribute("stu", stu);
		
		return "classroom/video";
	}
}
