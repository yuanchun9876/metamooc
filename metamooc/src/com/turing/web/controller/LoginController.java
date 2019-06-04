package com.turing.web.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.turing.web.entity.Student;
import com.turing.web.entity.StudyCard;
import com.turing.web.service.ILoginService;

@Controller
@RequestMapping("/login")
public class LoginController {
	
	@Autowired
	private ILoginService loginService;

	@RequestMapping("/loginPage")
	public String loginPage(String subjId, Model model) {
		System.out.println("/login/loginPage");
		model.addAttribute("subjId", subjId);		
		return "home/login";
	}
	
	@RequestMapping("/login")
	public String login(String crdSn, String pass, String subjId, Model model, HttpSession session) {
		System.out.println("/classroom/login");
		//crdSn = "J2019000001";
		model.addAttribute("subjId", subjId);
		StudyCard card = loginService.queryCardBySn(crdSn);
		if(card == null) {
			model.addAttribute("msg", "�����쳣");
			return "home/login";
		}
		System.out.println("card:" + card.getCrdId());
		// �ж��Ƿ��Ѽ���
		Student stu = loginService.queryStuByCard(card.getCrdId());
		System.out.println("stu:" + stu);
		if (stu!=null) {
			// �Ѽ���
			if (stu.getStuPass().equals(pass)) {
				// ��֤����ͨ��
				// ��֤�Ƿ����
				int flag = -1; //loginService.isInvalid();
			
				if (flag > 0) {
					// �ѹ���
					model.addAttribute("msg", "�˺��ѹ���");
					return "home/renew"; // ת������ҳ��
				} else {
					// δ����
					session.setAttribute("stu", stu);
					// ��ǰ�Ŀ�Ŀ��Ԫ����
					session.setAttribute("subj", "1");
					return "redirect:/classroom/openVideoPage.action";
				}
				
			} else {
				// ��֤ûͨ��
				model.addAttribute("msg", "�����쳣");
				return "home/login";
			}
			
		} else {
			// δ����  
			if (card.getCrdPass().equals(pass)) {
				return "home/activetion"; // ת������ҳ��	
			} else {
				model.addAttribute("msg", "�����쳣");
				return "home/login";
			
			}
			
		}
		
	}
}
