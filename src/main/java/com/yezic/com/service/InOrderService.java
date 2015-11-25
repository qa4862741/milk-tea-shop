package com.yezic.com.service;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;

import com.yezic.com.common.BaseMapper;
import com.yezic.com.common.BaseService;
import com.yezic.com.entity.InOrder;
import com.yezic.com.repository.InOrderMapper;

@Service
public class InOrderService extends BaseService<InOrder> {

	@Resource
	private InOrderMapper inOrderMapp;

	@Override
	protected BaseMapper<InOrder> getMapper() {
		return inOrderMapp;
	}

	public void insert(String fileName, byte[] data, InOrder inOrder) throws IOException {
		File file = new File(fileName);
		FileCopyUtils.copy(data, file);
		super.insert(inOrder);
	}
}
