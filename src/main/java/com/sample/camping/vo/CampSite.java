package com.sample.camping.vo;

import java.util.Date;

public class CampSite {

	private Integer no;
	private String name;
	private String sort;
	private Double latitude;
	private Double longitude;
	private String address;
	private String tel;
	private Integer sites;
	private Integer price;
	private Integer likes;
	private Integer hates;
	private String photo;
	private Double point;
	private Date createDate;
	private String usedYn;
	private String sido;
	private MyCampsite myCampsite;
	private String gugun;
	
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
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
	public String getSido() {
		return sido;
	}
	public void setSido(String sido) {
		this.sido = sido;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Integer getSites() {
		return sites;
	}
	public void setSites(Integer sites) {
		this.sites = sites;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Integer getLikes() {
		return likes;
	}
	public void setLikes(Integer likes) {
		this.likes = likes;
	}
	public Integer getHates() {
		return hates;
	}
	public void setHates(Integer hates) {
		this.hates = hates;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
	public Double getPoint() {
		return point;
	}
	public void setPoint(Double point) {
		this.point = point;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getUsedYn() {
		return usedYn;
	}
	public void setUsedYn(String usedYn) {
		this.usedYn = usedYn;
	}
	public MyCampsite getMyCampsite() {
		return myCampsite;
	}
	public void setMyCampsite(MyCampsite myCampsite) {
		this.myCampsite = myCampsite;
	}
	
	public String getGugun() {
		return gugun;
	}
	public void setGugun(String gugun) {
		this.gugun = gugun;
	}
	@Override
	public String toString() {
		return "CampSite [no=" + no + ", name=" + name + ", sort=" + sort + ", latitude=" + latitude + ", longitude="
				+ longitude + ", address=" + address + ", tel=" + tel + ", sites=" + sites + ", price=" + price
				+ ", likes=" + likes + ", hates=" + hates + ", photo=" + photo + ", point=" + point + ", createDate="
				+ createDate + ", usedYn=" + usedYn + ", sido=" + sido + ", myCampsite=" + myCampsite + "]";
	}
	
	
	
}
