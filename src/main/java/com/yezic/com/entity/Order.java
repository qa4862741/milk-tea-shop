package com.yezic.com.entity;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Order {
	private int id;
	/**
	 * 订单号
	 */
	private String orderNumber;

	/**
	 * 状态
	 */
	private int status;

	/**
	 * 客户名称
	 */
	private String customer;

	/**
	 * 客户VIP的ID
	 */
	private int vipId;
	
	/**
	 * 会员名称
	 */
	private String vipName;

	/**
	 * 销售奶茶的员工号
	 */
	private int employeeId;
	
	/**
	 * 收银员
	 */
	private String salesMan;

	/**
	 * 金额
	 */
	private BigDecimal amount;
	
	/**
	 * 订单项总数量
	 */
	private int count;

	/**
	 * 销售时间
	 */
	private Date createTime;
	
	/**
	 * 门店ID
	 */
	private int storeId;
	
	/**
	 * 门店名称
	 */
	private String storeName;
	
	/**
	 * 找零
	 */
	private BigDecimal exchange;
	
	/**
	 * 实付金额
	 */
	private BigDecimal actulPay;
	
	/**
	 * 付款方式
	 */
	private String paymentway;

	private List<OrderItem> orderItems;

	public Order() {
		orderItems = new ArrayList<OrderItem>();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getCustomer() {
		return customer;
	}

	public void setCustomer(String customer) {
		this.customer = customer;
	}

	public int getVipId() {
		return vipId;
	}

	public void setVipId(int vipId) {
		this.vipId = vipId;
	}

	public int getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}

	public BigDecimal getAmount() {
		return amount;
	}

	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public List<OrderItem> getOrderItems() {
		return orderItems;
	}

	public void setOrderItems(List<OrderItem> orderItems) {
		this.orderItems = orderItems;
	}

	public void addOrderItem(OrderItem orderItem) {
		this.orderItems.add(orderItem);
	}

	public String getVipName() {
		return vipName;
	}

	public void setVipName(String vipName) {
		this.vipName = vipName;
	}

	public String getSalesMan() {
		return salesMan;
	}

	public void setSalesMan(String salesMan) {
		this.salesMan = salesMan;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public int getStoreId() {
		return storeId;
	}

	public void setStoreId(int storeId) {
		this.storeId = storeId;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public BigDecimal getExchange() {
		return exchange;
	}

	public void setExchange(BigDecimal exchange) {
		this.exchange = exchange;
	}

	public BigDecimal getActulPay() {
		return actulPay;
	}

	public void setActulPay(BigDecimal actulPay) {
		this.actulPay = actulPay;
	}

	public String getPaymentway() {
		return paymentway;
	}

	public void setPaymentway(String paymentway) {
		this.paymentway = paymentway;
	}


	
	
}
