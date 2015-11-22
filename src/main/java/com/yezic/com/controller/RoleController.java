package com.yezic.com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yezic.com.common.SimpleReturnVo;
import com.yezic.com.common.SimpleReturnVo.ResponseCode;
import com.yezic.com.entity.Resources;
import com.yezic.com.entity.Role;
import com.yezic.com.service.ResourcesService;
import com.yezic.com.service.RoleService;

@Controller
@RequestMapping("role")
public class RoleController extends BaseController {
	private Logger logger = LoggerFactory.getLogger(RoleController.class);

	@Resource
	private ResourcesService resourcesService;

	@Resource
	private RoleService roleService;

	@RequestMapping("list")
	public void list(Role role, Model model) {
		List<Role> roleList = roleService.getAll(role);
		List<Resources> resources = resourcesService.getRecursionList();
		model.addAttribute("resourceList", resources);
		model.addAttribute("roleList", roleList);
	}

	@RequestMapping("add")
	@ResponseBody
	public Object add(Role role) {
		try {
			roleService.insert(role);
		} catch (Exception e) {
			logger.error("添加出现异常！" + e.getMessage(), e);
			return new SimpleReturnVo(ResponseCode.FAIL, "添加出现异常！");
		}
		return new SimpleReturnVo(ResponseCode.SUCCESS, "添加成功！");
	}

	@RequestMapping("assignOperation")
	@ResponseBody
	public void assignOperations(int roleId,String operationIds) {
		roleService.aassignOperations(roleId,operationIds);
	}

	@RequestMapping("getOneById")
	@ResponseBody
	public Object getOneById(int id) {
		Role role = null;
		try {
			role = roleService.getOneById(id);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return role;
	}
	
	@RequestMapping("getRoleByUserId")
	@ResponseBody
	public Object getRoleByUserId(int userId) {
		List<Role> roles = null;
		try {
			roles = roleService.getRoleByUserId(userId);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return roles;
	}

	@RequestMapping("delete")
	public String delete(int id) {
		try {
			roleService.delete(id);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return "redirect:/role/list";
	}

	@RequestMapping("update")
	public String update(Role role) {
		try {
			roleService.update(role);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return "redirect:/role/list";
	}
}
