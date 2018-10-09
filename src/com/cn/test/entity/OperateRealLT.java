package com.cn.test.entity;

import java.io.Serializable;

import com.cn.test.utils.PageHelperEasyui;

//绿通
public class OperateRealLT extends PageHelperEasyui<OperateRealLT> implements Serializable{
	
	private long id;
	
	private String charge_man;
	
	private String user_name;
	
	private double d_toll;
	
	private String date;
	
	private String n_ex_station_id;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getCharge_man() {
		return charge_man;
	}

	public void setCharge_man(String charge_man) {
		this.charge_man = charge_man;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public double getD_toll() {
		return d_toll;
	}

	public void setD_toll(double d_toll) {
		this.d_toll = d_toll;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getN_ex_station_id() {
		return n_ex_station_id;
	}

	public void setN_ex_station_id(String n_ex_station_id) {
		this.n_ex_station_id = n_ex_station_id;
	}
	
	
	
	
}
