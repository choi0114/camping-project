package com.sample.camping.form;

import org.springframework.web.multipart.MultipartFile;

public class BoardForm {
	private Integer menu;
	private String title;
	private String contents;
	private Integer campsiteNo;
	private MultipartFile thumbnailUploadFile;
	
	public Integer getCampsiteNo() {
		return campsiteNo;
	}
	public void setCampsiteNo(Integer campsiteNo) {
		this.campsiteNo = campsiteNo;
	}
	public Integer getMenu() {
		return menu;
	}
	public void setMenu(Integer menu) {
		this.menu = menu;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public MultipartFile getThumbnailUploadFile() {
		return thumbnailUploadFile;
	}
	public void setThumbnailUploadFile(MultipartFile thumbnailUploadFile) {
		this.thumbnailUploadFile = thumbnailUploadFile;
	}


}
