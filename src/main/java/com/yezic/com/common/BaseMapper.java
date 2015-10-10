package com.yezic.com.common;

import java.util.List;

import com.github.miemiedev.mybatis.paginator.domain.PageBounds;
import com.github.miemiedev.mybatis.paginator.domain.PageList;

public interface BaseMapper<T> {
	/**
	 * �����¼
	 * 
	 * @param record
	 * @return
	 */
	int insert(T entity);
	
	/**
	 * ������������ͬ�ļ�¼,��record�������ֶ�ȥ����
	 * 
	 * @param record
	 * @return
	 */ 
	int update(T entity);

	/**
	 * �������ɾ���¼
	 * 
	 * @param id
	 * @return
	 */
	int delete(int id);
	
	T getById(int id);
	
	List<T> getAll(T entity);

	/**
	 * ��ҳ��ѯ
	 * 
	 * @param messageInfo
	 * @param pageBounds
	 * @return
	 */
	PageList<T> findPageList(T entity, PageBounds pageBounds);
}
