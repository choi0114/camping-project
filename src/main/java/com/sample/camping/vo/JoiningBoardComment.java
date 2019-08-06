package com.sample.camping.vo;

import java.util.Date;

public class JoiningBoardComment {

	private Integer no;
	private String contents;
	private Date createDate;
	private JoiningBoard joningBoard;
	private User user;
	
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
	public JoiningBoard getJoningBoard() {
		return joningBoard;
	}
	public void setJoningBoard(JoiningBoard joningBoard) {
		this.joningBoard = joningBoard;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
	
}
