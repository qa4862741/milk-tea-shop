package com.yezic.com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yezic.com.common.BaseMapper;
import com.yezic.com.common.BaseService;
import com.yezic.com.entity.User;
import com.yezic.com.entity.UserRole;
import com.yezic.com.repository.UserMapper;
import com.yezic.com.repository.UserRoleMapper;
import com.yezic.com.util.PasswordHelper;

@Service
public class UserService extends BaseService<User> {

	@Resource
	private UserMapper userMapper;
	
	@Resource
	private UserRoleMapper userRoleMapper;
	
	@Override
	protected BaseMapper<User> getMapper() {
		return userMapper;
	}
	
	@Override
	public int insert(User entity) {
		PasswordHelper passwordHelper = new PasswordHelper();
		String salt = passwordHelper.getSalt();
		String password = passwordHelper.encryptPassword(entity.getAccountName(),entity.getPassword(),salt);
		entity.setCredentialsSalt(salt);
		entity.setPassword(password);
		
		int insert = super.insert(entity);
		String roles = entity.getRoles();
		if(roles!=null){
			String[] roleArray = roles.split(",");
			for (String roleId : roleArray) {
				UserRole userRole = new UserRole();
				userRole.setUserId(entity.getId());
				userRole.setRoleId(Integer.parseInt(roleId));
				userRoleMapper.insert(userRole);
			}
		}
		return insert;
	}

	public List<User> findUserByName(String userName) {
		return userMapper.findUserByName(userName);
	}

}
