package com.tig.wdc.user.model.dto;

public class UserLikeClassDTO {

	private int likeNo;
	private int clsNo;
	private int likeStatus;
	private int userNo;
	private int rowNum;

	public UserLikeClassDTO() {
		super();
	}

	public UserLikeClassDTO(int likeNo, int clsNo, int likeStatus, int userNo, int rowNum) {
		super();
		this.likeNo = likeNo;
		this.clsNo = clsNo;
		this.likeStatus = likeStatus;
		this.userNo = userNo;
		this.rowNum = rowNum;
	}

	public int getLikeNo() {
		return likeNo;
	}

	public void setLikeNo(int likeNo) {
		this.likeNo = likeNo;
	}

	public int getClsNo() {
		return clsNo;
	}

	public void setClsNo(int clsNo) {
		this.clsNo = clsNo;
	}

	public int getLikeStatus() {
		return likeStatus;
	}

	public void setLikeStatus(int likeStatus) {
		this.likeStatus = likeStatus;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getRowNum() {
		return rowNum;
	}

	public void setRowNum(int rowNum) {
		this.rowNum = rowNum;
	}

	@Override
	public String toString() {
		return "UserLikeClassDTO [likeNo=" + likeNo + ", clsNo=" + clsNo + ", likeStatus=" + likeStatus + ", userNo="
				+ userNo + ", rowNum=" + rowNum + "]";
	}

}
