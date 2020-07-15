package com.test.model;

public class BigSection {
	
	private Integer bigId;
	private String name;
	public BigSection() {
		super();
	}
	public BigSection(Integer bigId, String name) {
		super();
		this.bigId = bigId;
		this.name = name;
	}
	public Integer getBigId() {
		return bigId;
	}
	public void setBigId(Integer bigId) {
		this.bigId = bigId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
