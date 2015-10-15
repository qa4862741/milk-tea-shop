package com.yezic.com.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yezic.com.common.BaseMapper;
import com.yezic.com.common.BaseService;
import com.yezic.com.entity.MilkTeaUnit;
import com.yezic.com.repository.MilkTeaUnitMapper;

@Service
public class MilkTeaUnitService extends BaseService<MilkTeaUnit>{
	@Resource
	private MilkTeaUnitMapper milkTeaUnitMapper;

	protected BaseMapper<MilkTeaUnit> getMapper() {
		return milkTeaUnitMapper;
	}
}
