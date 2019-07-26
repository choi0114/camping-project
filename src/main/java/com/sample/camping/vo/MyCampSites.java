package com.sample.camping.vo;

import java.util.Date;

public class MyCampSites {

	private Integer no;
	private String status;
	private Date createDate;
	private User id;
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public User getId() {
		return id;
	}
	public void setId(User id) {
		this.id = id;
	}
	
	
}
