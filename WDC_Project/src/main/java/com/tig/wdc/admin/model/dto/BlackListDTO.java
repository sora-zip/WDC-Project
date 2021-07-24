package com.tig.wdc.admin.model.dto;

import java.sql.Date;

public class BlackListDTO {

	private int blackNo;
	private String type;
	private String blackReason;
	private int userNo;
	private String blackId;
	private String blackName;
	private java.sql.Date enrollDate;
	
	public BlackListDTO() {}

	public BlackListDTO(int blackNo, String type, String blackReason, int userNo, String blackId, String blackName,
			Date enrollDate) {
		super();
		this.blackNo = blackNo;
		this.type = type;
		this.blackReason = blackReason;
		this.userNo = userNo;
		this.blackId = blackId;
		this.blackName = blackName;
		this.enrollDate = enrollDate;
	}

	public int getBlackNo() {
		return blackNo;
	}

	public void setBlackNo(int blackNo) {
		this.blackNo = blackNo;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getBlackReason() {
		return blackReason;
	}

	public void setBlackReason(String blackReason) {
		this.blackReason = blackReason;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getBlackId() {
		return blackId;
	}

	public void setBlackId(String blackId) {
		this.blackId = blackId;
	}

	public String getBlackName() {
		return blackName;
	}

	public void setBlackName(String blackName) {
		this.blackName = blackName;
	}

	public java.sql.Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(java.sql.Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	@Override
	public String toString() {
		return "BlackListDTO [blackNo=" + blackNo + ", type=" + type + ", blackReason=" + blackReason + ", userNo="
				+ userNo + ", blackId=" + blackId + ", blackName=" + blackName + ", enrollDate=" + enrollDate + "]";
	}
	
	
}
