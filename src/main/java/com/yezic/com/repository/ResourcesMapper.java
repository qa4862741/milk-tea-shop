package com.yezic.com.repository;

import java.util.List;

import com.yezic.com.common.BaseMapper;
import com.yezic.com.entity.Resources;

public interface ResourcesMapper extends BaseMapper<Resources>{
	List<Resources> findUserResourcess(String userId);
	
	List<Resources> findResourcesByUserId(String userId);
}


