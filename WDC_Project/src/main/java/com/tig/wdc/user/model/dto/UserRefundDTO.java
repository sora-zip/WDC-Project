package com.tig.wdc.user.model.dto;

import java.sql.Date;

public class UserRefundDTO {
	
	private int cancelNo;
	private String cancelReason;
	private int refundAmount;
	private java.sql.Date refundDate;
	private String cancelReasonDetail;
	private int payNo;
	private String refundAccount;
	private String accountHolder;
	private String bank;
	private String refundStatus;
	private java.sql.Date refundApplyDate;
	
	// 환불금액 계산용
	private int maxStep;
	private int scheduleCount;
	
	public UserRefundDTO() {}

	public UserRefundDTO(int cancelNo, String cancelReason, int refundAmount, Date refundDate,
			String cancelReasonDetail, int payNo, String refundAccount, String accountHolder, String bank,
			String refundStatus, Date refundApplyDate, int maxStep, int scheduleCount) {
		super();
		this.cancelNo = cancelNo;
		this.cancelReason = cancelReason;
		this.refundAmount = refundAmount;
		this.refundDate = refundDate;
		this.cancelReasonDetail = cancelReasonDetail;
		this.payNo = payNo;
		this.refundAccount = refundAccount;
		this.accountHolder = accountHolder;
		this.bank = bank;
		this.refundStatus = refundStatus;
		this.refundApplyDate = refundApplyDate;
		this.maxStep = maxStep;
		this.scheduleCount = scheduleCount;
	}

	public int getCancelNo() {
		return cancelNo;
	}

	public void setCancelNo(int cancelNo) {
		this.cancelNo = cancelNo;
	}

	public String getCancelReason() {
		return cancelReason;
	}

	public void setCancelReason(String cancelReason) {
		this.cancelReason = cancelReason;
	}

	public int getRefundAmount() {
		return refundAmount;
	}

	public void setRefundAmount(int refundAmount) {
		this.refundAmount = refundAmount;
	}

	public java.sql.Date getRefundDate() {
		return refundDate;
	}

	public void setRefundDate(java.sql.Date refundDate) {
		this.refundDate = refundDate;
	}

	public String getCancelReasonDetail() {
		return cancelReasonDetail;
	}

	public void setCancelReasonDetail(String cancelReasonDetail) {
		this.cancelReasonDetail = cancelReasonDetail;
	}

	public int getPayNo() {
		return payNo;
	}

	public void setPayNo(int payNo) {
		this.payNo = payNo;
	}

	public String getRefundAccount() {
		return refundAccount;
	}

	public void setRefundAccount(String refundAccount) {
		this.refundAccount = refundAccount;
	}

	public String getAccountHolder() {
		return accountHolder;
	}

	public void setAccountHolder(String accountHolder) {
		this.accountHolder = accountHolder;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getRefundStatus() {
		return refundStatus;
	}

	public void setRefundStatus(String refundStatus) {
		this.refundStatus = refundStatus;
	}

	public java.sql.Date getRefundApplyDate() {
		return refundApplyDate;
	}

	public void setRefundApplyDate(java.sql.Date refundApplyDate) {
		this.refundApplyDate = refundApplyDate;
	}

	public int getMaxStep() {
		return maxStep;
	}

	public void setMaxStep(int maxStep) {
		this.maxStep = maxStep;
	}

	public int getScheduleCount() {
		return scheduleCount;
	}

	public void setScheduleCount(int scheduleCount) {
		this.scheduleCount = scheduleCount;
	}

	@Override
	public String toString() {
		return "UserRefundDTO [cancelNo=" + cancelNo + ", cancelReason=" + cancelReason + ", refundAmount="
				+ refundAmount + ", refundDate=" + refundDate + ", cancelReasonDetail=" + cancelReasonDetail
				+ ", payNo=" + payNo + ", refundAccount=" + refundAccount + ", accountHolder=" + accountHolder
				+ ", bank=" + bank + ", refundStatus=" + refundStatus + ", refundApplyDate=" + refundApplyDate
				+ ", maxStep=" + maxStep + ", scheduleCount=" + scheduleCount + "]";
	}



}
