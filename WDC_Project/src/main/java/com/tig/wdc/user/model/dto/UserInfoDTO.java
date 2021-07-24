package com.tig.wdc.user.model.dto;

import java.sql.Date;

public class UserInfoDTO {
	private int userNo;
	private String userId;
	private String userPwd;
	private String userName;
	private String phone;
	private java.sql.Date birthDate;
	private String blockYn;
	private String quitYn;
	private java.sql.Date enrollDate;
	private String checkPwd;

	public UserInfoDTO() {
	}

	public UserInfoDTO(int userNo, String userId, String userPwd, String userName, String phone, Date birthDate,
			String blockYn, String quitYn, Date enrollDate, String checkPwd) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.phone = phone;
		this.birthDate = birthDate;
		this.blockYn = blockYn;
		this.quitYn = quitYn;
		this.enrollDate = enrollDate;
		this.checkPwd = checkPwd;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public java.sql.Date getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(java.sql.Date birthDate) {
		this.birthDate = birthDate;
	}

	public String getBlockYn() {
		return blockYn;
	}

	public void setBlockYn(String blockYn) {
		this.blockYn = blockYn;
	}

	public String getQuitYn() {
		return quitYn;
	}

	public void setQuitYn(String quitYn) {
		this.quitYn = quitYn;
	}

	public java.sql.Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(java.sql.Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getCheckPwd() {
		return checkPwd;
	}

	public void setCheckPwd(String checkPwd) {
		this.checkPwd = checkPwd;
	}

	@Override
	public String toString() {
		return "UserInfoDTO [userNo=" + userNo + ", userId=" + userId + ", userPwd=" + userPwd + ", userName="
				+ userName + ", phone=" + phone + ", birthDate=" + birthDate + ", blockYn=" + blockYn + ", quitYn="
				+ quitYn + ", enrollDate=" + enrollDate + ", checkPwd=" + checkPwd + "]";
	}

}
