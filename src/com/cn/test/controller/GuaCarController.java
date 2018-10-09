package com.cn.test.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.test.entity.GuaCar;
import com.cn.test.service.GuaService;

@Controller
@RequestMapping("/guaCar")
public class GuaCarController {
	
	@Resource
	private GuaService guaService;
	
	@RequestMapping("/guaCar.action")
	public String guaCar(){
		return "/guaCar";
	}
	
	@ResponseBody
	@RequestMapping("/getData.action")
	public List<GuaCar> getData(ModelMap modelMap){
		List<GuaCar> list=guaService.getGuaCarList();
		modelMap.put("size", list.size());
		return list;
	}
}
