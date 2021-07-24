package com.tig.wdc.user.model.dto;

import java.sql.Date;

public class PaymentDTO {
	
	private int payNo;
	private int payPrice;
	private String payMethod;
	private java.sql.Date payDate;
	private int cpnNo;
	private String payStatus;
	private int clsAplNo;
	
	public PaymentDTO() {}

	public PaymentDTO(int payNo, int payPrice, String payMethod, Date payDate, int cpnNo, String payStatus,
			int clsAplNo) {
		super();
		this.payNo = payNo;
		this.payPrice = payPrice;
		this.payMethod = payMethod;
		this.payDate = payDate;
		this.cpnNo = cpnNo;
		this.payStatus = payStatus;
		this.clsAplNo = clsAplNo;
	}

	public int getPayNo() {
		return payNo;
	}

	public void setPayNo(int payNo) {
		this.payNo = payNo;
	}

	public int getPayPrice() {
		return payPrice;
	}

	public void setPayPrice(int payPrice) {
		this.payPrice = payPrice;
	}

	public String getPayMethod() {
		return payMethod;
	}

	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}

	public java.sql.Date getPayDate() {
		return payDate;
	}

	public void setPayDate(java.sql.Date payDate) {
		this.payDate = payDate;
	}

	public int getCpnNo() {
		return cpnNo;
	}

	public void setCpnNo(int cpnNo) {
		this.cpnNo = cpnNo;
	}

	public String getPayStatus() {
		return payStatus;
	}

	public void setPayStatus(String payStatus) {
		this.payStatus = payStatus;
	}

	public int getClsAplNo() {
		return clsAplNo;
	}

	public void setClsAplNo(int clsAplNo) {
		this.clsAplNo = clsAplNo;
	}

	@Override
	public String toString() {
		return "PaymentDTO [payNo=" + payNo + ", payPrice=" + payPrice + ", payMethod=" + payMethod + ", payDate="
				+ payDate + ", cpnNo=" + cpnNo + ", payStatus=" + payStatus + ", clsAplNo=" + clsAplNo + "]";
	}
	

	
	
}
