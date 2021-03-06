package com.cn.test.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.test.entity.Bonus;
import com.cn.test.service.BonusService;
import com.cn.test.utils.Constant;
import com.cn.test.utils.ResultHelperEasyui;

@Controller
@RequestMapping("/bonusAllocation")
public class BonusAllocationController {
	@Resource
	private BonusService bonusService;
	
	@RequestMapping("/bonusAllocation.action")
	public String violationChannel(){
		return "/bonusAllocation";
	}
	
	@ResponseBody
	@RequestMapping("/getBonusPage.action")
	public Object getBonusPage(Bonus entity){
		List<Bonus> list=bonusService.getBonusPage(entity);
		int total = bonusService.getTotalBonus(entity);
		return new ResultHelperEasyui(list, total,Constant.SUCCESS_CODE, Constant.SUCCESS_MSG);
	}
	
}
