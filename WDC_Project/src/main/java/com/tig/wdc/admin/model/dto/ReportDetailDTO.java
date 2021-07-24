package com.tig.wdc.admin.model.dto;

import java.sql.Date;

public class ReportDetailDTO {

	private int reportNo;
	private int userNo;            // 1
	private int teNo;              // 2
	private String reportTitle;
	private String reportedId1;
	private String reportedId2;
	private String reportedNmae1;
	private String reportedNmae2;
	private java.sql.Date reportDate;
	private String blackListYN;
	private String type;
	private String reason;
	private String imgPath;
	private String reportStatus;
	public ReportDetailDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReportDetailDTO(int reportNo, int userNo, int teNo, String reportTitle, String reportedId1,
			String reportedId2, String reportedNmae1, String reportedNmae2, Date reportDate, String blackListYN,
			String type, String reason, String imgPath, String reportStatus) {
		super();
		this.reportNo = reportNo;
		this.userNo = userNo;
		this.teNo = teNo;
		this.reportTitle = reportTitle;
		this.reportedId1 = reportedId1;
		this.reportedId2 = reportedId2;
		this.reportedNmae1 = reportedNmae1;
		this.reportedNmae2 = reportedNmae2;
		this.reportDate = reportDate;
		this.blackListYN = blackListYN;
		this.type = type;
		this.reason = reason;
		this.imgPath = imgPath;
		this.reportStatus = reportStatus;
	}
	public int getReportNo() {
		return reportNo;
	}
	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getTeNo() {
		return teNo;
	}
	public void setTeNo(int teNo) {
		this.teNo = teNo;
	}
	public String getReportTitle() {
		return reportTitle;
	}
	public void setReportTitle(String reportTitle) {
		this.reportTitle = reportTitle;
	}
	public String getReportedId1() {
		return reportedId1;
	}
	public void setReportedId1(String reportedId1) {
		this.reportedId1 = reportedId1;
	}
	public String getReportedId2() {
		return reportedId2;
	}
	public void setReportedId2(String reportedId2) {
		this.reportedId2 = reportedId2;
	}
	public String getReportedNmae1() {
		return reportedNmae1;
	}
	public void setReportedNmae1(String reportedNmae1) {
		this.reportedNmae1 = reportedNmae1;
	}
	public String getReportedNmae2() {
		return reportedNmae2;
	}
	public void setReportedNmae2(String reportedNmae2) {
		this.reportedNmae2 = reportedNmae2;
	}
	public java.sql.Date getReportDate() {
		return reportDate;
	}
	public void setReportDate(java.sql.Date reportDate) {
		this.reportDate = reportDate;
	}
	public String getBlackListYN() {
		return blackListYN;
	}
	public void setBlackListYN(String blackListYN) {
		this.blackListYN = blackListYN;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	public String getReportStatus() {
		return reportStatus;
	}
	public void setReportStatus(String reportStatus) {
		this.reportStatus = reportStatus;
	}
	@Override
	public String toString() {
		return "ReportDetailDTO [reportNo=" + reportNo + ", userNo=" + userNo + ", teNo=" + teNo + ", reportTitle="
				+ reportTitle + ", reportedId1=" + reportedId1 + ", reportedId2=" + reportedId2 + ", reportedNmae1="
				+ reportedNmae1 + ", reportedNmae2=" + reportedNmae2 + ", reportDate=" + reportDate + ", blackListYN="
				+ blackListYN + ", type=" + type + ", reason=" + reason + ", imgPath=" + imgPath + ", reportStatus="
				+ reportStatus + "]";
	}
	
}
