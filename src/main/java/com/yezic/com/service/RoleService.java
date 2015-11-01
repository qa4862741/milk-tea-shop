package com.yezic.com.service;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;

import com.yezic.com.common.BaseMapper;
import com.yezic.com.common.BaseService;
import com.yezic.com.entity.Role;
import com.yezic.com.repository.RoleMapper;

@Service
public class RoleService extends BaseService<Role> {

	@Resource
	private RoleMapper roleMapper;

	@Override
	protected BaseMapper<Role> getMapper() {
		return roleMapper;
	}

	public void insert(String fileName, byte[] data, Role role) throws IOException {
		File file = new File(fileName);
		FileCopyUtils.copy(data, file);
		super.insert(role);
	}

}
