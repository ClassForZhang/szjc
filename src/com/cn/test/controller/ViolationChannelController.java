package com.cn.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/violationChannel")
public class ViolationChannelController {
	@RequestMapping("/violationChannel.action")
	public String violationChannel(){
		return "/violationChannel";
	}
	
}
