package com.yezic.com.service;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;

import com.yezic.com.common.BaseMapper;
import com.yezic.com.common.BaseService;
import com.yezic.com.entity.MilkTea;
import com.yezic.com.entity.Vip;
import com.yezic.com.repository.MilkTeaMapper;
import com.yezic.com.repository.VipMapper;

@Service
public class VipService extends BaseService<Vip> {

	@Resource
	private VipMapper vipMapper;

	@Override
	protected BaseMapper<Vip> getMapper() {
		return vipMapper;
	}

	public void insert(String fileName, byte[] data, Vip vip) throws IOException {
		File file = new File(fileName);
		FileCopyUtils.copy(data, file);
		super.insert(vip);
	}

}
