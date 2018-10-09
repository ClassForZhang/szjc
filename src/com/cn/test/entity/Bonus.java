package com.cn.test.entity;

import java.io.Serializable;

import com.cn.test.utils.PageHelperEasyui;

public class Bonus extends PageHelperEasyui<Bonus> implements Serializable{
	private long id;
	private String user_id;
	private String username;
	private double bonus;
	private String description;
	private String order_ids;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public double getBonus() {
		return bonus;
	}
	public void setBonus(double bonus) {
		this.bonus = bonus;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getOrder_ids() {
		return order_ids;
	}
	public void setOrder_ids(String order_ids) {
		this.order_ids = order_ids;
	}
	
	
	
}
