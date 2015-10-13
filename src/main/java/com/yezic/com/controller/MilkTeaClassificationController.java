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
import com.yezic.com.entity.MilkTeaClassification;
import com.yezic.com.service.MilkTeaClassificationService;

@Controller
@RequestMapping("milkclassification")
public class MilkTeaClassificationController extends BaseController {
	private Logger logger = LoggerFactory.getLogger(MilkTeaClassificationController.class);

	@Resource
	private MilkTeaClassificationService milkTeaClassificationService;

	@RequestMapping("list")
	public void list(MilkTeaClassification milkTeaCla, Model model) {
		List<MilkTeaClassification> milkTeaClassificationList = milkTeaClassificationService.getAll(milkTeaCla);
		model.addAttribute("milkTeaClassificationList", milkTeaClassificationList);
	}

	@RequestMapping("add")
	@ResponseBody
	public Object add(MilkTeaClassification milkTeaCla) {
		try {
			milkTeaClassificationService.insert(milkTeaCla);
		} catch (Exception e) {
			logger.error("添加出现异常！" + e.getMessage(), e);
			return new SimpleReturnVo(ResponseCode.FAIL, "添加出现异常！");
		}
		return new SimpleReturnVo(ResponseCode.SUCCESS, "添加成功！");
	}
	
	@RequestMapping("getOneById")
	@ResponseBody
	public Object getOneById(int id) {
		MilkTeaClassification milkTeaClassification = null;
		try {
			milkTeaClassification = milkTeaClassificationService.getOneById(id);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return milkTeaClassification;
	}

	@RequestMapping("delete")
	public String delete(int id) {
		try {
			milkTeaClassificationService.delete(id);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return "redirect:/milkclassification/list";
	}
	
	@RequestMapping("update")
	public String update(MilkTeaClassification milkTeaCla) {
		try {
			milkTeaClassificationService.update(milkTeaCla);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return "redirect:/milkclassification/list";
	}
}
