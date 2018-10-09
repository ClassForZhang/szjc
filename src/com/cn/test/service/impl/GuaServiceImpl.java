package com.cn.test.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.test.dao.GuaCarDao;
import com.cn.test.entity.GuaCar;
import com.cn.test.service.GuaService;
@Service
public class GuaServiceImpl implements GuaService{
	@Resource
	private GuaCarDao guaCarDao;

	@Override
	public List<GuaCar> getGuaCarList() {
		return guaCarDao.getGuaCarList();
	}
	
	
}
