package com.cn.test.utils;

/**
 * 分页工具类，封装分页所需的数据，并提供泛型支持
 * 
 * @param <T>
 */
public class PageHelperEasyui<T> {
	private int PageNumber; // 当前页
	private int start; // 当前页开始记录号
	private int limit; // 每页大小

    
	public PageHelperEasyui() {
		super();
	}

	public PageHelperEasyui(int PageNumber, int limit) {
		this.PageNumber = PageNumber > 1 ? PageNumber : 1; // 当页数小于1的时候都显示第一页，没有小于0的页数
		this.limit = limit;
	}

	public int getPageNumber() {
		return PageNumber;
	}

	public void setPageNumber(int PageNumber) {
		this.PageNumber = PageNumber;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start; // 每页开始记录号
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

}
