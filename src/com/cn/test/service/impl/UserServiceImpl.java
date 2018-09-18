package com.cn.test.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.test.dao.IUserDao;
import com.cn.test.entity.UserEntity;
import com.cn.test.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private IUserDao iUserDao;
	
	@Override
	public UserEntity findUserByUserName(String username) {
		return iUserDao.findUserByUserName(username);
	}

}
