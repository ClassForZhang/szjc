package com.cn.test.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cn.test.entity.Role;
import com.cn.test.entity.UserEntity;

public interface IRoleDao {

	public List<Role> findAll();

	public List<Role> findByUserName(String username);
}
