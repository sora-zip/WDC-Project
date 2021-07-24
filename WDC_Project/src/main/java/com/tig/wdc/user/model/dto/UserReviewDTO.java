package com.tig.wdc.user.model.dto;

import java.sql.Date;

/**
 * @author SORA 리뷰 DTO
 */
public class UserReviewDTO {

	private int reviewNo;
	private String reviewTitle;
	private String reviewContent;
	private String reviewPic;
	private int reviewScore;
	private Date reviewEnrollDate;
	private int aplNo;
	private int userNo;
	private String userName;
	private ReviewAnswerDTO answer;

	public UserReviewDTO() {
		super();
	}

	public UserReviewDTO(int reviewNo, String reviewTitle, String reviewContent, String reviewPic, int reviewScore,
			Date reviewEnrollDate, int aplNo, int userNo, String userName, ReviewAnswerDTO answer) {
		super();
		this.reviewNo = reviewNo;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewPic = reviewPic;
		this.reviewScore = reviewScore;
		this.reviewEnrollDate = reviewEnrollDate;
		this.aplNo = aplNo;
		this.userNo = userNo;
		this.userName = userName;
		this.answer = answer;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public String getReviewTitle() {
		return reviewTitle;
	}

	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public String getReviewPic() {
		return reviewPic;
	}

	public void setReviewPic(String reviewPic) {
		this.reviewPic = reviewPic;
	}

	public int getReviewScore() {
		return reviewScore;
	}

	public void setReviewScore(int reviewScore) {
		this.reviewScore = reviewScore;
	}

	public Date getReviewEnrollDate() {
		return reviewEnrollDate;
	}

	public void setReviewEnrollDate(Date reviewEnrollDate) {
		this.reviewEnrollDate = reviewEnrollDate;
	}

	public int getAplNo() {
		return aplNo;
	}

	public void setAplNo(int aplNo) {
		this.aplNo = aplNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public ReviewAnswerDTO getAnswer() {
		return answer;
	}

	public void setAnswer(ReviewAnswerDTO answer) {
		this.answer = answer;
	}

	@Override
	public String toString() {
		return "UserReviewDTO [reviewNo=" + reviewNo + ", reviewTitle=" + reviewTitle + ", reviewContent="
				+ reviewContent + ", reviewPic=" + reviewPic + ", reviewScore=" + reviewScore + ", reviewEnrollDate="
				+ reviewEnrollDate + ", aplNo=" + aplNo + ", userNo=" + userNo + ", userName=" + userName + ", answer="
				+ answer + "]";
	}

}
