package com.cn.test.entity;

import java.io.Serializable;
import java.util.Date;

//itsm相关
public class LoginLogBean implements Serializable{

	private String id;
	private String user;
	private String ip;
	private Date loginTime = null;
	private Date logoutTime = null;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public Date getLoginTime() {
		return loginTime;
	}

	public void setLoginTime(Date date) {
		this.loginTime = date;
	}

	public Date getLogoutTime() {
		return logoutTime;
	}

	public void setLogoutTime(Date logoutTime) {
		this.logoutTime = logoutTime;
	}

}
