package com.sample.camping.vo;

import java.util.Date;

public class MyCampsite {

	private Integer no;
	private String campsitesStatus;
	private Date createDate;
	private User user;
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	public String getCampsitesStatus() {
		return campsitesStatus;
	}
	public void setCampsitesStatus(String campsitesStatus) {
		this.campsitesStatus = campsitesStatus;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
	
}
