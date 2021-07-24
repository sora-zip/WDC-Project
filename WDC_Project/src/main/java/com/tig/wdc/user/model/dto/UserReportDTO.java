package com.tig.wdc.user.model.dto;

import java.sql.Date;

/**
 * @author SORA
 * 신고 DTO
 */
public class UserReportDTO {

	private int reportNo;
	private String reportTitle;
	private String reportReason;
	private String reportType;
	private int reportFromNo;
	private int reportToNo;
	private String reportPic;
	private String status;
	private Date reportDate;
	private int rowNum;
	private String reportAnswer;

	public UserReportDTO() {
		super();
	}

	public UserReportDTO(int reportNo, String reportTitle, String reportReason, String reportType, int reportFromNo,
			int reportToNo, String reportPic, String status, Date reportDate, int rowNum, String reportAnswer) {
		super();
		this.reportNo = reportNo;
		this.reportTitle = reportTitle;
		this.reportReason = reportReason;
		this.reportType = reportType;
		this.reportFromNo = reportFromNo;
		this.reportToNo = reportToNo;
		this.reportPic = reportPic;
		this.status = status;
		this.reportDate = reportDate;
		this.rowNum = rowNum;
		this.reportAnswer = reportAnswer;
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

	public String getReportReason() {
		return reportReason;
	}

	public void setReportReason(String reportReason) {
		this.reportReason = reportReason;
	}

	public String getReportType() {
		return reportType;
	}

	public void setReportType(String reportType) {
		this.reportType = reportType;
	}

	public int getReportFromNo() {
		return reportFromNo;
	}

	public void setReportFromNo(int reportFromNo) {
		this.reportFromNo = reportFromNo;
	}

	public int getReportToNo() {
		return reportToNo;
	}

	public void setReportToNo(int reportToNo) {
		this.reportToNo = reportToNo;
	}

	public String getReportPic() {
		return reportPic;
	}

	public void setReportPic(String reportPic) {
		this.reportPic = reportPic;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getReportDate() {
		return reportDate;
	}

	public void setReportDate(Date reportDate) {
		this.reportDate = reportDate;
	}

	public int getRowNum() {
		return rowNum;
	}

	public void setRowNum(int rowNum) {
		this.rowNum = rowNum;
	}

	public String getReportAnswer() {
		return reportAnswer;
	}

	public void setReportAnswer(String reportAnswer) {
		this.reportAnswer = reportAnswer;
	}

	@Override
	public String toString() {
		return "UserReportDTO [reportNo=" + reportNo + ", reportTitle=" + reportTitle + ", reportReason=" + reportReason
				+ ", reportType=" + reportType + ", reportFromNo=" + reportFromNo + ", reportToNo=" + reportToNo
				+ ", reportPic=" + reportPic + ", status=" + status + ", reportDate=" + reportDate + ", rowNum="
				+ rowNum + ", reportAnswer=" + reportAnswer + "]";
	}

}
