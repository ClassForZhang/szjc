package com.cn.test.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.test.dao.CarFlowDao;
import com.cn.test.entity.CarFlow;
import com.cn.test.service.CarFlowService;

@Service
public class CarFlowServiceImpl implements CarFlowService{
	
	@Resource
	private CarFlowDao carFlowDao;

	@Override
	public List<CarFlow> getCarFlowList() {
		return carFlowDao.getCarFlowList();
	}
	
	
}
