package com.sample.camping.form;

import java.util.Date;

public class CartForm {
	private String name;
	private int price;
	private int no;
	private int count;
	private String photo;
	private Date createDate;
	private Integer cartNo;
	
	
	public Integer getCartNo() {
		return cartNo;
	}
	public void setCartNo(Integer cartNo) {
		this.cartNo = cartNo;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
	
}
