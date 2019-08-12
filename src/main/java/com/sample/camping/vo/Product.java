package com.sample.camping.vo;

import java.util.Date;

import com.sample.camping.utils.DateUtils;

public class Product {
	private Integer goodsNo;
	private String name;
	private Integer price;
	private String photo;
	private String goodsSort;
	private String summary;
	private String longSummary;
	private String goodsCategory;
	private String forsale;
	private Integer goodsPoint;
	private Integer goodsLike;
	private Integer hate;
	private Date createDate;
	private Integer stock;
	
	
	public String getForsale() {
		return forsale;
	}
	public void setForsale(String forsale) {
		this.forsale = forsale;
	}
	public Integer getGoodsNo() {
		return goodsNo;
	}
	public void setGoodsNo(Integer goodsNo) {
		this.goodsNo = goodsNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getGoodsSort() {
		return goodsSort;
	}
	public void setGoodsSort(String goodsSort) {
		this.goodsSort = goodsSort;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getLongSummary() {
		return longSummary;
	}
	public void setLongSummary(String longSummary) {
		this.longSummary = longSummary;
	}
	public String getGoodsCategory() {
		return goodsCategory;
	}
	public void setGoodsCategory(String goodsCategory) {
		this.goodsCategory = goodsCategory;
	}
	public Integer getGoodsPoint() {
		return goodsPoint;
	}
	public void setGoodsPoint(Integer goodsPoint) {
		this.goodsPoint = goodsPoint;
	}
	public Integer getGoodsLike() {
		return goodsLike;
	}
	public void setGoodsLike(Integer goodsLike) {
		this.goodsLike = goodsLike;
	}
	public Integer getHate() {
		return hate;
	}
	public void setHate(Integer hate) {
		this.hate = hate;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Integer getStock() {
		return stock;
	}
	public String getCreateDateStr() {
		return DateUtils.dateToString(createDate);
	}
	
	public void setStock(Integer stock) {
		this.stock = stock;
	}
	@Override
	public String toString() {
		return "Product [goodsNo=" + goodsNo + ", name=" + name + ", price=" + price + ", photo=" + photo
				+ ", goodsSort=" + goodsSort + ", summary=" + summary + ", longSummary=" + longSummary
				+ ", goodsCategory=" + goodsCategory + ", forsale=" + forsale + ", goodsPoint=" + goodsPoint
				+ ", goodsLike=" + goodsLike + ", hate=" + hate + ", createDate=" + createDate + ", stock=" + stock
				+ "]";
	}

	
}
