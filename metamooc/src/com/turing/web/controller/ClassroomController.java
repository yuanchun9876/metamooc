package com.turing.web.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.turing.manage.entity.ResourceData;
import com.turing.manage.entity.ResourceType;
import com.turing.manage.entity.SubjSection;
import com.turing.manage.entity.SubjUnit;
import com.turing.web.service.IClassroomService;

@Controller
@RequestMapping("/classroom")
public class ClassroomController {
	
	@Autowired
	private IClassroomService classroomService;

	

	
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
			
			model.addAttribute("unitSelected", unitList.get(0).getSubjUnitId()); // ��ʾ��ѡ��
			
			List<SubjSection> sctnList = classroomService.querySubjSectionListByUnit(unitList.get(0).getSubjUnitId());
			System.out.println("sctnList:" + sctnList);
			model.addAttribute("sctnList", sctnList);
			
			// ���� ֪ʶ�� ��ѯ��Ӧ��Ч����Դ����
			List<ResourceType> rsrcTypeList = classroomService.queryRsrcTypeByUnit(unitList.get(0).getSubjUnitId());
			model.addAttribute("rsrcTypeList", rsrcTypeList);
			// ���� ֪ʶ�� ��ѯ��Ӧ����Դ
			List<ResourceData> rsrcDataList = classroomService.queryRsrcDataByUnit(unitList.get(0).getSubjUnitId());
			model.addAttribute("rsrcDataList", rsrcDataList);
		}
		
//		// ѧԱ��Ϣ
//		Student stu = (Student) session.getAttribute("stu");
//		System.out.println(stu.getStuName());
//		model.addAttribute("stu", stu);
		
		
		
		
		
		return "classroom/video";
	}
	
	@RequestMapping("/querySctnByUnit")
	public String querySctnByUnit(String unitId, HttpSession session, Model model) {
		System.out.println("/classroom/querySctnByUnit");
		
		// �õ� ���б�
		String subjId = (String) session.getAttribute("subj");
		List<SubjUnit> unitList = classroomService.querySubjUnitListBySubj(subjId);
		System.out.println("unitList:" + unitList);
		model.addAttribute("unitList", unitList);
		
		model.addAttribute("unitSelected", unitId); // ��ʾ��ѡ��
		
		List<SubjSection> sctnList = classroomService.querySubjSectionListByUnit(unitId);
		System.out.println("sctnList:" + sctnList);
		model.addAttribute("sctnList", sctnList);
		
		// ���� ֪ʶ�� ��ѯ��Ӧ��Ч����Դ����
		List<ResourceType> rsrcTypeList = classroomService.queryRsrcTypeByUnit(unitId);
		model.addAttribute("rsrcTypeList", rsrcTypeList);
		// ���� ֪ʶ�� ��ѯ��Ӧ����Դ
		List<ResourceData> rsrcDataList = classroomService.queryRsrcDataByUnit(unitId);
		model.addAttribute("rsrcDataList", rsrcDataList);
		
		
		return "classroom/video";
	}
	

}
