package com.yezic.com.controller;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yezic.com.entity.Order;
import com.yezic.com.service.OrderService;

@Controller
@RequestMapping("order")
public class OrderController extends BaseController {
	private Logger logger = LoggerFactory.getLogger(OrderController.class);
	
	@Resource
	private OrderService orderService;
	
	@RequestMapping("list")
	public void list(Order order, Model model) {
		
	}

	@RequestMapping("getOrderItemsByOrderId")
	@ResponseBody
	public Object getOrderItemsByOrderId(int orderId){
		return orderService.getOrderItemsByOrderId(orderId);
	}
}
