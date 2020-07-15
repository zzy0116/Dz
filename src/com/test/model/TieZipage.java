package com.test.model;

import java.util.Date;

public class TieZipage {
	private Integer TieId;
	private String content;
	private String name;
	private Date time;
	private String title;
	public TieZipage() {
		super();
	}
	public TieZipage(Integer tieId, String content, String name, Date time, String title) {
		super();
		TieId = tieId;
		this.content = content;
		this.name = name;
		this.time = time;
		this.title = title;
	}
	public Integer getTieId() {
		return TieId;
	}
	public void setTieId(Integer tieId) {
		TieId = tieId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
}
