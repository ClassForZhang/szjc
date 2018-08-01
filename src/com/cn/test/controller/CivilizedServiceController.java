package com.cn.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/civilizedService")
public class CivilizedServiceController {
	@RequestMapping("/civilizedForm.action")
	public String civilizedForm(){
		return "/civilizedForm";
	}
	
	@RequestMapping("/civilizedList.action")
	public String civilizedList(){
		return "/civilizedList";
	}
	
	@RequestMapping("/civilizedCheckedList.action")
	public String civilizedCheckedList(){
		return "/civilizedCheckedList";
	}
	
}
