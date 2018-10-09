package com.cn.test.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cn.test.entity.Bonus;

public interface BonusDao {

	Bonus getOneByUserName(String userName);

	void updateBonus(@Param("entity")Bonus bonus);

	List<Bonus> getBonusPage(@Param("entity")Bonus entity,@Param("started")int started);

	int getTotalBonus(@Param("entity")Bonus entity);

}
