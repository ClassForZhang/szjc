package com.cn.test.dao;

import org.apache.ibatis.annotations.Param;

import com.cn.test.controller.aop.DataSwitch;
import com.cn.test.entity.UserEntity;

@DataSwitch(dataSource="dateSource_szjc")
public interface IUserDao {
	public UserEntity findUserByUserName(@Param("username") String username);

	//public UserEntity getUserByAccount(String account);
}
