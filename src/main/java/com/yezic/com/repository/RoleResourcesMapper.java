package com.yezic.com.repository;

import com.yezic.com.common.BaseMapper;
import com.yezic.com.entity.RoleResources;

public interface RoleResourcesMapper extends BaseMapper<RoleResources>{
       void deleteResourcesByRoleId(int roleId);
}
