package com.cn.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/addSubtractProcess")
public class ScoreProcessController {
	@RequestMapping("/addSubtractProcess.action")
	public String addSubtractProcess(){
		return "/addSubtractProcess";
	}
}
