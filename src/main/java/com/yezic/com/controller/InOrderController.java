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
import com.yezic.com.entity.InOrder;
import com.yezic.com.entity.Materiel;
import com.yezic.com.service.InOrderService;
import com.yezic.com.service.MaterielService;

@Controller
@RequestMapping("inorder")
public class InOrderController extends BaseController{
	private Logger logger = LoggerFactory.getLogger(InOrderController.class);

	@Resource
	private InOrderService inOrderService;
	@Resource
	private MaterielService materialService;
	
	@RequestMapping("list")
	public void list(InOrder inOrder, Model model) {
		List<InOrder> inOrderList = inOrderService.getAll(inOrder);
		model.addAttribute("inOrderList", inOrderList);
		
		List<Materiel> materialList=materialService.getAll(new Materiel());
		model.addAttribute("materialList",materialList);
	}

	@RequestMapping("add")
	@ResponseBody
	public Object add(InOrder inOrder) {
		try {
			inOrderService.insert(inOrder);
		} catch (Exception e) {
			logger.error("添加出现异常！" + e.getMessage(), e);
			return new SimpleReturnVo(ResponseCode.FAIL, "添加出现异常！");
		}
		return new SimpleReturnVo(ResponseCode.SUCCESS, "添加成功！");
	}
	
	@RequestMapping("getOneById")
	@ResponseBody
	public Object getOneById(int id) {
		InOrder inOrder = null;
		try {
			inOrder = inOrderService.getOneById(id);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return inOrder;
	}

	@RequestMapping("delete")
	public String delete(int id) {
		try {
			inOrderService.delete(id);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return "redirect:/inorder/list";
	}
	
	@RequestMapping("update")
	public String update(InOrder inOrder) {
		try {
			inOrderService.update(inOrder);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return "redirect:/inorder/list";
	}
}
