package com.tig.wdc.user.model.dto;

import java.sql.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import com.tig.wdc.model.dto.PageInfoDTO;

@Component
public class ClassDTO {

	private int clsNo;
	private String title;
	private String address;
	private String intro;
	private String cExpl;
	private String time;
	private Date startDate;
	private Date endDate;
	private int price;
	private String addInfo;
	private String addSup;
	private String dicsionStatus;
	private String clsType;
	private Date dateAplct;
	private String status;
	private int teNo;
	private int categoryNo;
	private String simpleIntro;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private java.util.Date startDay; // 매개변수 받기 위한 필드
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private java.util.Date endDay; // 매개변수 받기 위한 필드
	PageInfoDTO pageInfo;
	private ScheduleDTO schedule;
	private int userNo;

	public ClassDTO() {
	}

	public ClassDTO(int clsNo, String title, String address, String intro, String cExpl, String time, Date startDate,
			Date endDate, int price, String addInfo, String addSup, String dicsionStatus, String clsType,
			Date dateAplct, String status, int teNo, int categoryNo, String simpleIntro, java.util.Date startDay,
			java.util.Date endDay, PageInfoDTO pageInfo, ScheduleDTO schedule, int userNo) {
		super();
		this.clsNo = clsNo;
		this.title = title;
		this.address = address;
		this.intro = intro;
		this.cExpl = cExpl;
		this.time = time;
		this.startDate = startDate;
		this.endDate = endDate;
		this.price = price;
		this.addInfo = addInfo;
		this.addSup = addSup;
		this.dicsionStatus = dicsionStatus;
		this.clsType = clsType;
		this.dateAplct = dateAplct;
		this.status = status;
		this.teNo = teNo;
		this.categoryNo = categoryNo;
		this.simpleIntro = simpleIntro;
		this.startDay = startDay;
		this.endDay = endDay;
		this.pageInfo = pageInfo;
		this.schedule = schedule;
		this.userNo = userNo;
	}

	public int getClsNo() {
		return clsNo;
	}

	public void setClsNo(int clsNo) {
		this.clsNo = clsNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getcExpl() {
		return cExpl;
	}

	public void setcExpl(String cExpl) {
		this.cExpl = cExpl;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getAddInfo() {
		return addInfo;
	}

	public void setAddInfo(String addInfo) {
		this.addInfo = addInfo;
	}

	public String getAddSup() {
		return addSup;
	}

	public void setAddSup(String addSup) {
		this.addSup = addSup;
	}

	public String getDicsionStatus() {
		return dicsionStatus;
	}

	public void setDicsionStatus(String dicsionStatus) {
		this.dicsionStatus = dicsionStatus;
	}

	public String getClsType() {
		return clsType;
	}

	public void setClsType(String clsType) {
		this.clsType = clsType;
	}

	public Date getDateAplct() {
		return dateAplct;
	}

	public void setDateAplct(Date dateAplct) {
		this.dateAplct = dateAplct;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getTeNo() {
		return teNo;
	}

	public void setTeNo(int teNo) {
		this.teNo = teNo;
	}

	public int getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}

	public String getSimpleIntro() {
		return simpleIntro;
	}

	public void setSimpleIntro(String simpleIntro) {
		this.simpleIntro = simpleIntro;
	}

	public java.util.Date getStartDay() {
		return startDay;
	}

	public void setStartDay(java.util.Date startDay) {
		this.startDay = startDay;
	}

	public java.util.Date getEndDay() {
		return endDay;
	}

	public void setEndDay(java.util.Date endDay) {
		this.endDay = endDay;
	}

	public PageInfoDTO getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PageInfoDTO pageInfo) {
		this.pageInfo = pageInfo;
	}

	public ScheduleDTO getSchedule() {
		return schedule;
	}

	public void setSchedule(ScheduleDTO schedule) {
		this.schedule = schedule;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "ClassDTO [clsNo=" + clsNo + ", title=" + title + ", address=" + address + ", intro=" + intro
				+ ", cExpl=" + cExpl + ", time=" + time + ", startDate=" + startDate + ", endDate=" + endDate
				+ ", price=" + price + ", addInfo=" + addInfo + ", addSup=" + addSup + ", dicsionStatus="
				+ dicsionStatus + ", clsType=" + clsType + ", dateAplct=" + dateAplct + ", status=" + status + ", teNo="
				+ teNo + ", categoryNo=" + categoryNo + ", simpleIntro=" + simpleIntro + ", startDay=" + startDay
				+ ", endDay=" + endDay + ", pageInfo=" + pageInfo + ", schedule=" + schedule + ", userNo=" + userNo
				+ "]";
	}

}
