package com.tig.wdc.admin.model.dto;

public class ClsDecisionDTO {
	
	private int clsNo;
	private String status;
	private String rejectReason;
	public ClsDecisionDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ClsDecisionDTO(int clsNo, String status, String rejectReason) {
		super();
		this.clsNo = clsNo;
		this.status = status;
		this.rejectReason = rejectReason;
	}
	public int getClsNo() {
		return clsNo;
	}
	public void setClsNo(int clsNo) {
		this.clsNo = clsNo;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getRejectReason() {
		return rejectReason;
	}
	public void setRejectReason(String rejectReason) {
		this.rejectReason = rejectReason;
	}
	@Override
	public String toString() {
		return "ClsDecisionDTO [clsNo=" + clsNo + ", status=" + status + ", rejectReason=" + rejectReason + "]";
	}
	
	
}
