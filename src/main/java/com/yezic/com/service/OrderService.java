package com.yezic.com.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yezic.com.common.BaseMapper;
import com.yezic.com.common.BaseService;
import com.yezic.com.entity.Order;
import com.yezic.com.entity.OrderItem;
import com.yezic.com.repository.OrderItemMapper;
import com.yezic.com.repository.OrderMapper;

@Service
public class OrderService extends BaseService<Order> {

	@Resource
	private OrderMapper orderMapper;

	@Resource
	private OrderItemMapper orderItemMapper;

	@Override
	protected BaseMapper<Order> getMapper() {
		return orderMapper;
	}

	public int insert(Order entity) {
		int result = orderMapper.insert(entity);
		for (OrderItem orderItem : entity.getOrderItems()) {
			orderItem.setOrderId(entity.getId());
			orderItemMapper.insert(orderItem);
		}
		return result;
	}
	
	public List<OrderItem> getOrderItemsByOrderId(int orderId){
		return orderItemMapper.getOrderItemsByOrderId(orderId);
	}
}