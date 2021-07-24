package com.tig.wdc.admin.model.dto;

import java.sql.Date;

public class RefundDTO {

	private int cancelNo;
	private String cancelReason;
	private int refundAmount;
	private String toCharRefundAmount;
	private int totalAmount;
	private java.sql.Date refundDate;
	private String cancelReasonDetail;
	private int payNo;
	private String refundAccount;
	private String refundHolder;
	private String refundBank;
	private String refundStatus;
	private java.sql.Date refundApplyDate;
	private String classType;
	private String className;
	private int classNo;
	private String id;
	
	public RefundDTO() {
		super();
	}

	public RefundDTO(int cancelNo, String cancelReason, int refundAmount, String toCharRefundAmount, int totalAmount,
			Date refundDate, String cancelReasonDetail, int payNo, String refundAccount, String refundHolder,
			String refundBank, String refundStatus, Date refundApplyDate, String classType, String className,
			int classNo, String id) {
		super();
		this.cancelNo = cancelNo;
		this.cancelReason = cancelReason;
		this.refundAmount = refundAmount;
		this.toCharRefundAmount = toCharRefundAmount;
		this.totalAmount = totalAmount;
		this.refundDate = refundDate;
		this.cancelReasonDetail = cancelReasonDetail;
		this.payNo = payNo;
		this.refundAccount = refundAccount;
		this.refundHolder = refundHolder;
		this.refundBank = refundBank;
		this.refundStatus = refundStatus;
		this.refundApplyDate = refundApplyDate;
		this.classType = classType;
		this.className = className;
		this.classNo = classNo;
		this.id = id;
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

	public String getToCharRefundAmount() {
		return toCharRefundAmount;
	}

	public void setToCharRefundAmount(String toCharRefundAmount) {
		this.toCharRefundAmount = toCharRefundAmount;
	}

	public int getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
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

	public String getRefundHolder() {
		return refundHolder;
	}

	public void setRefundHolder(String refundHolder) {
		this.refundHolder = refundHolder;
	}

	public String getRefundBank() {
		return refundBank;
	}

	public void setRefundBank(String refundBank) {
		this.refundBank = refundBank;
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

	public String getClassType() {
		return classType;
	}

	public void setClassType(String classType) {
		this.classType = classType;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public int getClassNo() {
		return classNo;
	}

	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "RefundDTO [cancelNo=" + cancelNo + ", cancelReason=" + cancelReason + ", refundAmount=" + refundAmount
				+ ", toCharRefundAmount=" + toCharRefundAmount + ", totalAmount=" + totalAmount + ", refundDate="
				+ refundDate + ", cancelReasonDetail=" + cancelReasonDetail + ", payNo=" + payNo + ", refundAccount="
				+ refundAccount + ", refundHolder=" + refundHolder + ", refundBank=" + refundBank + ", refundStatus="
				+ refundStatus + ", refundApplyDate=" + refundApplyDate + ", classType=" + classType + ", className="
				+ className + ", classNo=" + classNo + ", id=" + id + "]";
	}

}
