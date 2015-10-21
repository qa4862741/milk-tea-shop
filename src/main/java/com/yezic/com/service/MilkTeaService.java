package com.yezic.com.service;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;

import com.yezic.com.common.BaseMapper;
import com.yezic.com.common.BaseService;
import com.yezic.com.entity.MilkTea;
import com.yezic.com.repository.MilkTeaMapper;

@Service
public class MilkTeaService extends BaseService<MilkTea> {

	@Resource
	private MilkTeaMapper milkTeaMapper;

	@Override
	protected BaseMapper<MilkTea> getMapper() {
		return milkTeaMapper;
	}

	public void insert(String fileName, byte[] data,String savePath, MilkTea milkTea) throws IOException {
		File file = new File(fileName);
		milkTea.setImagePath(savePath);
		FileCopyUtils.copy(data, file);
		super.insert(milkTea);
	}

}
