package com.turing.web.controller;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.turing.manage.entity.ResourceData;
import com.turing.manage.entity.ResourceType;
import com.turing.manage.entity.SubjSection;
import com.turing.manage.entity.SubjUnit;
import com.turing.web.entity.NoteType;
import com.turing.web.entity.StuStudy;
import com.turing.web.entity.StuStudyNote;
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
		
//		// 学员信息
		Student stu = (Student) session.getAttribute("stu");
//		System.out.println(stu.getStuName());
//		model.addAttribute("stu", stu);
		
		
		// 得到 章列表
		String subjId = (String) session.getAttribute("subj");
		List<SubjUnit> unitList = classroomService.querySubjUnitListBySubj(subjId);
		//System.out.println("unitList:" + unitList);
		model.addAttribute("unitList", unitList);
		
		
		
		// 得到 章列表中第一个对应的节列表
		if (unitList!=null && unitList.size()>0) {
			
			model.addAttribute("unit",  unitList.get(0));
			
			model.addAttribute("unitSelected", unitList.get(0).getSubjUnitId()); // 表示被选中
			
			List<SubjSection> sctnList = classroomService.querySubjSectionListByUnit(unitList.get(0).getSubjUnitId());
			//System.out.println("sctnList:" + sctnList);
			model.addAttribute("sctnList", sctnList);
			
			if(sctnList!=null && sctnList.size()>0) {
				model.addAttribute("sctn",  sctnList.get(0));
				// 学习 记录
				// ...
				StuStudy stuStudy = classroomService.stuStudyInfo(stu.getStuId(), sctnList.get(0).getSubjSctnId());
				model.addAttribute("stuStudy",  stuStudy);
				
			}
			
			// 根据 知识章 查询对应有效的资源类型
			List<ResourceType> rsrcTypeList = classroomService.queryRsrcTypeByUnit(unitList.get(0).getSubjUnitId());
			model.addAttribute("rsrcTypeList", rsrcTypeList);
			// 根据 知识章 查询对应的资源
			List<ResourceData> rsrcDataList = classroomService.queryRsrcDataByUnit(unitList.get(0).getSubjUnitId());
			model.addAttribute("rsrcDataList", rsrcDataList);
		}
		

		
		// 笔记 类型
		List<NoteType> noteTypeList = classroomService.queryNoteType();
		model.addAttribute("noteTypeList", noteTypeList);
		
		// 个人笔记
		List<StuStudyNote> ssNoteList = classroomService.queryStuStudyNoteByStu(stu.getStuId());
		model.addAttribute("ssNoteList", ssNoteList);
		
		
		return "classroom/video";
	}
	
	@RequestMapping("/querySctnByUnit")
	public String querySctnByUnit(String unitId, String sctnId, HttpSession session, Model model) {
		System.out.println("/classroom/querySctnByUnit");
//		// 学员信息
		Student stu = (Student) session.getAttribute("stu");
		
		SubjUnit unit = classroomService.queryById(unitId);
		model.addAttribute("unit",  unit);
		
		// 得到 章列表
		String subjId = (String) session.getAttribute("subj");
		List<SubjUnit> unitList = classroomService.querySubjUnitListBySubj(subjId);
		System.out.println("unitList:" + unitList);
		model.addAttribute("unitList", unitList);
		
		model.addAttribute("unitSelected", unitId); // 表示被选中
		
		List<SubjSection> sctnList = classroomService.querySubjSectionListByUnit(unitId);
		System.out.println("sctnList:" + sctnList);
		model.addAttribute("sctnList", sctnList);
		
		if(sctnId != null) {
			SubjSection sctn = classroomService.querySctnById(sctnId);
			System.out.println("sctn:" + sctn.getSubjSctnTitle());
			model.addAttribute("sctn", sctn);
			// 学习 记录			
			StuStudy stuStudy = classroomService.stuStudyInfo(stu.getStuId(), sctnId);
			model.addAttribute("stuStudy",  stuStudy);
		}else {
			if(sctnList!=null && sctnList.size()>0) {
				System.out.println("sctn:" + sctnList.get(0).getSubjSctnTitle());
				model.addAttribute("sctn",  sctnList.get(0));
			}
		}
		
		// 根据 知识章 查询对应有效的资源类型
		List<ResourceType> rsrcTypeList = classroomService.queryRsrcTypeByUnit(unitId);
		model.addAttribute("rsrcTypeList", rsrcTypeList);
		// 根据 知识章 查询对应的资源
		List<ResourceData> rsrcDataList = classroomService.queryRsrcDataByUnit(unitId);
		model.addAttribute("rsrcDataList", rsrcDataList);
		
		// 笔记 类型
		List<NoteType> noteTypeList = classroomService.queryNoteType();
		model.addAttribute("noteTypeList", noteTypeList);
		

		
		// 个人笔记
		List<StuStudyNote> ssNoteList = classroomService.queryStuStudyNoteByStu(stu.getStuId());
		model.addAttribute("ssNoteList", ssNoteList);
		
		return "classroom/video";
	}
	

}
