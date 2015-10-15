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
import com.yezic.com.entity.MilkTeaUnit;
import com.yezic.com.service.MilkTeaUnitService;

@Controller
@RequestMapping("milkunit")
public class MilkTeaUnitController extends BaseController{
	private Logger logger = LoggerFactory.getLogger(MilkTeaUnitController.class);

	@Resource
	private MilkTeaUnitService milkTeaUnitService;

	@RequestMapping("list")
	public void list(MilkTeaUnit milkTeaUnit, Model model) {
		List<MilkTeaUnit> milkTeaUnitList = milkTeaUnitService.getAll(milkTeaUnit);
		model.addAttribute("milkTeaUnitList", milkTeaUnitList);
	}

	@RequestMapping("add")
	@ResponseBody
	public Object add(MilkTeaUnit milkTeaUnit) {
		try {
			milkTeaUnitService.insert(milkTeaUnit);
		} catch (Exception e) {
			logger.error("添加出现异常！" + e.getMessage(), e);
			return new SimpleReturnVo(ResponseCode.FAIL, "添加出现异常！");
		}
		return new SimpleReturnVo(ResponseCode.SUCCESS, "添加成功！");
	}
	
	@RequestMapping("getOneById")
	@ResponseBody
	public Object getOneById(int id) {
		MilkTeaUnit milkTeaUnit = null;
		try {
			milkTeaUnit = milkTeaUnitService.getOneById(id);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return milkTeaUnit;
	}

	@RequestMapping("delete")
	public String delete(int id) {
		try {
			milkTeaUnitService.delete(id);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return "redirect:/milkclassification/list";
	}
	
	@RequestMapping("update")
	public String update(MilkTeaUnit milkTeaUnit) {
		try {
			milkTeaUnitService.update(milkTeaUnit);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return "redirect:/milkunit/list";
	}
}
