package com.yezic.com.service;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;

import com.yezic.com.common.BaseMapper;
import com.yezic.com.common.BaseService;
import com.yezic.com.entity.Stores;
import com.yezic.com.repository.StoresMapper;

@Service
public class StoresService extends BaseService<Stores> {

	@Resource
	private StoresMapper storesMapper;

	@Override
	protected BaseMapper<Stores> getMapper() {
		return storesMapper;
	}

	public void insert(String fileName, byte[] data, Stores stores) throws IOException {
		File file = new File(fileName);
		FileCopyUtils.copy(data, file);
		super.insert(stores);
	}

}
