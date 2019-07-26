package com.sample.camping.vo;

import java.util.Date;

public class CampingSites {
	
	private int no;
	private	String name;
	private String sort;
	private Double latitude;
	private Double longitude;
	private String address;
	private String tel;
	private int sites;
	private int price;
	private int likes;
	private int hates;
	private String photo;
	private int point;
	private Date createDate;
	private String used;
	private String sido;
	private int myCampingNo;
	
	public CampingSites() {}
	

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public Double getLatitude() {
		return latitude;
	}


	public void setLatitude(Double latitude) {
		this.latitude = latitude;
	}


	public Double getLongitude() {
		return longitude;
	}


	public void setLongitude(Double longitude) {
		this.longitude = longitude;
	}


	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public int getSites() {
		return sites;
	}

	public void setSites(int sites) {
		this.sites = sites;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getLikes() {
		return likes;
	}

	public void setLikes(int likes) {
		this.likes = likes;
	}

	public int getHates() {
		return hates;
	}

	public void setHates(int hates) {
		this.hates = hates;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}
	public String getSido() {
		return sido;
	}
	
	public void setSido(String sido) {
		this.sido = sido;
	}

	public int getMyCampingNo() {
		return myCampingNo;
	}

	public void setMyCampingNo(int myCampingNo) {
		this.myCampingNo = myCampingNo;
	}
	
	

}
