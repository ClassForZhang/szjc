package com.cn.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/carProcess")
public class CarProcessController {
	@RequestMapping("/carProcess.action")
	public String carProcess(){
		return "/carProcess";
	}
	
}
