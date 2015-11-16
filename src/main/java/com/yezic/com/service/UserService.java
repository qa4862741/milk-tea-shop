package com.yezic.com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yezic.com.common.BaseMapper;
import com.yezic.com.common.BaseService;
import com.yezic.com.entity.User;
import com.yezic.com.repository.UserMapper;
import com.yezic.com.util.PasswordHelper;

@Service
public class UserService extends BaseService<User> {

	@Resource
	private UserMapper userMapper;
	
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
		return super.insert(entity);
	}

	public List<User> findUserByName(String userName) {
		return userMapper.findUserByName(userName);
	}

}
