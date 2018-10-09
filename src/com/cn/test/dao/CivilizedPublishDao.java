package com.cn.test.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cn.test.entity.CivilizedEvaluation;
import com.cn.test.entity.CivilizedPublish;

public interface CivilizedPublishDao {

	void save(@Param("entity")CivilizedPublish civilizedPublish);

	List<CivilizedEvaluation> getListData(@Param("entity")CivilizedPublish civilizedPublish);

	int getTotalListData();

	int getIdByTime(String time);

	void update(@Param("time")String time, @Param("username")String username, @Param("status")int status,@Param("orderId") int orderId);

	void updateStatus(@Param("status")int status,@Param("orderId") int orderId);

}
