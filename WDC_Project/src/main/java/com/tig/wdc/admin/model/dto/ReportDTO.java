package com.tig.wdc.admin.model.dto;

import java.sql.Date;

public class ReportDTO {

	private int reportNo;
	private String reportTitle;
	private String reportType;
	private String reportId;
	private java.sql.Date reportDate;
	private String  reportStatus;
	
	public ReportDTO() {}
	
	public ReportDTO(int reportNo, String reportTitle, String reportType, String reportId, Date reportDate,
			String reportStatus) {
		super();
		this.reportNo = reportNo;
		this.reportTitle = reportTitle;
		this.reportType = reportType;
		this.reportId = reportId;
		this.reportDate = reportDate;
		this.reportStatus = reportStatus;
	}
	
	public int getReportNo() {
		return reportNo;
	}
	public void setReportNo(int reportNo) {
		this.reportNo = reportNo;
	}
	public String getReportTitle() {
		return reportTitle;
	}
	public void setReportTitle(String reportTitle) {
		this.reportTitle = reportTitle;
	}
	public String getReportType() {
		return reportType;
	}
	public void setReportType(String reportType) {
		this.reportType = reportType;
	}
	public String getReportId() {
		return reportId;
	}
	public void setReportId(String reportId) {
		this.reportId = reportId;
	}
	public java.sql.Date getReportDate() {
		return reportDate;
	}
	public void setReportDate(java.sql.Date reportDate) {
		this.reportDate = reportDate;
	}
	public String getReportStatus() {
		return reportStatus;
	}
	public void setReportStatus(String reportStatus) {
		this.reportStatus = reportStatus;
	}
	
	@Override
	public String toString() {
		return "ReportDTO [reportNo=" + reportNo + ", reportTitle=" + reportTitle + ", reportType=" + reportType
				+ ", reportId=" + reportId + ", reportDate=" + reportDate + ", reportStatus=" + reportStatus + "]";
	}
	
}
