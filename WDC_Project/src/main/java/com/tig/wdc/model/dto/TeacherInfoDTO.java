package com.tig.wdc.model.dto;

import java.util.List;

/**
 * @author 이해승
 * 강사정보 DTO
 */
public class TeacherInfoDTO {

	private int teacherNo;				//강사번호
	private String teacherId;			//강사아이디
	private String teacherPwd;			//강사비밀번호
	private String teacherType;			//사업자or 프리랜서
	private String teacherIdNo;			//주민번호or사업자번호
	private String teacherName;			//이름
	private String teacherPhone;		//전화번호
	private String teacherAccountNo;	//계좌번호
	private String teacherAccountName;	//예금주명
	private String teacherAccountBANK;	//은행
	private String teacherIntro;		//강사소개
	private String teacherQuitStatus;	//탈퇴여부
	private String teacherBlockStatus;	//블랙리스트여부
	private String teacherPicture;		//강사사진
	
	public TeacherInfoDTO() {}
		
	public TeacherInfoDTO(int teacherNo, String teacherId, String teacherPwd, String teacherType, String teacherIdNo,
			String teacherName, String teacherPhone, String teacherAccountNo, String teacherAccountName,
			String teacherAccountBANK, String teacherIntro, String teacherQuitStatus, String teacherBlockStatus,
			String teacherPicture) {
		super();
		this.teacherNo = teacherNo;
		this.teacherId = teacherId;
		this.teacherPwd = teacherPwd;
		this.teacherType = teacherType;
		this.teacherIdNo = teacherIdNo;
		this.teacherName = teacherName;
		this.teacherPhone = teacherPhone;
		this.teacherAccountNo = teacherAccountNo;
		this.teacherAccountName = teacherAccountName;
		this.teacherAccountBANK = teacherAccountBANK;
		this.teacherIntro = teacherIntro;
		this.teacherQuitStatus = teacherQuitStatus;
		this.teacherBlockStatus = teacherBlockStatus;
		this.teacherPicture = teacherPicture;
	}
	
	public int getTeacherNo() {
		return teacherNo;
	}

	public void setTeacherNo(int teacherNo) {
		this.teacherNo = teacherNo;
	}

	public String getTeacherId() {
		return teacherId;
	}

	public void setTeacherId(String teacherId) {
		this.teacherId = teacherId;
	}

	public String getTeacherPwd() {
		return teacherPwd;
	}

	public void setTeacherPwd(String teacherPwd) {
		this.teacherPwd = teacherPwd;
	}

	public String getTeacherType() {
		return teacherType;
	}

	public void setTeacherType(String teacherType) {
		this.teacherType = teacherType;
	}

	public String getTeacherIdNo() {
		return teacherIdNo;
	}

	public void setTeacherIdNo(String teacherIdNo) {
		this.teacherIdNo = teacherIdNo;
	}

	public String getTeacherName() {
		return teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}

	public String getTeacherPhone() {
		return teacherPhone;
	}

	public void setTeacherPhone(String teacherPhone) {
		this.teacherPhone = teacherPhone;
	}

	public String getTeacherAccountNo() {
		return teacherAccountNo;
	}

	public void setTeacherAccountNo(String teacherAccountNo) {
		this.teacherAccountNo = teacherAccountNo;
	}

	public String getTeacherAccountName() {
		return teacherAccountName;
	}

	public void setTeacherAccountName(String teacherAccountName) {
		this.teacherAccountName = teacherAccountName;
	}

	public String getTeacherAccountBANK() {
		return teacherAccountBANK;
	}

	public void setTeacherAccountBANK(String teacherAccountBANK) {
		this.teacherAccountBANK = teacherAccountBANK;
	}

	public String getTeacherIntro() {
		return teacherIntro;
	}

	public void setTeacherIntro(String teacherIntro) {
		this.teacherIntro = teacherIntro;
	}

	public String getTeacherQuitStatus() {
		return teacherQuitStatus;
	}

	public void setTeacherQuitStatus(String teacherQuitStatus) {
		this.teacherQuitStatus = teacherQuitStatus;
	}

	public String getTeacherBlockStatus() {
		return teacherBlockStatus;
	}

	public void setTeacherBlockStatus(String teacherBlockStatus) {
		this.teacherBlockStatus = teacherBlockStatus;
	}

	public String getTeacherPicture() {
		return teacherPicture;
	}

	public void setTeacherPicture(String teacherPicture) {
		this.teacherPicture = teacherPicture;
	}

	@Override
	public String toString() {
		return "TeacherInfoDTO [teacherNo=" + teacherNo + ", teacherId=" + teacherId + ", teacherPwd=" + teacherPwd
				+ ", teacherType=" + teacherType + ", teacherIdNo=" + teacherIdNo + ", teacherName=" + teacherName
				+ ", teacherPhone=" + teacherPhone + ", teacherAccountNo=" + teacherAccountNo + ", teacherAccountName="
				+ teacherAccountName + ", teacherAccountBANK=" + teacherAccountBANK + ", teacherIntro=" + teacherIntro
				+ ", teacherQuitStatus=" + teacherQuitStatus + ", teacherBlockStatus=" + teacherBlockStatus
				+ ", teacherPicture=" + teacherPicture + "]";
	}
}
