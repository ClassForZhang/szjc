package com.cn.test.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cn.test.dao.IRoleDao;
import com.cn.test.entity.Role;
import com.cn.test.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService{
	@Autowired
	private IRoleDao iRoleDao;
	
	@Override
	public List<Role> findAll() {
		return iRoleDao.findAll();
	}

	@Override
	public List<Role> findByUserName(String username) {
		return iRoleDao.findByUserName(username);
	}

	@Override
	public List<String> getRoles(String account) {
		return iRoleDao.getRoles(account);
	}

}
