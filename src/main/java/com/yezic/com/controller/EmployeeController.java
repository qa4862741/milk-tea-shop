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
import com.yezic.com.entity.Employee;
import com.yezic.com.service.EmployeeService;

@Controller
@RequestMapping("employee")
public class EmployeeController extends BaseController{
	private Logger logger = LoggerFactory.getLogger(EmployeeController.class);

	@Resource
	private EmployeeService employeeService;

	@RequestMapping("list")
	public void list(Employee employee, Model model) {
		List<Employee> employeeList = employeeService.getAll(employee);
		model.addAttribute("employeeList", employeeList);
	}

	@RequestMapping("add")
	@ResponseBody
	public Object add(Employee employee) {
		try {
			employeeService.insert(employee);
		} catch (Exception e) {
			logger.error("添加出现异常！" + e.getMessage(), e);
			return new SimpleReturnVo(ResponseCode.FAIL, "添加出现异常！");
		}
		return new SimpleReturnVo(ResponseCode.SUCCESS, "添加成功！");
	}
	
	@RequestMapping("getOneById")
	@ResponseBody
	public Object getOneById(int id) {
		Employee employee = null;
		try {
			employee = employeeService.getOneById(id);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return employee;
	}

	@RequestMapping("delete")
	public String delete(int id) {
		try {
			employeeService.delete(id);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return "redirect:/employee/list";
	}
	
	@RequestMapping("update")
	public String update(Employee employee) {
		try {
			employeeService.update(employee);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return "redirect:/employee/list";
	}
}
