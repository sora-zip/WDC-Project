package com.tig.wdc.user.model.dto;

import java.sql.Date;

/**
 * @author SORA
 * 리뷰답변 DTO
 */
public class ReviewAnswerDTO {

	private int ansNo;
	private Date ansDate;
	private String ansContent;
	private int reviewNo;
	private int teNo;
	private String teName;
	private String tePic;

	public ReviewAnswerDTO() {
		super();
	}

	public ReviewAnswerDTO(int ansNo, Date ansDate, String ansContent, int reviewNo, int teNo, String teName,
			String tePic) {
		super();
		this.ansNo = ansNo;
		this.ansDate = ansDate;
		this.ansContent = ansContent;
		this.reviewNo = reviewNo;
		this.teNo = teNo;
		this.teName = teName;
		this.tePic = tePic;
	}

	public int getAnsNo() {
		return ansNo;
	}

	public void setAnsNo(int ansNo) {
		this.ansNo = ansNo;
	}

	public Date getAnsDate() {
		return ansDate;
	}

	public void setAnsDate(Date ansDate) {
		this.ansDate = ansDate;
	}

	public String getAnsContent() {
		return ansContent;
	}

	public void setAnsContent(String ansContent) {
		this.ansContent = ansContent;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public int getTeNo() {
		return teNo;
	}

	public void setTeNo(int teNo) {
		this.teNo = teNo;
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
		return "ReviewAnswerDTO [ansNo=" + ansNo + ", ansDate=" + ansDate + ", ansContent=" + ansContent + ", reviewNo="
				+ reviewNo + ", teNo=" + teNo + ", teName=" + teName + ", tePic=" + tePic + "]";
	}

}
