package com.tig.wdc.admin.model.dto;

import java.sql.Date;

public class TeacherDTO {

	private int teNo;      		          // 회원 번호
	private String usertype;       		  // 회원타입
	private String teacherType;           // 강사타입
	private String name;                  // 강사이름
	private String id;         		      // 회원 아이디
	private String phone;       		  // 회원 휴대폰 번호
	private java.sql.Date enrollDate;     // 가입일
	private int reportedCnt;              // 누적 신고일
	private String imgPath;               // 이미지 경로
	private String teacherIntro;          // 강사 소개
	private String blockYn;
	
	public TeacherDTO() {}
	
	public TeacherDTO(int teNo, String usertype, String teacherType, String name, String id, String phone,
			Date enrollDate, int reportedCnt, String imgPath, String teacherIntro, String blockYn) {
		super();
		this.teNo = teNo;
		this.usertype = usertype;
		this.teacherType = teacherType;
		this.name = name;
		this.id = id;
		this.phone = phone;
		this.enrollDate = enrollDate;
		this.reportedCnt = reportedCnt;
		this.imgPath = imgPath;
		this.teacherIntro = teacherIntro;
		this.blockYn = blockYn;
	}
	
	public int getTeNo() {
		return teNo;
	}
	public void setTeNo(int teNo) {
		this.teNo = teNo;
	}
	public String getUsertype() {
		return usertype;
	}
	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}
	public String getTeacherType() {
		return teacherType;
	}
	public void setTeacherType(String teacherType) {
		this.teacherType = teacherType;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	public String getTeacherIntro() {
		return teacherIntro;
	}
	public void setTeacherIntro(String teacherIntro) {
		this.teacherIntro = teacherIntro;
	}
	public String getBlockYn() {
		return blockYn;
	}
	public void setBlockYn(String blockYn) {
		this.blockYn = blockYn;
	}
	
	@Override
	public String toString() {
		return "TeacherDTO [teNo=" + teNo + ", usertype=" + usertype + ", teacherType=" + teacherType + ", name=" + name
				+ ", id=" + id + ", phone=" + phone + ", enrollDate=" + enrollDate + ", reportedCnt=" + reportedCnt
				+ ", imgPath=" + imgPath + ", teacherIntro=" + teacherIntro + ", blockYn=" + blockYn + "]";
	}
}
