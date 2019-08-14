package com.sample.camping.vo;

import java.util.Date;

public class Scrap {

	private Integer no;
	private Date createDate;
	private User user;
	private ReviewBoard reviewBoard;
	
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
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
	public ReviewBoard getReviewBoard() {
		return reviewBoard;
	}
	public void setReviewBoard(ReviewBoard reviewBoard) {
		this.reviewBoard = reviewBoard;
	}
}
