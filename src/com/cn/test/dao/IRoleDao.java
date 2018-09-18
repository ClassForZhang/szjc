package com.cn.test.dao;

import java.util.List;

import com.cn.test.controller.aop.DataSwitch;
import com.cn.test.entity.Role;

@DataSwitch(dataSource="dateSource_szjc")
public interface IRoleDao {

	public List<Role> findAll();

	public List<Role> findByUserName(String username);

	public List<String> getRoles(String account);
}
