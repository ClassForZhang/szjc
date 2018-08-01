package com.cn.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	@RequestMapping("/index.action")
	public String hello(){
		return "/index";
	}
	
	@RequestMapping("/home.action")
	public String home(){
		return "/home";
	}
	
	@RequestMapping("/refuse.action")
	public String refuse(){
		return "/refuse";
	}
	
	@RequestMapping("/operateSpecialForm.action")
	public String operateSpecialForm(){
		return "/operateSpecialForm";
	}
	
	@RequestMapping("/operateSpecialPublish.action")
	public String operateSpecialPublish(){
		return "/operateSpecialPublish";
	}
	
	@RequestMapping("/operateSpecialCheck.action")
	public String operateSpecialCheck(){
		return "/operateSpecialCheck";
	}
}
