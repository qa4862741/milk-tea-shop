package com.yezic.com.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yezic.com.entity.Order;

@Controller
@RequestMapping("order")
public class OrderController extends BaseController {
	private Logger logger = LoggerFactory.getLogger(OrderController.class);
	
	@RequestMapping("list")
	public void list(Order order, Model model) {
		
	}

}
