package com.sample.camping.form;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class ProductForm {
	private String name;
	private int price;
	private MultipartFile photo;
	private String sort;
	private String summary;
	private String longSummary;
	private String category;
	private int stock;
	
	
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

	public MultipartFile getPhoto() {
		return photo;
	}
	public void setPhoto(MultipartFile photo) {
		this.photo = photo;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
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
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	
}
