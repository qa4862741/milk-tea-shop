package com.yezic.com.entity;

import java.math.BigDecimal;
import java.sql.Date;

public class InOrder {
	private int id;
	//编号、品名、下单日期、下单数量、单价、运费、供应商、到货数量、备注
	private int materialId;
	
	private String materialName;
	
	private Date orderDate;
	
	private BigDecimal orderNum;
	
	private BigDecimal price;
	
	private BigDecimal shipment;
	
	private String supplier;
	
	private BigDecimal inNum;
	
	private String remark;
	
	private String orderNumber;

	public String getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getMaterialId() {
		return materialId;
	}

	public void setMaterialId(int materialId) {
		this.materialId = materialId;
	}

	public String getMaterialName() {
		return materialName;
	}

	public void setMaterialName(String materialName) {
		this.materialName = materialName;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public BigDecimal getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(BigDecimal orderNum) {
		this.orderNum = orderNum;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public BigDecimal getShipment() {
		return shipment;
	}

	public void setShipment(BigDecimal shipment) {
		this.shipment = shipment;
	}

	public String getSupplier() {
		return supplier;
	}

	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}

	public BigDecimal getInNum() {
		return inNum;
	}

	public void setInNum(BigDecimal inNum) {
		this.inNum = inNum;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	
}
