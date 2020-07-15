package com.test.model;

public class SendTiezi {
	private String title;
	private Integer userId;
	private  String content;
	private  Integer smallId;
	private Integer fId;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Integer getSmallId() {
		return smallId;
	}
	public void setSmallId(Integer smallId) {
		this.smallId = smallId;
	}
	public Integer getfId() {
		return fId;
	}
	public void setfId(Integer fId) {
		this.fId = fId;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((content == null) ? 0 : content.hashCode());
		result = prime * result + ((fId == null) ? 0 : fId.hashCode());
		result = prime * result + ((smallId == null) ? 0 : smallId.hashCode());
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		result = prime * result + ((userId == null) ? 0 : userId.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		SendTiezi other = (SendTiezi) obj;
		if (content == null) {
			if (other.content != null)
				return false;
		} else if (!content.equals(other.content))
			return false;
		if (fId == null) {
			if (other.fId != null)
				return false;
		} else if (!fId.equals(other.fId))
			return false;
		if (smallId == null) {
			if (other.smallId != null)
				return false;
		} else if (!smallId.equals(other.smallId))
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "SendTiezi [title=" + title + ", userId=" + userId + ", content=" + content + ", smallId=" + smallId
				+ ", fId=" + fId + "]";
	}
	public SendTiezi(String title, Integer userId, String content, Integer smallId, Integer fId) {
		super();
		this.title = title;
		this.userId = userId;
		this.content = content;
		this.smallId = smallId;
		this.fId = fId;
	}
	
	
	
}
