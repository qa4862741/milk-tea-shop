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
import com.yezic.com.entity.Materiel;
import com.yezic.com.service.MaterielService;

@Controller
@RequestMapping("materiel")
public class MaterielController extends BaseController{
	private Logger logger = LoggerFactory.getLogger(MaterielController.class);

	@Resource
	private MaterielService materielServiceService;
	
	@RequestMapping("list")
	public void list(Materiel materiel, Model model) {
		List<Materiel> materielList = materielServiceService.getAll(materiel);
		model.addAttribute("materielList", materielList);
	}

	@RequestMapping("add")
	@ResponseBody
	public Object add(Materiel materiel) {
		try {
			materielServiceService.insert(materiel);
		} catch (Exception e) {
			logger.error("添加出现异常！" + e.getMessage(), e);
			return new SimpleReturnVo(ResponseCode.FAIL, "添加出现异常！");
		}
		return new SimpleReturnVo(ResponseCode.SUCCESS, "添加成功！");
	}
	
	@RequestMapping("getOneById")
	@ResponseBody
	public Object getOneById(int id) {
		Materiel materiel = null;
		try {
			materiel = materielServiceService.getOneById(id);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return materiel;
	}

	@RequestMapping("delete")
	public String delete(int id) {
		try {
			materielServiceService.delete(id);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return "redirect:/materiel/list";
	}
	
	@RequestMapping("update")
	public String update(Materiel materiel) {
		try {
			materielServiceService.update(materiel);
		} catch (Exception e) {
			logger.error("删除出现异常！" + e.getMessage(), e);
		}
		return "redirect:/materiel/list";
	}
}
