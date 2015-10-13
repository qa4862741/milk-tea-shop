package com.yezic.com.common;

import java.util.List;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;

public abstract class BaseService<T> {

	/**
	 * 应用模板方法模式，在这个基础实现类中，基本 的CRUD 但子类继承时会根据不同mapper去操作 所有定义成抽象，子类必须实现
	 * 
	 * @return
	 */
	protected abstract BaseMapper<T> getMapper();

	public T getOneById(int id) {
		return getMapper().getOneById(id);
	}

	public int insert(T entity) {
		return getMapper().insert(entity);
	}

	public int update(T entity) {
		return getMapper().update(entity);
	}

	public int delete(int id) {
		return getMapper().delete(id);
	}
	
	public List<T> getAll(T entity){
		return getMapper().getAll(entity);
	}

	public PageModel<T> findPageList(T entity, PageBounds pageBounds) {
		PageList<T> pageList = getMapper().findPageList(entity, pageBounds);
		return new PageModel<T>(pageList);
	}
}
