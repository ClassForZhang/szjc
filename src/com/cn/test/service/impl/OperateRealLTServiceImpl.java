package com.cn.test.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.test.dao.OperateRealLTDao;
import com.cn.test.service.OperateRealLTService;

@Service
public class OperateRealLTServiceImpl implements OperateRealLTService{

	@Resource
	private OperateRealLTDao operateRealLTDao;

	@Override
	public int getLTCarNum(String station_id, String month) {
		return operateRealLTDao.getLTCarNum(station_id,month);
	}

	@Override
	public int getltToll(String station_id, String month) {
		return operateRealLTDao.getltToll(station_id,month);
	}
	
	
}
