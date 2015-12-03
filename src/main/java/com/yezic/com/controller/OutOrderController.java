package com.yezic.com.controller;

import java.math.BigDecimal;
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
import com.yezic.com.entity.OutOrder;
import com.yezic.com.service.InOrderService;
import com.yezic.com.service.MaterielService;
import com.yezic.com.service.OutOrderService;

@Controller
@RequestMapping("outorder")
public class OutOrderController extends BaseController{
	private Logger logger = LoggerFactory.getLogger(OutOrderController.class);

	@Resource
	private OutOrderService outorderService;
	
	@Resource
	private MaterielService materialService;
	
	@RequestMapping("list")
	public void list(OutOrder outorder, Model model) {
		List<OutOrder> outorderList = outorderService.getAll(outorder);
		model.addAttribute("outorderList", outorderList);
		
		List<Materiel> materialList=materialService.getAll(new Materiel());
		model.addAttribute("materialList",materialList);
	}

	@RequestMapping("add")
	@ResponseBody
	public Object add(OutOrder outorder) {
		try {
			outorderService.insert(outorder);
			this.updateMaterialNumber(outorder.getMaterialId(),outorder.getOrderNum());
		} catch (Exception e) {
			logger.error("添加出现异常！" + e.getMessage(), e);
			return new SimpleReturnVo(ResponseCode.FAIL, "添加出现异常！");
		}
		return new SimpleReturnVo(ResponseCode.SUCCESS, "添加成功！");
	}
	
	@RequestMapping("getOneById")
	@ResponseBody
	public Object getOneById(int id) {
		OutOrder outorder = null;
		try {
			outorder = outorderService.getOneById(id);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return outorder;
	}

	@RequestMapping("delete")
	public String delete(int id) {
		try {
			OutOrder outorder=outorderService.getOneById(id);
			this.updateMaterialNumber(outorder.getMaterialId(),outorder.getOrderNum().multiply(new BigDecimal(-1)));
			outorderService.delete(id);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return "redirect:/outorder/list";
	}
	
	@RequestMapping("update")
	public String update(OutOrder outorder) {
		try {
			OutOrder oldOrder=outorderService.getOneById(outorder.getId());
			BigDecimal number=outorder.getOrderNum().subtract(oldOrder.getOrderNum());
			this.updateMaterialNumber(outorder.getMaterialId(),number);
			outorderService.update(outorder);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return "redirect:/outorder/list";
	}
	
	private void updateMaterialNumber(int materialId,BigDecimal number){
		Materiel material=materialService.getOneById(materialId);
		material.setNumber(material.getNumber().subtract(number));
		materialService.update(material);
	}
}
