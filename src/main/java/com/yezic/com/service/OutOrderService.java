package com.yezic.com.service;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;

import com.yezic.com.common.BaseMapper;
import com.yezic.com.common.BaseService;
import com.yezic.com.entity.InOrder;
import com.yezic.com.entity.OutOrder;
import com.yezic.com.repository.InOrderMapper;
import com.yezic.com.repository.OutOrderMapper;

@Service
public class OutOrderService extends BaseService<OutOrder> {

	@Resource
	private OutOrderMapper outOrderMapp;

	@Override
	protected BaseMapper<OutOrder> getMapper() {
		return outOrderMapp;
	}

	public void insert(String fileName, byte[] data, OutOrder outOrder) throws IOException {
		File file = new File(fileName);
		FileCopyUtils.copy(data, file);
		super.insert(outOrder);
	}
}
