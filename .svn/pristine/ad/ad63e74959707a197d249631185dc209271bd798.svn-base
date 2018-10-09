package com.cn.test.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.test.dao.BonusDao;
import com.cn.test.entity.Bonus;
import com.cn.test.service.BonusService;

@Service
public class BonusServiceImpl implements BonusService{

	@Resource
	private BonusDao bonusDao;

	@Override
	public Bonus getOneByUserName(String userName) {
		return bonusDao.getOneByUserName(userName);
	}

	@Override
	public void updateBonus(Bonus bonus) {
		bonusDao.updateBonus(bonus);
	}

	@Override
	public List<Bonus> getBonusPage(Bonus entity) {
		int started = (entity.getPageNumber() - 1) * 10;
		return bonusDao.getBonusPage(entity,started);
	}

	@Override
	public int getTotalBonus(Bonus entity) {
		return bonusDao.getTotalBonus(entity);
	}
	
	
}
