package com.yezic.com.repository;

import java.util.List;

import com.yezic.com.common.BaseMapper;
import com.yezic.com.entity.OrderItem;

public interface OrderItemMapper extends BaseMapper<OrderItem>{
	List<OrderItem> getOrderItemsByOrderId(int orderId);
}
