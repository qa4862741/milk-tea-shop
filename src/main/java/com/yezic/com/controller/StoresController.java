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
import com.yezic.com.entity.Stores;
import com.yezic.com.service.StoresService;;

@Controller
@RequestMapping("stores")
public class StoresController extends BaseController{
	private Logger logger = LoggerFactory.getLogger(StoresController.class);

	@Resource
	private StoresService storesService;

	@RequestMapping("list")
	public void list(Stores stores, Model model) {
		List<Stores> storesList = storesService.getAll(stores);
		model.addAttribute("storesList", storesList);
	}

	@RequestMapping("add")
	@ResponseBody
	public Object add(Stores stores) {
		try {
			storesService.insert(stores);
		} catch (Exception e) {
			logger.error("添加出现异常！" + e.getMessage(), e);
			return new SimpleReturnVo(ResponseCode.FAIL, "添加出现异常！");
		}
		return new SimpleReturnVo(ResponseCode.SUCCESS, "添加成功！");
	}
	
	@RequestMapping("getOneById")
	@ResponseBody
	public Object getOneById(int id) {
		Stores stores = null;
		try {
			stores = storesService.getOneById(id);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return stores;
	}

	@RequestMapping("delete")
	public String delete(int id) {
		try {
			storesService.delete(id);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return "redirect:/stores/list";
	}
	
	@RequestMapping("update")
	public String update(Stores stores) {
		try {
			storesService.update(stores);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return "redirect:/stores/list";
	}
}
