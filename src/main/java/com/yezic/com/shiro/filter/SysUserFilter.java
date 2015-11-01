package com.yezic.com.shiro.filter;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.web.filter.PathMatchingFilter;

import com.yezic.com.entity.User;
import com.yezic.com.repository.EmployeeMapper;
import com.yezic.com.repository.UserMapper;


public class SysUserFilter extends PathMatchingFilter {

	@Inject
	private UserMapper userMapper;
	
	@Inject EmployeeMapper employeeMapper;

    @Override
    protected boolean onPreHandle(ServletRequest request, ServletResponse response, Object mappedValue) throws Exception {
        String username = (String)SecurityUtils.getSubject().getPrincipal();
        List<User> user = userMapper.findUserByName(username);
        request.setAttribute("user", user);
        request.setAttribute("employ", employeeMapper.getOneById(user.get(0).getEmployId()));
        return true;
    }
}