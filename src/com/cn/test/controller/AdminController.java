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
	
	
}
