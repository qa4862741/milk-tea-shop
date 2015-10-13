package com.yezic.com.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yezic.com.common.BaseMapper;
import com.yezic.com.common.BaseService;
import com.yezic.com.entity.MilkTeaClassification;
import com.yezic.com.repository.MilkTeaClassificationMapper;

@Service
public class MilkTeaClassificationService extends BaseService<MilkTeaClassification> {
	
	@Resource
	private MilkTeaClassificationMapper milkTeaClassificationMapper;

	@Override
	protected BaseMapper<MilkTeaClassification> getMapper() {
		return milkTeaClassificationMapper;
	}
}
