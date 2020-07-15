package com.test.model;

import java.util.Date;

public class Tiezi {
	private Integer smallId;
	private String bigsection;
	private String smallsection;
	private String title;
	private String name;
	private Date time;
	private Integer tieId;
	private Integer sumpost;
	private Integer sspost;
	private Integer bigId;
	
	public Tiezi() {
		super();
	}

	public Tiezi(Integer smallId, String bigsection, String smallsection, String title, String name, Date time,
			Integer tieId, Integer sumpost, Integer sspost, Integer bigId) {
		super();
		this.smallId = smallId;
		this.bigsection = bigsection;
		this.smallsection = smallsection;
		this.title = title;
		this.name = name;
		this.time = time;
		this.tieId = tieId;
		this.sumpost = sumpost;
		this.sspost = sspost;
		this.bigId = bigId;
	}

	public Integer getSmallId() {
		return smallId;
	}

	public void setSmallId(Integer smallId) {
		this.smallId = smallId;
	}

	public String getBigsection() {
		return bigsection;
	}

	public void setBigsection(String bigsection) {
		this.bigsection = bigsection;
	}

	public String getSmallsection() {
		return smallsection;
	}

	public void setSmallsection(String smallsection) {
		this.smallsection = smallsection;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public Integer getTieId() {
		return tieId;
	}

	public void setTieId(Integer tieId) {
		this.tieId = tieId;
	}

	public Integer getSumpost() {
		return sumpost;
	}

	public void setSumpost(Integer sumpost) {
		this.sumpost = sumpost;
	}

	public Integer getSspost() {
		return sspost;
	}

	public void setSspost(Integer sspost) {
		this.sspost = sspost;
	}

	public Integer getBigId() {
		return bigId;
	}

	public void setBigId(Integer bigId) {
		this.bigId = bigId;
	}

	

	
	
}
