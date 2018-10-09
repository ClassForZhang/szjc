package com.cn.test.service;

import java.util.List;

import com.cn.test.entity.CivilizedEvaluation;
import com.cn.test.entity.CivilizedPublish;

public interface CivilizedService {

	List<CivilizedEvaluation> getFormData(CivilizedEvaluation civilizedEvaluation);

	List<CivilizedEvaluation> getDataByPeopleName(String peopleName, String startTime, String endTime);

	List<CivilizedEvaluation> getFormDataByTime(String startTime, String endTime);

	int getTotalData();

	void update(int status, String[] nos);

	void updateByIds(int status, String[] cIds);

	void updateAllById(CivilizedEvaluation civilizedEvaluation);


}
