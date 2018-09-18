package com.cn.test.service;


import org.apache.ibatis.annotations.Param;

import com.cn.test.entity.UserEntity;

public interface UserService {

	public UserEntity findUserByUserName(@Param("username") String username);
}
