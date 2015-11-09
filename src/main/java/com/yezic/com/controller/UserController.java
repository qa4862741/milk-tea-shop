package com.yezic.com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yezic.com.entity.User;
import com.yezic.com.service.UserService;

@Controller
@RequestMapping("user")
public class UserController extends BaseController{
       
	@Resource
	private UserService userService;
	
	@RequestMapping("list")
	public void list(Model model){
		List<User> users = userService.getAll(new User());
		model.addAttribute("userList", users);
	}
	
	@RequestMapping("add")
	@ResponseBody
	public void add(User user){
		userService.insert(user);
	}
	
	@RequestMapping("delete")
	@ResponseBody
	public String delete(int id){
		userService.delete(id);
		return "删除成功！";
	}

}
