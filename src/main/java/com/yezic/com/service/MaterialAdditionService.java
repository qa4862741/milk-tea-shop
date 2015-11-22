package com.yezic.com.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yezic.com.common.BaseMapper;
import com.yezic.com.common.BaseService;
import com.yezic.com.entity.MaterialAddition;
import com.yezic.com.repository.MaterialAdditionMapper;

@Service
public class MaterialAdditionService extends BaseService<MaterialAddition> {
	
	@Resource
	private MaterialAdditionMapper MateriaAdditionMapper;

	@Override
	protected BaseMapper<MaterialAddition> getMapper() {
		return MateriaAdditionMapper;
	}
}
