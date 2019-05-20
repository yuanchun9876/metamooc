package com.turing.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.turing.web.service.IHomeService;
import com.turing.web.service.impl.HomeServiceImpl;

@Controller
@RequestMapping("/home")
public class HomeController {

	private IHomeService homeService = new HomeServiceImpl();
	
	@RequestMapping("/homePage")
	public String homePage() {
		
		
		return "home/index";
	}
}
