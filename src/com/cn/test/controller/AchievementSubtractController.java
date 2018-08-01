package com.cn.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/achievementSubtract")
public class AchievementSubtractController {
	@RequestMapping("/achievementSubtract.action")
	public String violationChannel(){
		return "/achievementSubtract";
	}
	
}
