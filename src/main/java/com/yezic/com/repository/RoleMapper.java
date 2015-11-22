package com.yezic.com.repository;

import java.util.List;

import com.yezic.com.common.BaseMapper;
import com.yezic.com.entity.Role;

public interface RoleMapper extends BaseMapper<Role>{

	List<Role> getRoleByUserId(int userId);
	
}
