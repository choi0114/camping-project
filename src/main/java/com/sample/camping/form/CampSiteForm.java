package com.sample.camping.form;

import org.springframework.web.multipart.MultipartFile;

public class CampSiteForm {
	
	private String name;
	private Double latitude;
	private Double longitude;
	private String address;
	private String tel;
	private MultipartFile UploadFile;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public MultipartFile getUploadFile() {
		return UploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		UploadFile = uploadFile;
	}
	
	
}
