package com.sample.camping.vo;

import java.util.Date;

import com.sample.camping.utils.DateUtils;

public class ProductOrder {
	private Integer orderNo;
	private Integer purchaseNo;
	private String userId;
	private String address;
	private Integer price;
	private Date createDate;
	private Integer orderNum;
	
	
	
	public Integer getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(Integer orderNum) {
		this.orderNum = orderNum;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Integer getPurchaseNo() {
		return purchaseNo;
	}
	public void setPurchaseNo(Integer purchaseNo) {
		this.purchaseNo = purchaseNo;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Integer getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}
	
	

	
}
