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
import com.yezic.com.entity.Vip;
import com.yezic.com.service.VipService;

@Controller
@RequestMapping("vip")
public class VipController extends BaseController{
	private Logger logger = LoggerFactory.getLogger(VipController.class);

	@Resource
	private VipService vipService;

	@RequestMapping("recharge")
	public void recharge() {
	}
	
	@RequestMapping("list")
	public void list(Vip vip, Model model) {
		List<Vip> vipList = vipService.getAll(vip);
		model.addAttribute("vipList", vipList);
	}

	@RequestMapping("add")
	@ResponseBody
	public Object add(Vip vip) {
		try {
			vipService.insert(vip);
		} catch (Exception e) {
			logger.error("添加出现异常！" + e.getMessage(), e);
			return new SimpleReturnVo(ResponseCode.FAIL, "添加出现异常！");
		}
		return new SimpleReturnVo(ResponseCode.SUCCESS, "添加成功！");
	}
	
	@RequestMapping("getOneById")
	@ResponseBody
	public Object getOneById(int id) {
		Vip vip = null;
		try {
			vip = vipService.getOneById(id);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return vip;
	}
	
	@RequestMapping("getOneByTelId")
	@ResponseBody
	public Object getOneByTelId(String telid) {
		Vip vip = null;
		try {
			vip = vipService.getOneByTelId(telid);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return vip;
	}

	@RequestMapping("delete")
	public String delete(int id) {
		try {
			vipService.delete(id);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return "redirect:/vip/list";
	}
	
	@RequestMapping("update")
	public String update(Vip vip) {
		try {
			vipService.update(vip);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return "redirect:/vip/list";
	}
}
