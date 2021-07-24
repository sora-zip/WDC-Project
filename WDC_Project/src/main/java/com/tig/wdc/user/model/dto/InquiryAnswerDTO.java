package com.tig.wdc.user.model.dto;

import java.sql.Date;

/**
 * @author SORA
 * 문의 답변 DTO
 */
public class InquiryAnswerDTO {

	private int answerNo;
	private String answerContent;
	private int queNo;
	private Date answerTime;
	private String teName;
	private String tePic;

	public InquiryAnswerDTO() {
		super();
	}

	public InquiryAnswerDTO(int answerNo, String answerContent, int queNo, Date answerTime, String teName,
			String tePic) {
		super();
		this.answerNo = answerNo;
		this.answerContent = answerContent;
		this.queNo = queNo;
		this.answerTime = answerTime;
		this.teName = teName;
		this.tePic = tePic;
	}

	public int getAnswerNo() {
		return answerNo;
	}

	public void setAnswerNo(int answerNo) {
		this.answerNo = answerNo;
	}

	public String getAnswerContent() {
		return answerContent;
	}

	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}

	public int getQueNo() {
		return queNo;
	}

	public void setQueNo(int queNo) {
		this.queNo = queNo;
	}

	public Date getAnswerTime() {
		return answerTime;
	}

	public void setAnswerTime(Date answerTime) {
		this.answerTime = answerTime;
	}

	public String getTeName() {
		return teName;
	}

	public void setTeName(String teName) {
		this.teName = teName;
	}

	public String getTePic() {
		return tePic;
	}

	public void setTePic(String tePic) {
		this.tePic = tePic;
	}

	@Override
	public String toString() {
		return "InquiryAnswerDTO [answerNo=" + answerNo + ", answerContent=" + answerContent + ", queNo=" + queNo
				+ ", answerTime=" + answerTime + ", teName=" + teName + ", tePic=" + tePic + "]";
	}

}
