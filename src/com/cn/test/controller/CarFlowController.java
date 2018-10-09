package com.cn.test.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.test.entity.CarFlow;
import com.cn.test.service.CarFlowService;

@Controller
@RequestMapping("/carFlow")
public class CarFlowController {

	@Resource
	private CarFlowService carFlowService;
	
	@RequestMapping("/carFlow.action")
	public String carFlow(){
		return "/carFlow";
	}
	
	@ResponseBody
	@RequestMapping("/getData.action")
	public List<CarFlow> getData(){
		List<CarFlow> carFlowList = carFlowService.getCarFlowList();
		return carFlowList;
	}
	
	
}
