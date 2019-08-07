package com.sample.camping.vo;

import java.util.Date;

public class OpinionComment {

	private Integer no;
	private String contents;
	private Date createDate;
	private User user;
	private CampSite campSite;
	
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
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
	public CampSite getCampSite() {
		return campSite;
	}
	public void setCampSite(CampSite campSite) {
		this.campSite = campSite;
	}
	
	
	
}
