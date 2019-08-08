package com.sample.camping.vo;

import java.util.Date;

public class LikeHateCampsite {

	private Integer no;
	private CampSite campsite;
	private User user;
	private Date createDate;
	
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	public CampSite getCampsite() {
		return campsite;
	}
	public void setCampsite(CampSite campsite) {
		this.campsite = campsite;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
	
}
