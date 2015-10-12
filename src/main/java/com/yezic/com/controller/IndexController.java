package com.yezic.com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yezic.com.entity.MilkTea;
import com.yezic.com.service.MilkTeaService;

@Controller
public class IndexController extends BaseController {

	@Resource
	private MilkTeaService milkTeaService;

	@RequestMapping("/")
	public String index() {
		List<MilkTea> all = milkTeaService.getAll(new MilkTea());
		for (MilkTea milkTea : all) {
			System.out.println(milkTea.getName());
		}
		return "index";
	}
}
