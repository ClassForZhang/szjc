package com.cn.test.dao;

import org.apache.ibatis.annotations.Param;

import com.cn.test.entity.UserEntity;

public interface IUserDao {
	public UserEntity findUserByUserName(@Param("username") String username);
}
