package com.cn.test.utils;

/**
 * 结果输出类
 * 
 */
public class ResultHelperEasyui {
	private Object rows; // 数据集合
	private Integer total; // 记录总数
	private Integer code; // 是否存在错误
	private String msg; // 结果信息

	public ResultHelperEasyui() {
		super();
	}

	public ResultHelperEasyui(Object rows, Integer total) {
		super();
		this.rows = rows;
		this.total = total;
	}

	public ResultHelperEasyui(Integer code, String msg) {
		super();
		this.code = code;
		this.msg = msg;
	}

	public ResultHelperEasyui(Object rows, Integer total, Integer code, String msg) {
		super();
		this.rows = rows;
		this.total = total;
		this.code = code;
		this.msg = msg;
	}

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public Object getRows() {
		return rows;
	}

	public void setRows(Object rows) {
		this.rows = rows;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
}
