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
import com.yezic.com.entity.MilkTeaTaste;
import com.yezic.com.service.MilkTeaTasteService;

@Controller
@RequestMapping("milktaste")
public class MilkTeaTasteController extends BaseController {
	private Logger logger = LoggerFactory.getLogger(MilkTeaTasteController.class);

	@Resource
	private MilkTeaTasteService milkTeaTasteService;

	@RequestMapping("list")
	public void list(MilkTeaTaste milkTeaCla, Model model) {
		List<MilkTeaTaste> milkTeaTasteList = milkTeaTasteService.getAll(milkTeaCla);
		model.addAttribute("milkTeaTasteList", milkTeaTasteList);
	}

	@RequestMapping("add")
	@ResponseBody
	public Object add(MilkTeaTaste milkTeaCla) {
		try {
			milkTeaTasteService.insert(milkTeaCla);
		} catch (Exception e) {
			logger.error("添加出现异常！" + e.getMessage(), e);
			return new SimpleReturnVo(ResponseCode.FAIL, "添加出现异常！");
		}
		return new SimpleReturnVo(ResponseCode.SUCCESS, "添加成功！");
	}
	
	@RequestMapping("getOneById")
	@ResponseBody
	public Object getOneById(int id) {
		MilkTeaTaste milkTeaTaste = null;
		try {
			milkTeaTaste = milkTeaTasteService.getOneById(id);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return milkTeaTaste;
	}

	@RequestMapping("delete")
	public String delete(int id) {
		try {
			milkTeaTasteService.delete(id);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return "redirect:/milktaste/list";
	}
	
	@RequestMapping("update")
	public String update(MilkTeaTaste milkTeaCla) {
		try {
			milkTeaTasteService.update(milkTeaCla);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return "redirect:/milktaste/list";
	}
}
