package com.cn.test.dao;

import org.apache.ibatis.annotations.Param;

public interface OperateRealLTDao {

	int getLTCarNum(@Param("station_id")String station_id,@Param("month") String month);

	int getltToll(@Param("station_id")String station_id,@Param("month") String month);

}
