package com.yezic.com.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yezic.com.common.BaseMapper;
import com.yezic.com.common.BaseService;
import com.yezic.com.entity.MilkTeaTaste;
import com.yezic.com.repository.MilkTeaTasteMapper;

@Service
public class MilkTeaTasteService extends BaseService<MilkTeaTaste> {
	
	@Resource
	private MilkTeaTasteMapper milkTeaTasterMapper;

	@Override
	protected BaseMapper<MilkTeaTaste> getMapper() {
		return milkTeaTasterMapper;
	}
}
