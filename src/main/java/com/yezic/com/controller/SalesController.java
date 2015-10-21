package com.yezic.com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yezic.com.entity.MilkTea;
import com.yezic.com.entity.MilkTeaClassification;
import com.yezic.com.entity.MilkTeaTaste;
import com.yezic.com.service.MilkTeaClassificationService;
import com.yezic.com.service.MilkTeaService;
import com.yezic.com.service.MilkTeaTasteService;

@Controller
@RequestMapping("sales")
public class SalesController extends BaseController {

	@Resource
	private MilkTeaService  milkTeaService;
	
	@Resource
	private MilkTeaClassificationService  milkClaService;
	
	@Resource 
	private MilkTeaTasteService milkTeaTasteService;
	
	@RequestMapping("list")
	public void list() {

	}
	
	@RequestMapping("cashier")
	public void cashier(Model model) {
		List<MilkTea> milkTeas = milkTeaService.getAll(new MilkTea());
		model.addAttribute("milkTeas", milkTeas);
		
		List<MilkTeaClassification> milkClas = milkClaService.getAll(new MilkTeaClassification());
		model.addAttribute("milkClas", milkClas);
		
		List<MilkTeaTaste> milkTeaTastes = milkTeaTasteService.getAll(new MilkTeaTaste());
		model.addAttribute("milkTeaTastes", milkTeaTastes);
	}
}
