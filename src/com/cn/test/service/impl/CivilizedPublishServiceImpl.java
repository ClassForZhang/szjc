package com.cn.test.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.test.dao.CivilizedPublishDao;
import com.cn.test.entity.CivilizedEvaluation;
import com.cn.test.entity.CivilizedPublish;
import com.cn.test.service.CivilizedPublishService;

@Service
public class CivilizedPublishServiceImpl implements CivilizedPublishService{

	@Resource
	private CivilizedPublishDao civilizedPublishDao;

	@Override
	public void save(CivilizedPublish civilizedPublish) {
		civilizedPublishDao.save(civilizedPublish);
	}

	@Override
	public List<CivilizedEvaluation> getListData(CivilizedPublish civilizedPublish) {
		return civilizedPublishDao.getListData(civilizedPublish);
	}

	@Override
	public int getTotalListData() {
		return civilizedPublishDao.getTotalListData();
	}

	@Override
	public int getIdByTime(String time) {
		return civilizedPublishDao.getIdByTime(time);
	}

	@Override
	public void update(String time,String username,int status, int orderId) {
		civilizedPublishDao.update(time,username,status,orderId);
		
	}

	@Override
	public void updateStatus(int status, int orderId) {
		civilizedPublishDao.updateStatus(status,orderId);
	}
	
	
}
