package com.tig.wdc.admin.model.dto;

public class AdminDTO {

	private int adminNo;
	private String AdminId;
	private String AdminPwd;
	
	public AdminDTO() {}
	
	public AdminDTO(int adminNo, String adminId, String adminPwd) {
		super();
		this.adminNo = adminNo;
		AdminId = adminId;
		AdminPwd = adminPwd;
	}
	
	public int getAdminNo() {
		return adminNo;
	}
	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}
	public String getAdminId() {
		return AdminId;
	}
	public void setAdminId(String adminId) {
		AdminId = adminId;
	}
	public String getAdminPwd() {
		return AdminPwd;
	}
	public void setAdminPwd(String adminPwd) {
		AdminPwd = adminPwd;
	}
	
	@Override
	public String toString() {
		return "AdminDTO [adminNo=" + adminNo + ", AdminId=" + AdminId + ", AdminPwd=" + AdminPwd + "]";
	}
}
