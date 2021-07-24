package com.tig.wdc.admin.model.dto;

import java.sql.Date;
import java.util.List;

public class CheeringClassDTO {

	private int clsNo;
	private java.sql.Date firstDecision;
	private java.sql.Date enrollDate;
	private String title;
	private String teName;
	private int categoryNo;
	private int cheeringCnt;
	private String cheeringUserNo;
	
	public CheeringClassDTO() {}

	public CheeringClassDTO(int clsNo, Date firstDecision, Date enrollDate, String title, String teName, int categoryNo,
			int cheeringCnt, String cheeringUserNo) {
		super();
		this.clsNo = clsNo;
		this.firstDecision = firstDecision;
		this.enrollDate = enrollDate;
		this.title = title;
		this.teName = teName;
		this.categoryNo = categoryNo;
		this.cheeringCnt = cheeringCnt;
		this.cheeringUserNo = cheeringUserNo;
	}

	public int getClsNo() {
		return clsNo;
	}

	public void setClsNo(int clsNo) {
		this.clsNo = clsNo;
	}

	public java.sql.Date getFirstDecision() {
		return firstDecision;
	}

	public void setFirstDecision(java.sql.Date firstDecision) {
		this.firstDecision = firstDecision;
	}

	public java.sql.Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(java.sql.Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTeName() {
		return teName;
	}

	public void setTeName(String teName) {
		this.teName = teName;
	}

	public int getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}

	public int getCheeringCnt() {
		return cheeringCnt;
	}

	public void setCheeringCnt(int cheeringCnt) {
		this.cheeringCnt = cheeringCnt;
	}

	public String getCheeringUserNo() {
		return cheeringUserNo;
	}

	public void setCheeringUserNo(String cheeringUserNo) {
		this.cheeringUserNo = cheeringUserNo;
	}

	@Override
	public String toString() {
		return "CheeringClassDTO [clsNo=" + clsNo + ", firstDecision=" + firstDecision + ", enrollDate=" + enrollDate
				+ ", title=" + title + ", teName=" + teName + ", categoryNo=" + categoryNo + ", cheeringCnt="
				+ cheeringCnt + ", cheeringUserNo=" + cheeringUserNo + "]";
	}

	

}
