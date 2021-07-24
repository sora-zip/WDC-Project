package com.tig.wdc.model.dto;

import java.sql.Date;

/**
 * 정규클래스 출석
 * @author 이해승
 *
 */
public class RegularClassAttendanceDTO {

    private int regManageNo;
    private Date classDate;
    private String attendanceUser;
    private String attendanceApply;
    private int classStep;
    private int scheduleNo;
    
	public RegularClassAttendanceDTO() {}

	public RegularClassAttendanceDTO(int regManageNo, Date classDate, String attendanceUser, String attendanceApply,
			int classStep, int scheduleNo) {
		super();
		this.regManageNo = regManageNo;
		this.classDate = classDate;
		this.attendanceUser = attendanceUser;
		this.attendanceApply = attendanceApply;
		this.classStep = classStep;
		this.scheduleNo = scheduleNo;
	}

	public int getRegManageNo() {
		return regManageNo;
	}

	public void setRegManageNo(int regManageNo) {
		this.regManageNo = regManageNo;
	}

	public Date getClassDate() {
		return classDate;
	}

	public void setClassDate(Date classDate) {
		this.classDate = classDate;
	}

	public String getAttendanceUser() {
		return attendanceUser;
	}

	public void setAttendanceUser(String attendanceUser) {
		this.attendanceUser = attendanceUser;
	}

	public String getAttendanceApply() {
		return attendanceApply;
	}

	public void setAttendanceApply(String attendanceApply) {
		this.attendanceApply = attendanceApply;
	}

	public int getClassStep() {
		return classStep;
	}

	public void setClassStep(int classStep) {
		this.classStep = classStep;
	}

	public int getScheduleNo() {
		return scheduleNo;
	}

	public void setScheduleNo(int scheduleNo) {
		this.scheduleNo = scheduleNo;
	}

	@Override
	public String toString() {
		return "RegularClassAttendanceDTO [regManageNo=" + regManageNo + ", classDate=" + classDate
				+ ", attendanceUser=" + attendanceUser + ", attendanceApply=" + attendanceApply + ", classStep="
				+ classStep + ", scheduleNo=" + scheduleNo + "]";
	}
}
