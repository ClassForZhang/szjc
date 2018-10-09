package com.cn.test.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	
	@RequestMapping("/loginSuccess")
	public String loginSuccess(){
		
		logger.info("登录成功");
		
		return "/index";
	}

}
