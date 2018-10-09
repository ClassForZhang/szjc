package com.cn.test.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.test.entity.StationError;
import com.cn.test.service.StationErrorService;
import com.cn.test.utils.DateUtil;

@Controller
@RequestMapping("/stationError")
public class StationErrorController {
	
	@Resource
	private StationErrorService stationErrorService;

	@RequestMapping("/stationError.action")
	public String stationError(){
		return "/stationError";
	}
	
	@ResponseBody
	@RequestMapping("/getData.action")
	public List<StationError> getData(){
		String date = DateUtil.getStringMonthDay(DateUtil.getCurrentDate());
		List<StationError> stationErrorList=stationErrorService.getStationErrorList(date);
		return stationErrorList;
	}
}
