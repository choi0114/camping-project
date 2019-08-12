package com.sample.camping.vo;

import java.util.Date;

public class Cart {
	private Integer no;
	private Date createDate;
	private String userId; 
	private Integer amount; 
	private Integer goodsNo;
	
	
	
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
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
	public Integer getGoodsNo() {
		return goodsNo;
	}
	public void setGoodsNo(Integer goodsNo) {
		this.goodsNo = goodsNo;
	}
	
	
}
