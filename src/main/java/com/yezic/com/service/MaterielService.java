package com.yezic.com.service;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;

import com.yezic.com.common.BaseMapper;
import com.yezic.com.common.BaseService;
import com.yezic.com.entity.Materiel;
import com.yezic.com.repository.MaterielMapper;

@Service
public class MaterielService extends BaseService<Materiel> {

	@Resource
	private MaterielMapper materielMapp;

	@Override
	protected BaseMapper<Materiel> getMapper() {
		return materielMapp;
	}

	public void insert(String fileName, byte[] data, Materiel materiel) throws IOException {
		File file = new File(fileName);
		FileCopyUtils.copy(data, file);
		super.insert(materiel);
	}
}
