package com.cn.test.entity;

import java.io.Serializable;

import com.cn.test.utils.PageHelperEasyui;

public class CivilizedPublish extends PageHelperEasyui<CivilizedPublish> implements Serializable{
	private long id;
	private String date;
	private int stationId;
	private String userName;
	private String currentTime;
	private String auditMan;
	private String auditTime;
	private String description;
	private String cIds;
	private int status;
	
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public int getStationId() {
		return stationId;
	}
	public void setStationId(int stationId) {
		this.stationId = stationId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getCurrentTime() {
		return currentTime;
	}
	public void setCurrentTime(String currentTime) {
		this.currentTime = currentTime;
	}
	public String getAuditMan() {
		return auditMan;
	}
	public void setAuditMan(String auditMan) {
		this.auditMan = auditMan;
	}
	public String getAuditTime() {
		return auditTime;
	}
	public void setAuditTime(String auditTime) {
		this.auditTime = auditTime;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getcIds() {
		return cIds;
	}
	public void setcIds(String cIds) {
		this.cIds = cIds;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	
}
