package com.sample.camping.vo;

import java.util.Date;

import com.sample.camping.utils.DateUtils;

public class ProductPurchase {
	private Integer purchaseNo;
	private Integer cartNo;
	private Integer goodsNo;
	private Integer amount;
	private String purchaseYN;
	
	
	public String getPurchaseYN() {
		return purchaseYN;
	}
	public void setPurchaseYN(String purchaseYN) {
		this.purchaseYN = purchaseYN;
	}
	public Integer getPurchaseNo() {
		return purchaseNo;
	}
	public void setPurchaseNo(Integer purchaseNo) {
		this.purchaseNo = purchaseNo;
	}
	public Integer getCartNo() {
		return cartNo;
	}
	public void setCartNo(Integer cartNo) {
		this.cartNo = cartNo;
	}
	
	public Integer getGoodsNo() {
		return goodsNo;
	}
	public void setGoodsNo(Integer goodsNo) {
		this.goodsNo = goodsNo;
	}
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	
	

	
}
