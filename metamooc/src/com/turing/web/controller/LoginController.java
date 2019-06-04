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
			model.addAttribute("msg", "卡号异常");
			return "home/login";
		}
		System.out.println("card:" + card.getCrdId());
		// 判断是否已激活
		Student stu = loginService.queryStuByCard(card.getCrdId());
		System.out.println("stu:" + stu);
		if (stu!=null) {
			// 已激活
			if (stu.getStuPass().equals(pass)) {
				// 验证密码通过
				// 验证是否过期
				int flag = -1; //loginService.isInvalid();
			
				if (flag > 0) {
					// 已过期
					model.addAttribute("msg", "账号已过期");
					return "home/renew"; // 转向续费页面
				} else {
					// 未过期
					session.setAttribute("stu", stu);
					// 当前的科目单元类型
					session.setAttribute("subj", "1");
					return "redirect:/classroom/openVideoPage.action";
				}
				
			} else {
				// 验证没通过
				model.addAttribute("msg", "密码异常");
				return "home/login";
			}
			
		} else {
			// 未激活  
			if (card.getCrdPass().equals(pass)) {
				return "home/activetion"; // 转向续费页面	
			} else {
				model.addAttribute("msg", "密码异常");
				return "home/login";
			
			}
			
		}
		
	}
}
