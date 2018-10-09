package com.cn.test.dao;

import java.util.List;

import com.cn.test.entity.StationError;

public interface StationErrorDao {

	List<StationError> getStationErrorList(String date);

}
