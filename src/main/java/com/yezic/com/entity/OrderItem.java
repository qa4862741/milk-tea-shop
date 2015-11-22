package com.yezic.com.entity;

import java.math.BigDecimal;

public class OrderItem {
	private int id;
	/**
	 * 订单ID
	 */
	private int orderId;

	/**
	 * 商品ID
	 */
	private int goodsId;

	/**
	 * 商品名称
	 */
	private String goodsName;

	/**
	 * 单位
	 */
	private String unit;

	/**
	 * 数量
	 */
	private int count;

	/**
	 * 单价
	 */
	private BigDecimal unitPrice;

	/**
	 * 销售价格
	 */
	private BigDecimal salePrice;

	/**
	 * 是否赠送
	 */
	private boolean isPresent;

	/**
	 * 图片路径
	 */
	private String imagePath;
	
	/**
	 * 口味
	 */
	private String taste;
	
	/**
	 * 加料
	 */
	private String addition;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public BigDecimal getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(BigDecimal unitPrice) {
		this.unitPrice = unitPrice;
	}

	public BigDecimal getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(BigDecimal salePrice) {
		this.salePrice = salePrice;
	}

	public boolean isPresent() {
		return isPresent;
	}

	public void setPresent(boolean isPresent) {
		this.isPresent = isPresent;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public String getTaste() {
		return taste;
	}

	public void setTaste(String taste) {
		this.taste = taste;
	}

	public String getAddition() {
		return addition;
	}

	public void setAddition(String addition) {
		this.addition = addition;
	}

	
}
