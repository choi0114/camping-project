package com.sample.camping.vo;

import java.util.Date;

import com.sample.camping.utils.DateUtils;

public class Board {
	private Integer no;
	private String title;
	private String contents;
	private Integer likes;
	private Integer hates;
	private Integer views;
	private Date createDate;
	private String userNick;
	private String userId;
	private String profilePhoto;
	private String campsiteName;
	private Integer campsiteNo;
	private Integer commentCnt;
	private String thumbnail;
	

	public String getCampsiteName() {
		return campsiteName;
	}
	public void setCampsiteName(String campsiteName) {
		this.campsiteName = campsiteName;
	}
	public String getUserNick() {
		return userNick;
	}
	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}
	public String getProfilePhoto() {
		return profilePhoto;
	}
	public void setProfilePhoto(String profilePhoto) {
		this.profilePhoto = profilePhoto;
	}
	public Integer getCommentCnt() {
		return commentCnt;
	}
	public void setCommentCnt(Integer commentCnt) {
		this.commentCnt = commentCnt;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Integer getCampsiteNo() {
		return campsiteNo;
	}
	public void setCampsiteNo(Integer campsiteNo) {
		this.campsiteNo = campsiteNo;
	}
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
	public String getCreateDateStr() {
		return DateUtils.dateToString(createDate);
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
}
