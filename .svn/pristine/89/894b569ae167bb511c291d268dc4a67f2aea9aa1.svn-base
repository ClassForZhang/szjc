package com.cn.test.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cn.test.entity.CivilizedEvaluation;
import com.cn.test.entity.CivilizedPublish;

public interface CivilizedPublishService {

	void save(CivilizedPublish civilizedPublish);

	List<CivilizedEvaluation> getListData(CivilizedPublish civilizedPublish);

	int getTotalListData();

	int getIdByTime(String time);

	void update(String time, String username, int status,int orderId);

	void updateStatus(int status, int orderId);

}
