package com.sample.camping.vo;

import java.util.Date;

public class ReviewBoard {

	private Integer no;
	private String title;
	private String contents;
	private Integer likes;
	private Integer hates;
	private Integer views;
	private Date createDate;
	private User user;
	private CampSite campSite;
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
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
	public Integer getViews() {
		return views;
	}
	public void setViews(Integer views) {
		this.views = views;
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
