package com.tig.wdc.user.model.dto;

import java.sql.Date;

public class UserCouponDTO {
	
	private int cpnNo;
	private String cpnName;
	private int disAmount;
	private int disCondition;
	private java.sql.Date cpnStart;
	private java.sql.Date cpnEnd;
	private String cpnUseYn;
	private int cheeringNo;
	private int userNo;
	private java.sql.Date issuedDate;
	private String couponClassName;
	private int clsNo;
	
	public UserCouponDTO() {}

	public UserCouponDTO(int cpnNo, String cpnName, int disAmount, int disCondition, Date cpnStart, Date cpnEnd,
			String cpnUseYn, int cheeringNo, int userNo, Date issuedDate, String couponClassName, int clsNo) {
		super();
		this.cpnNo = cpnNo;
		this.cpnName = cpnName;
		this.disAmount = disAmount;
		this.disCondition = disCondition;
		this.cpnStart = cpnStart;
		this.cpnEnd = cpnEnd;
		this.cpnUseYn = cpnUseYn;
		this.cheeringNo = cheeringNo;
		this.userNo = userNo;
		this.issuedDate = issuedDate;
		this.couponClassName = couponClassName;
		this.clsNo = clsNo;
	}

	public int getCpnNo() {
		return cpnNo;
	}

	public void setCpnNo(int cpnNo) {
		this.cpnNo = cpnNo;
	}

	public String getCpnName() {
		return cpnName;
	}

	public void setCpnName(String cpnName) {
		this.cpnName = cpnName;
	}

	public int getDisAmount() {
		return disAmount;
	}

	public void setDisAmount(int disAmount) {
		this.disAmount = disAmount;
	}

	public int getDisCondition() {
		return disCondition;
	}

	public void setDisCondition(int disCondition) {
		this.disCondition = disCondition;
	}

	public java.sql.Date getCpnStart() {
		return cpnStart;
	}

	public void setCpnStart(java.sql.Date cpnStart) {
		this.cpnStart = cpnStart;
	}

	public java.sql.Date getCpnEnd() {
		return cpnEnd;
	}

	public void setCpnEnd(java.sql.Date cpnEnd) {
		this.cpnEnd = cpnEnd;
	}

	public String getCpnUseYn() {
		return cpnUseYn;
	}

	public void setCpnUseYn(String cpnUseYn) {
		this.cpnUseYn = cpnUseYn;
	}

	public int getCheeringNo() {
		return cheeringNo;
	}

	public void setCheeringNo(int cheeringNo) {
		this.cheeringNo = cheeringNo;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public java.sql.Date getIssuedDate() {
		return issuedDate;
	}

	public void setIssuedDate(java.sql.Date issuedDate) {
		this.issuedDate = issuedDate;
	}

	public String getCouponClassName() {
		return couponClassName;
	}

	public void setCouponClassName(String couponClassName) {
		this.couponClassName = couponClassName;
	}

	public int getClsNo() {
		return clsNo;
	}

	public void setClsNo(int clsNo) {
		this.clsNo = clsNo;
	}

	@Override
	public String toString() {
		return "UserCouponDTO [cpnNo=" + cpnNo + ", cpnName=" + cpnName + ", disAmount=" + disAmount + ", disCondition="
				+ disCondition + ", cpnStart=" + cpnStart + ", cpnEnd=" + cpnEnd + ", cpnUseYn=" + cpnUseYn
				+ ", cheeringNo=" + cheeringNo + ", userNo=" + userNo + ", issuedDate=" + issuedDate
				+ ", couponClassName=" + couponClassName + ", clsNo=" + clsNo + "]";
	}

	
}
