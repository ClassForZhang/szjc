package com.cn.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/monitorPersonAssess")
public class MonitorPersionController {
	@RequestMapping("/monitorPersonAssess.action")
	public String monitorPersonAssess(){
		return "/monitorPersonAssess";
	}
	
}
