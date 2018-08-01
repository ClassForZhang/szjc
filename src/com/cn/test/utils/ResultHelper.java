package com.cn.test.utils;

/**
 * 结果输出类
 * 
 */
public class ResultHelper {
	private Object data; // 数据集合
	private Integer count; // 记录总数
	private Integer code; // 是否存在错误
	private String msg; // 结果信息

	public ResultHelper() {
		super();
	}

	public ResultHelper(Object data, Integer count) {
		super();
		this.data = data;
		this.count = count;
	}

	public ResultHelper(Integer code, String msg) {
		super();
		this.code = code;
		this.msg = msg;
	}

	public ResultHelper(Object data, Integer count, Integer code, String msg) {
		super();
		this.data = data;
		this.count = count;
		this.code = code;
		this.msg = msg;
	}

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
}
