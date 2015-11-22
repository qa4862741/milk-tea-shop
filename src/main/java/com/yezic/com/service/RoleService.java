package com.yezic.com.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;

import com.yezic.com.common.BaseMapper;
import com.yezic.com.common.BaseService;
import com.yezic.com.entity.Role;
import com.yezic.com.entity.RoleResources;
import com.yezic.com.repository.RoleMapper;
import com.yezic.com.repository.RoleResourcesMapper;

@Service
public class RoleService extends BaseService<Role> {

	@Resource
	private RoleMapper roleMapper;
	
	@Resource
	private RoleResourcesMapper roleResourcesMapper;

	@Override
	protected BaseMapper<Role> getMapper() {
		return roleMapper;
	}

	public void insert(String fileName, byte[] data, Role role) throws IOException {
		File file = new File(fileName);
		FileCopyUtils.copy(data, file);
		super.insert(role);
	}

	public void aassignOperations(int roleId, String operationIds) {
		if(operationIds!=null){
			String[] operationIdSplits = operationIds.split(",");
			roleResourcesMapper.deleteResourcesByRoleId(roleId);
			for (String operationId : operationIdSplits) {
				RoleResources roleResources = new RoleResources(roleId,Integer.parseInt(operationId));
				roleResourcesMapper.insert(roleResources);
			}
		}
	}
	
	public List<Role> getRoleByUserId(int userId){
		return roleMapper.getRoleByUserId(userId);
	}

}
