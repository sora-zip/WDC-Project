package com.tig.wdc.admin.model.dto;

import java.sql.Date;

public class StudentDTO {

	private int studentnNo;      		  // 회원 번호
	private String studentName;           // 회원이름
	private String type;        		  // 회원타입
	private String id;         		      // 회원 아이디
	private String phone;       		  // 회원 휴대폰 번호
	private java.sql.Date birth;        		  // 회원 생년 월일
	private java.sql.Date enrollDate;     // 가입일
	private int reportedCnt;              // 누적 신고일
	private String blockYn;
	
	public StudentDTO() {}
	
	public StudentDTO(int studentnNo, String studentName, String type, String id, String phone, Date birth,
			Date enrollDate, int reportedCnt, String blockYn) {
		super();
		this.studentnNo = studentnNo;
		this.studentName = studentName;
		this.type = type;
		this.id = id;
		this.phone = phone;
		this.birth = birth;
		this.enrollDate = enrollDate;
		this.reportedCnt = reportedCnt;
		this.blockYn = blockYn;
	}
	
	public int getStudentnNo() {
		return studentnNo;
	}
	public void setStudentnNo(int studentnNo) {
		this.studentnNo = studentnNo;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public java.sql.Date getBirth() {
		return birth;
	}
	public void setBirth(java.sql.Date birth) {
		this.birth = birth;
	}
	public java.sql.Date getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(java.sql.Date enrollDate) {
		this.enrollDate = enrollDate;
	}
	public int getReportedCnt() {
		return reportedCnt;
	}
	public void setReportedCnt(int reportedCnt) {
		this.reportedCnt = reportedCnt;
	}
	public String getBlockYn() {
		return blockYn;
	}
	public void setBlockYn(String blockYn) {
		this.blockYn = blockYn;
	}
	
	@Override
	public String toString() {
		return "StudentDTO [studentnNo=" + studentnNo + ", studentName=" + studentName + ", type=" + type + ", id=" + id
				+ ", phone=" + phone + ", birth=" + birth + ", enrollDate=" + enrollDate + ", reportedCnt="
				+ reportedCnt + ", blockYn=" + blockYn + "]";
	}
	
}
