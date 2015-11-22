package com.yezic.com.repository;  

import java.util.List;

import com.yezic.com.common.BaseMapper;
import com.yezic.com.entity.User;

public interface UserMapper extends BaseMapper<User>{
	List<User> findUserByName(String name);

	
}
