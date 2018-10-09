package com.cn.test.dao;

import java.util.List;

import com.cn.test.controller.aop.DataSwitch;

@DataSwitch(dataSource="dateSource_itsm")
public interface IOrganiseDao {
	
	public List<Integer> getOrganiseTreeIds(int id);
}
