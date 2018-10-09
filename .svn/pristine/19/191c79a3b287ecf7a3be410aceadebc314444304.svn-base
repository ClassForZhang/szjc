package com.cn.test.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.test.dao.StationErrorDao;
import com.cn.test.entity.StationError;
import com.cn.test.service.StationErrorService;

@Service
public class StationErrorServiceImpl implements StationErrorService{
	
	@Resource
	private StationErrorDao stationErrorDao;

	@Override
	public List<StationError> getStationErrorList(String date) {
		return stationErrorDao.getStationErrorList(date);
	}
	
	
}
