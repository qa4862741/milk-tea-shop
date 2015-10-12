package com.yezic.com.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yezic.com.service.MilkTeaService;

@Controller
public class IndexController extends BaseController {

	@Resource
	private MilkTeaService milkTeaService;

	@RequestMapping("/")
	public String index() {
		return "index";
	}
}
