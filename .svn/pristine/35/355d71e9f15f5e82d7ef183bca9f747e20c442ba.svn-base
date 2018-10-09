package com.cn.test.service;

import java.util.List;

import com.cn.test.entity.OperateSpecialPublish;
import com.cn.test.entity.SpecialOperate;
import com.cn.test.utils.ResultHelperEasyui;

public interface IOperateSpecialService {

	int getTotalOperateSpecial(SpecialOperate entity);

	List<SpecialOperate> getOperateSpecialFormPage(SpecialOperate entity);

	//保存
	void save(SpecialOperate specialOperate);

	//修改
	void update(SpecialOperate specialOperate);

	//删除
	void deleteOne(Integer id);

	//保存发布
	void savePublish(OperateSpecialPublish operateSpecialPublish);

	//发布列表
	List<OperateSpecialPublish> getOperateSpecialPublishPage(OperateSpecialPublish entity);

	//发布表数量
	int getTotalOperateSpecialPublish(OperateSpecialPublish entity);

	//修改发布表，mapper没写
	void updatePublishById(String operationId);

	//删除发布表
	void deletePublishs(String[] ids);

	//批量修改发布表
	void updatePublishs(String[] ids, int status);

	//更新审核人和审核时间
	void updatePublishAudit(String[] ids, String userName, String dateToStr);

	//获得id
	String getOrderIdByDate(String date);

	void updateOrderIdByIds(String order_id, String[] ids);

	List<SpecialOperate> getOneByOrderId(String string);

	List<SpecialOperate> getOperateSpecialFormPageForBonus(String[] order_ids);

	int getTotalCarNum(String station_id, String month);

	int getTotalRewardCarNum(String station_id, String month, String toll);

	int getTotalToll(String station_id, String month);

	
}
