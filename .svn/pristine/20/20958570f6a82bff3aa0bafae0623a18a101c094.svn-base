package com.cn.test.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cn.test.entity.CivilizedEvaluation;

public interface CivilizedDao {

	List<CivilizedEvaluation> getFormData(@Param("entity")CivilizedEvaluation civilizedEvaluation);

	List<CivilizedEvaluation> getDataByPeopleName(@Param("peopleName")String peopleName,@Param("startTime") String startTime,@Param("endTime") String endTime);

	List<CivilizedEvaluation> getFormDataByTime(@Param("startTime")String startTime,@Param("endTime")String endTime);

	int getTotalData();

	void update(@Param("orderId")int orderId, @Param("array") String[] nos);

	void updateByIds(@Param("status")int status,@Param("array") String[] cIds);

	void updateAllById(@Param("entity")CivilizedEvaluation civilizedEvaluation);

}
