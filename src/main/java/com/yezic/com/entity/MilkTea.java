package com.yezic.com.entity;

import java.math.BigDecimal;

public class MilkTea {
	private int id;

	private String name;

	private String productNumber;

	private String unit;

	private int unitId;

	private String taste;

	private int tasteId;

	private String classification;

	private int classificationId;

	private BigDecimal salePrice;

	private BigDecimal costPrice;

	private BigDecimal points;

	private int enabled;

	private String imagePath;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getProductNumber() {
		return productNumber;
	}

	public void setProductNumber(String productNumber) {
		this.productNumber = productNumber;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getTaste() {
		return taste;
	}

	public void setTaste(String taste) {
		this.taste = taste;
	}

	public BigDecimal getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(BigDecimal salePrice) {
		this.salePrice = salePrice;
	}

	public BigDecimal getCostPrice() {
		return costPrice;
	}

	public void setCostPrice(BigDecimal costPrice) {
		this.costPrice = costPrice;
	}

	public BigDecimal getPoints() {
		return points;
	}

	public void setPoints(BigDecimal points) {
		this.points = points;
	}

	public int getEnabled() {
		return enabled;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}

	public String getClassification() {
		return classification;
	}

	public void setClassification(String classification) {
		this.classification = classification;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public int getUnitId() {
		return unitId;
	}

	public void setUnitId(int unitId) {
		this.unitId = unitId;
	}

	public int getTasteId() {
		return tasteId;
	}

	public void setTasteId(int tasteId) {
		this.tasteId = tasteId;
	}

	public int getClassificationId() {
		return classificationId;
	}

	public void setClassificationId(int classificationId) {
		this.classificationId = classificationId;
	}

}
