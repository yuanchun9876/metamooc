package com.turing.manage.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.turing.manage.entity.Teacher;

@Controller
@RequestMapping("/test")
public class TestController {

	@RequestMapping("/test")
	public String test(@RequestParam("file") CommonsMultipartFile file,Teacher tch) throws IllegalStateException, IOException {
		
		System.out.println("test:" + file);
		System.out.println("test:" + tch.getTchName());
	    long  startTime=System.currentTimeMillis();
        System.out.println("fileName："+file.getOriginalFilename());
        String path="E:/"+new Date().getTime()+file.getOriginalFilename();
         
        File newFile=new File(path);
        //通过CommonsMultipartFile的方法直接写文件（注意这个时候）
        file.transferTo(newFile);
        long  endTime=System.currentTimeMillis();
        System.out.println("方法二的运行时间："+String.valueOf(endTime-startTime)+"ms");
	        
		return "";
	}
}
