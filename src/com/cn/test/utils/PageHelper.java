package com.cn.test.utils;

/**
 * 分页工具类，封装分页所需的数据，并提供泛型支持
 * 
 * @param <T>
 */
public class PageHelper<T> {
	private int page; // 当前页
	private int start; // 当前页开始记录号
	private int limit; // 每页大小

    
	public PageHelper() {
		super();
	}

	public PageHelper(int page, int limit) {
		this.page = page > 1 ? page : 1; // 当页数小于1的时候都显示第一页，没有小于0的页数
		this.limit = limit;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
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
