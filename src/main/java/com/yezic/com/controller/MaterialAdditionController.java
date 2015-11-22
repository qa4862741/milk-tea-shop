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
import com.yezic.com.entity.MaterialAddition;
import com.yezic.com.service.MaterialAdditionService;

@Controller
@RequestMapping("materialaddition")
public class MaterialAdditionController extends BaseController {
	private Logger logger = LoggerFactory.getLogger(MaterialAdditionController.class);

	@Resource
	private MaterialAdditionService materialAdditionService;

	@RequestMapping("list")
	public void list(MaterialAddition materialAddition, Model model) {
		List<MaterialAddition> materialAdditionList = materialAdditionService.getAll(materialAddition);
		model.addAttribute("materialAdditionList", materialAdditionList);
	}

	@RequestMapping("add")
	@ResponseBody
	public Object add(MaterialAddition materialAddition) {
		try {
			materialAdditionService.insert(materialAddition);
		} catch (Exception e) {
			logger.error("添加出现异常！" + e.getMessage(), e);
			return new SimpleReturnVo(ResponseCode.FAIL, "添加出现异常！");
		}
		return new SimpleReturnVo(ResponseCode.SUCCESS, "添加成功！");
	}
	
	@RequestMapping("getOneById")
	@ResponseBody
	public Object getOneById(int id) {
		MaterialAddition materialAddition = null;
		try {
			materialAddition = materialAdditionService.getOneById(id);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return materialAddition;
	}

	@RequestMapping("delete")
	public String delete(int id) {
		try {
			materialAdditionService.delete(id);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return "redirect:/materialaddition/list";
	}
	
	@RequestMapping("update")
	public String update(MaterialAddition materialAddition) {
		try {
			materialAdditionService.update(materialAddition);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return "redirect:/materialaddition/list";
	}
}
