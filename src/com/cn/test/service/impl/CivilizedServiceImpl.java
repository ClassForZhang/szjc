package com.cn.test.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.test.dao.CivilizedDao;
import com.cn.test.entity.CivilizedEvaluation;
import com.cn.test.service.CivilizedService;

@Service
public class CivilizedServiceImpl implements CivilizedService{

	@Resource
	private CivilizedDao civilizedDao;

	@Override
	public List<CivilizedEvaluation> getFormData(CivilizedEvaluation civilizedEvaluation) {
		return civilizedDao.getFormData(civilizedEvaluation);
	}

	@Override
	public List<CivilizedEvaluation> getDataByPeopleName(String peopleName,String startTime, String endTime) {
		return civilizedDao.getDataByPeopleName(peopleName,startTime,endTime);
	}

	@Override
	public List<CivilizedEvaluation> getFormDataByTime(String startTime, String endTime) {
		return civilizedDao.getFormDataByTime(startTime,endTime);
	}

	@Override
	public int getTotalData() {
		return civilizedDao.getTotalData();
	}

	@Override
	public void update(int orderId, String[] nos) {
		civilizedDao.update(orderId,nos);
	}

	@Override
	public void updateByIds(int status, String[] cIds) {
		civilizedDao.updateByIds(status,cIds);
	}

	@Override
	public void updateAllById(CivilizedEvaluation civilizedEvaluation) {
		civilizedDao.updateAllById(civilizedEvaluation);
	}
}
