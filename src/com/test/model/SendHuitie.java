package com.test.model;

public class SendHuitie {
	
	private Integer tieid;
	private String content;
	private Integer userId;
	public SendHuitie() {
		super();
	}
	public SendHuitie(Integer tieid, String content, Integer userId) {
		super();
		this.tieid = tieid;
		this.content = content;
		this.userId = userId;
	}
	public Integer getTieid() {
		return tieid;
	}
	public void setTieid(Integer tieid) {
		this.tieid = tieid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	
	
	
	
	

}
