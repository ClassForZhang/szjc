package com.cn.test.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.cn.test.dao.IOperateSpecialDao;
import com.cn.test.dao.IOperateSpecialPublishDao;
import com.cn.test.entity.OperateSpecialPublish;
import com.cn.test.entity.SpecialOperate;
import com.cn.test.service.IOperateSpecialService;
import com.cn.test.utils.Constant;
import com.cn.test.utils.ResultHelperEasyui;

@Service
public class OperateSpecialServiceImpl implements IOperateSpecialService{

	@Resource
	private IOperateSpecialDao operateSpecialDao;
	
	@Resource
	private IOperateSpecialPublishDao operateSpecialPublishDao;
	
	@Override
	public int getTotalOperateSpecial(SpecialOperate entity) {
		return operateSpecialDao.getTotalOperateSpecial(entity);
	}

	@Override
	public List<SpecialOperate> getOperateSpecialFormPage(SpecialOperate entity) {
		List<SpecialOperate> list = null;
		int started = (entity.getPageNumber()-1) * 10;
		list = operateSpecialDao.getOperateSpecialPage(entity,started);
		return list;
	}

	@Override
	public void save(SpecialOperate specialOperate) {
		operateSpecialDao.save(specialOperate);
		
	}

	@Override
	public void update(SpecialOperate specialOperate) {
		operateSpecialDao.update(specialOperate);
	}

	@Override
	public void deleteOne(Integer id) {
		operateSpecialDao.deleteOne(id);
	}

	@Override
	public void updateOrderIdByIds(String order_id, String[] ids) {
		operateSpecialDao.updateOrderIdByIds(order_id,ids);
		
	}
	
	@Override
	public List<SpecialOperate> getOneByOrderId(String string) {
		return operateSpecialDao.getOneByOrderId(string);
	}
	
	@Override
	public List<SpecialOperate> getOperateSpecialFormPageForBonus(String[] order_ids) {
		return operateSpecialDao.getOperateSpecialFormPageForBonus(order_ids);
	}
	
	@Override
	public int getTotalCarNum(String station_id, String month) {
		return operateSpecialDao.getTotalCarNum(station_id,month);
	}
	
	@Override
	public int getTotalRewardCarNum(String station_id, String month, String toll) {
		return operateSpecialDao.getTotalRewardCarNum(station_id,month,toll);
	}
	
	@Override
	public int getTotalToll(String station_id, String month) {
		return operateSpecialDao.getTotalToll(station_id,month);
	}
	
	//publish表
	@Override
	public void savePublish(OperateSpecialPublish operateSpecialPublish) {
		operateSpecialPublishDao.savePublish(operateSpecialPublish);
	}

	@Override
	public List<OperateSpecialPublish> getOperateSpecialPublishPage(OperateSpecialPublish entity) {
		int started = (entity.getPageNumber() - 1) * 10;
		List<OperateSpecialPublish> list = operateSpecialPublishDao.getOperateSpecialPublishPage(entity,started);
		return list;
	}

	@Override
	public int getTotalOperateSpecialPublish(OperateSpecialPublish entity) {
		return operateSpecialPublishDao.getTotalOperateSpecialPublish(entity);
	}

	@Override
	public void updatePublishById(String operationId) {
		operateSpecialPublishDao.updatePublishById(operationId);
	}

	@Override
	public void deletePublishs(String[] ids) {
		operateSpecialPublishDao.deletePublishs(ids);
	}

	@Override
	public void updatePublishs(String[] ids,int status) {
		operateSpecialPublishDao.updatePublishs(ids,status);
	}

	@Override
	public void updatePublishAudit(String[] ids, String userName, String dateToStr) {
		operateSpecialPublishDao.updatePublishAudit(ids,userName,dateToStr);
	}

	@Override
	public String getOrderIdByDate(String date) {
		return operateSpecialPublishDao.getOrderIdByDate(date);
	}



	

	

	

	

	

	
	
	
	
}
