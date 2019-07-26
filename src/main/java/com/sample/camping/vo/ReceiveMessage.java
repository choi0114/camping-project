package com.sample.camping.vo;

import java.util.Date;

public class ReceiveMessage {

	private Integer no;
	private String readYn;
	private Date readDate;
	private User user;
	private SendMessage sendMessage;
	
	public Integer getNo() {
		return no;
	}
	public void setNo(Integer no) {
		this.no = no;
	}
	public String getReadYn() {
		return readYn;
	}
	public void setReadYn(String readYn) {
		this.readYn = readYn;
	}
	public Date getReadDate() {
		return readDate;
	}
	public void setReadDate(Date readDate) {
		this.readDate = readDate;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public SendMessage getSendMessage() {
		return sendMessage;
	}
	public void setSendMessage(SendMessage sendMessage) {
		this.sendMessage = sendMessage;
	}
	
	
	
}
