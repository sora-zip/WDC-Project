package com.tig.wdc.user.model.dto;

import java.sql.Date;

/**
 * @author SORA 
 * 문의 DTO
 */
public class UserInquiryDTO {

	private int queNo;
	private String queTitle;
	private String queContent;
	private Date queDate;
	private String queVisibleYn;
	private String userName;
	private int clsNo;
	private String answerYn;
	private InquiryAnswerDTO answer;
	private int userNo;
	
	public UserInquiryDTO() {
		super();
	}

	public UserInquiryDTO(int queNo, String queTitle, String queContent, Date queDate, String queVisibleYn,
			String userName, int clsNo, String answerYn, InquiryAnswerDTO answer, int userNo) {
		super();
		this.queNo = queNo;
		this.queTitle = queTitle;
		this.queContent = queContent;
		this.queDate = queDate;
		this.queVisibleYn = queVisibleYn;
		this.userName = userName;
		this.clsNo = clsNo;
		this.answerYn = answerYn;
		this.answer = answer;
		this.userNo = userNo;
	}

	public int getQueNo() {
		return queNo;
	}

	public void setQueNo(int queNo) {
		this.queNo = queNo;
	}

	public String getQueTitle() {
		return queTitle;
	}

	public void setQueTitle(String queTitle) {
		this.queTitle = queTitle;
	}

	public String getQueContent() {
		return queContent;
	}

	public void setQueContent(String queContent) {
		this.queContent = queContent;
	}

	public Date getQueDate() {
		return queDate;
	}

	public void setQueDate(Date queDate) {
		this.queDate = queDate;
	}

	public String getQueVisibleYn() {
		return queVisibleYn;
	}

	public void setQueVisibleYn(String queVisibleYn) {
		this.queVisibleYn = queVisibleYn;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getClsNo() {
		return clsNo;
	}

	public void setClsNo(int clsNo) {
		this.clsNo = clsNo;
	}

	public String getAnswerYn() {
		return answerYn;
	}

	public void setAnswerYn(String answerYn) {
		this.answerYn = answerYn;
	}

	public InquiryAnswerDTO getAnswer() {
		return answer;
	}

	public void setAnswer(InquiryAnswerDTO answer) {
		this.answer = answer;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "UserInquiryDTO [queNo=" + queNo + ", queTitle=" + queTitle + ", queContent=" + queContent + ", queDate="
				+ queDate + ", queVisibleYn=" + queVisibleYn + ", userName=" + userName + ", clsNo=" + clsNo
				+ ", answerYn=" + answerYn + ", answer=" + answer + ", userNo=" + userNo + "]";
	}

}
