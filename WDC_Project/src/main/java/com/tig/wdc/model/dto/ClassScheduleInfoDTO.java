package com.tig.wdc.model.dto;

import java.sql.Date;

import org.springframework.stereotype.Component;

/**
 * @author 이해승
 * 클래스 스케쥴 필요 정보조회용
 */
@Component
public class ClassScheduleInfoDTO {

	private int scheduleNo;
	private int maxPeople;
	private int scheduleCount;
	private int applyCount;
	private Date start;
	private Date end;
	private String classTitle;
	private int nowCount;
	private String startTime;
	
	private PageInfoDTO pageInfo;

	public ClassScheduleInfoDTO() {}

	public ClassScheduleInfoDTO(int scheduleNo, int maxPeople, int scheduleCount, int applyCount, Date start, Date end,
			String classTitle, int nowCount, String startTime, PageInfoDTO pageInfo) {
		super();
		this.scheduleNo = scheduleNo;
		this.maxPeople = maxPeople;
		this.scheduleCount = scheduleCount;
		this.applyCount = applyCount;
		this.start = start;
		this.end = end;
		this.classTitle = classTitle;
		this.nowCount = nowCount;
		this.startTime = startTime;
		this.pageInfo = pageInfo;
	}

	public int getScheduleNo() {
		return scheduleNo;
	}

	public void setScheduleNo(int scheduleNo) {
		this.scheduleNo = scheduleNo;
	}

	public int getMaxPeople() {
		return maxPeople;
	}

	public void setMaxPeople(int maxPeople) {
		this.maxPeople = maxPeople;
	}

	public int getScheduleCount() {
		return scheduleCount;
	}

	public void setScheduleCount(int scheduleCount) {
		this.scheduleCount = scheduleCount;
	}

	public int getApplyCount() {
		return applyCount;
	}

	public void setApplyCount(int applyCount) {
		this.applyCount = applyCount;
	}

	public Date getStart() {
		return start;
	}

	public void setStart(Date start) {
		this.start = start;
	}

	public Date getEnd() {
		return end;
	}

	public void setEnd(Date end) {
		this.end = end;
	}

	public String getClassTitle() {
		return classTitle;
	}

	public void setClassTitle(String classTitle) {
		this.classTitle = classTitle;
	}

	public int getNowCount() {
		return nowCount;
	}

	public void setNowCount(int nowCount) {
		this.nowCount = nowCount;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public PageInfoDTO getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PageInfoDTO pageInfo) {
		this.pageInfo = pageInfo;
	}

	@Override
	public String toString() {
		return "ClassScheduleInfoDTO [scheduleNo=" + scheduleNo + ", maxPeople=" + maxPeople + ", scheduleCount="
				+ scheduleCount + ", applyCount=" + applyCount + ", start=" + start + ", end=" + end + ", classTitle="
				+ classTitle + ", nowCount=" + nowCount + ", startTime=" + startTime + ", pageInfo=" + pageInfo + "]";
	}
}
