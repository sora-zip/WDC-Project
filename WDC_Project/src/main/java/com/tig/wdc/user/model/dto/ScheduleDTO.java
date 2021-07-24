package com.tig.wdc.user.model.dto;

import java.sql.Date;

import org.springframework.stereotype.Component;

/**
 * @author SORA 
 * 클래스 스케쥴 DTO
 */
@Component
public class ScheduleDTO {

	private int scheduleNo;
	private String scheduleType;
	private Date scheduleDate;
	private String scheduleStart;
	private int minPeople;
	private int maxPeople;
	private int clsNo;
	private int scheduleCount;
	private int peopleCount;

	private String inputDate;
	private String inputMin;
	private String inputMax;
	private String scheduleClsType;

	private String stringScheduleDate; // 페이먼트용

	public ScheduleDTO() {
	}

	public ScheduleDTO(int scheduleNo, String scheduleType, Date scheduleDate, String scheduleStart, int minPeople,
			int maxPeople, int clsNo, int scheduleCount, int peopleCount, String inputDate, String inputMin,
			String inputMax, String scheduleClsType, String stringScheduleDate) {
		super();
		this.scheduleNo = scheduleNo;
		this.scheduleType = scheduleType;
		this.scheduleDate = scheduleDate;
		this.scheduleStart = scheduleStart;
		this.minPeople = minPeople;
		this.maxPeople = maxPeople;
		this.clsNo = clsNo;
		this.scheduleCount = scheduleCount;
		this.peopleCount = peopleCount;
		this.inputDate = inputDate;
		this.inputMin = inputMin;
		this.inputMax = inputMax;
		this.scheduleClsType = scheduleClsType;
		this.stringScheduleDate = stringScheduleDate;
	}

	public int getScheduleNo() {
		return scheduleNo;
	}

	public void setScheduleNo(int scheduleNo) {
		this.scheduleNo = scheduleNo;
	}

	public String getScheduleType() {
		return scheduleType;
	}

	public void setScheduleType(String scheduleType) {
		this.scheduleType = scheduleType;
	}

	public Date getScheduleDate() {
		return scheduleDate;
	}

	public void setScheduleDate(Date scheduleDate) {
		this.scheduleDate = scheduleDate;
	}

	public String getScheduleStart() {
		return scheduleStart;
	}

	public void setScheduleStart(String scheduleStart) {
		this.scheduleStart = scheduleStart;
	}

	public int getMinPeople() {
		return minPeople;
	}

	public void setMinPeople(int minPeople) {
		this.minPeople = minPeople;
	}

	public int getMaxPeople() {
		return maxPeople;
	}

	public void setMaxPeople(int maxPeople) {
		this.maxPeople = maxPeople;
	}

	public int getClsNo() {
		return clsNo;
	}

	public void setClsNo(int clsNo) {
		this.clsNo = clsNo;
	}

	public int getScheduleCount() {
		return scheduleCount;
	}

	public void setScheduleCount(int scheduleCount) {
		this.scheduleCount = scheduleCount;
	}

	public int getPeopleCount() {
		return peopleCount;
	}

	public void setPeopleCount(int peopleCount) {
		this.peopleCount = peopleCount;
	}

	public String getInputDate() {
		return inputDate;
	}

	public void setInputDate(String inputDate) {
		this.inputDate = inputDate;
	}

	public String getInputMin() {
		return inputMin;
	}

	public void setInputMin(String inputMin) {
		this.inputMin = inputMin;
	}

	public String getInputMax() {
		return inputMax;
	}

	public void setInputMax(String inputMax) {
		this.inputMax = inputMax;
	}

	public String getScheduleClsType() {
		return scheduleClsType;
	}

	public void setScheduleClsType(String scheduleClsType) {
		this.scheduleClsType = scheduleClsType;
	}

	public String getStringScheduleDate() {
		return stringScheduleDate;
	}

	public void setStringScheduleDate(String stringScheduleDate) {
		this.stringScheduleDate = stringScheduleDate;
	}

	@Override
	public String toString() {
		return "ScheduleDTO [scheduleNo=" + scheduleNo + ", scheduleType=" + scheduleType + ", scheduleDate="
				+ scheduleDate + ", scheduleStart=" + scheduleStart + ", minPeople=" + minPeople + ", maxPeople="
				+ maxPeople + ", clsNo=" + clsNo + ", scheduleCount=" + scheduleCount + ", peopleCount=" + peopleCount
				+ ", inputDate=" + inputDate + ", inputMin=" + inputMin + ", inputMax=" + inputMax
				+ ", scheduleClsType=" + scheduleClsType + ", stringScheduleDate=" + stringScheduleDate + "]";
	}


}
