package com.cn.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/bonusAllocation")
public class BonusAllocationController {
	@RequestMapping("/bonusAllocation.action")
	public String violationChannel(){
		return "/bonusAllocation";
	}
	
}
