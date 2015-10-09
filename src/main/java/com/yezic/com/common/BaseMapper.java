package com.yezic.com.common;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;

public interface BaseMapper<T> {
	/**
	 * 插入记录
	 * 
	 * @param record
	 * @return
	 */
	int insert(T entity);
	
	/**
	 * 更新主键中相同的记录,用record中所有字段去更新
	 * 
	 * @param record
	 * @return
	 */ 
	int updateByPrimaryKey(T entity);

	/**
	 * 根据主键删除记录
	 * 
	 * @param id
	 * @return
	 */
	int delete(int id);

	/**
	 * 分页查询
	 * 
	 * @param messageInfo
	 * @param pageBounds
	 * @return
	 */
	PageList<T> findPageList(T entity, PageBounds pageBounds);
}
