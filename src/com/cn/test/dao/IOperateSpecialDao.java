package com.cn.test.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cn.test.entity.OperateSpecialPublish;
import com.cn.test.entity.SpecialOperate;

public interface IOperateSpecialDao {

	int getTotalOperateSpecial(@Param("entity")SpecialOperate entity);

	List<SpecialOperate> getOperateSpecialPage(@Param("entity")SpecialOperate entity,@Param("started") int started);

	void save(@Param("entity") SpecialOperate specialOperate);

	void update(@Param("entity")SpecialOperate specialOperate);

	void deleteOne(Integer id);

	void updateOrderIdByIds(@Param("order_id")String order_id,@Param("array") String[] ids);

	List<SpecialOperate> getOneByOrderId(String string);

	List<SpecialOperate> getOperateSpecialFormPageForBonus(@Param("array")String[] order_ids);

	int getTotalCarNum(@Param("station_id")String station_id,@Param("month") String month);

	int getTotalRewardCarNum(@Param("station_id")String station_id,@Param("month") String month,@Param("toll") String toll);

	int getTotalToll(@Param("station_id")String station_id,@Param("month") String month);


}
