package com.yezic.com.common;

import java.util.List;

import com.github.miemiedev.mybatis.paginator.domain.PageList;
import com.github.miemiedev.mybatis.paginator.domain.Paginator;

/**
 * <p>
 * Description: 支持分页查询的结果对象
 * </p>
 */
public class PageModel<T> {
	private Paginator paginator;

	private List<T> rows;

	public PageModel(PageList<T> pageList) {
		this.setPaginator(pageList.getPaginator());
		this.setRows(pageList);
	}
	
	public PageModel(Paginator paginator , List<T> datas) {
		this.paginator = paginator;
		this.rows = datas;
	}

	public Paginator getPaginator() {
		return paginator;
	}

	public void setPaginator(Paginator paginator) {
		this.paginator = paginator;
	}

	public List<T> getRows() {
		return rows;
	}

	public void setRows(List<T> rows) {
		this.rows = rows;
	}

	
}
