package com.cn.test.service;

import java.util.List;

import com.cn.test.entity.Role;

public interface RoleService {

	public List<Role> findAll();

	public List<Role> findByUserName(String username);

	public List<String> getRoles(String account);
}
