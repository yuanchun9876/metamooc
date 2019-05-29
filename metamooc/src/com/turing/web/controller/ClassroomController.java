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

	

	
	@RequestMapping("/openVideoPage")
	public String openVideoPage(HttpSession session, Model model) {
		System.out.println("/classroom/openVideoPage");
		
		// 得到 章列表
		String subjId = (String) session.getAttribute("subj");
		List<SubjUnit> unitList = classroomService.querySubjUnitListBySubj(subjId);
		System.out.println("unitList:" + unitList);
		model.addAttribute("unitList", unitList);
		
		
		
		// 得到 章列表中第一个对应的节列表
		if (unitList!=null && unitList.size()>0) {
			
			model.addAttribute("unitSelected", unitList.get(0).getSubjUnitId()); // 表示被选中
			
			List<SubjSection> sctnList = classroomService.querySubjSectionListByUnit(unitList.get(0).getSubjUnitId());
			System.out.println("sctnList:" + sctnList);
			model.addAttribute("sctnList", sctnList);
		}
		
//		// 学员信息
//		Student stu = (Student) session.getAttribute("stu");
//		System.out.println(stu.getStuName());
//		model.addAttribute("stu", stu);
		
		return "classroom/video";
	}
	
	@RequestMapping("/querySctnByUnit")
	public String querySctnByUnit(String unitId, HttpSession session, Model model) {
		System.out.println("/classroom/querySctnByUnit");
		
		// 得到 章列表
		String subjId = (String) session.getAttribute("subj");
		List<SubjUnit> unitList = classroomService.querySubjUnitListBySubj(subjId);
		System.out.println("unitList:" + unitList);
		model.addAttribute("unitList", unitList);
		
		model.addAttribute("unitSelected", unitId); // 表示被选中
		List<SubjSection> sctnList = classroomService.querySubjSectionListByUnit(unitId);
		System.out.println("sctnList:" + sctnList);
		model.addAttribute("sctnList", sctnList);
		
		return "classroom/video";
	}
}
