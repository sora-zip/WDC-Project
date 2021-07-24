package com.tig.wdc.user.model.dto;

import java.sql.Date;

/**
 * @author SORA 클래스 정보 DTO
 */
public class UserClassDTO {

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
	private String titlePic;
	private double avgScore;

	// 연준 추가
	private String dDay; // 시작시간-현재시간 일자
	private Date scheduleDate; // 스케줄 시작 날짜
	private String scheduleStart; // 스케줄 시작 시간
	private int clsPplAmount; // 강의 신청 인원
	private int payPrice;
	private int aplNo;
	private String teName;
	private java.sql.Date clsAplDate;
	private int ppl;
	private String payStatus;
	private int refundAmount;
	private String refundStatus;
	private int payNo;
	private int scheduleNo;

	// 검색용
	private String searchContent;
	private int minPrice;
	private int maxPrice;
	private String searchCheckBox;

	private String titlePic1; // 페이먼트 용
	private int userNo; // 페이먼트 용

	private String likeStatus; // 찜 상태 조회

	public UserClassDTO() {
	}

	public UserClassDTO(int clsNo, String title, String address, String intro, String cExpl, String time,
			Date startDate, Date endDate, int price, String addInfo, String addSup, String dicsionStatus,
			String clsType, Date dateAplct, String status, int teNo, int categoryNo, String simpleIntro,
			String titlePic, double avgScore, String dDay, Date scheduleDate, String scheduleStart, int clsPplAmount,
			int payPrice, int aplNo, String teName, Date clsAplDate, int ppl, String payStatus, int refundAmount,
			String refundStatus, int payNo, int scheduleNo, String searchContent, int minPrice, int maxPrice,
			String searchCheckBox, String titlePic1, int userNo, String likeStatus) {
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
		this.titlePic = titlePic;
		this.avgScore = avgScore;
		this.dDay = dDay;
		this.scheduleDate = scheduleDate;
		this.scheduleStart = scheduleStart;
		this.clsPplAmount = clsPplAmount;
		this.payPrice = payPrice;
		this.aplNo = aplNo;
		this.teName = teName;
		this.clsAplDate = clsAplDate;
		this.ppl = ppl;
		this.payStatus = payStatus;
		this.refundAmount = refundAmount;
		this.refundStatus = refundStatus;
		this.payNo = payNo;
		this.scheduleNo = scheduleNo;
		this.searchContent = searchContent;
		this.minPrice = minPrice;
		this.maxPrice = maxPrice;
		this.searchCheckBox = searchCheckBox;
		this.titlePic1 = titlePic1;
		this.userNo = userNo;
		this.likeStatus = likeStatus;
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

	public String getTitlePic() {
		return titlePic;
	}

	public void setTitlePic(String titlePic) {
		this.titlePic = titlePic;
	}

	public double getAvgScore() {
		return avgScore;
	}

	public void setAvgScore(double avgScore) {
		this.avgScore = avgScore;
	}

	public String getdDay() {
		return dDay;
	}

	public void setdDay(String dDay) {
		this.dDay = dDay;
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

	public int getClsPplAmount() {
		return clsPplAmount;
	}

	public void setClsPplAmount(int clsPplAmount) {
		this.clsPplAmount = clsPplAmount;
	}

	public int getPayPrice() {
		return payPrice;
	}

	public void setPayPrice(int payPrice) {
		this.payPrice = payPrice;
	}

	public int getAplNo() {
		return aplNo;
	}

	public void setAplNo(int aplNo) {
		this.aplNo = aplNo;
	}

	public String getTeName() {
		return teName;
	}

	public void setTeName(String teName) {
		this.teName = teName;
	}

	public java.sql.Date getClsAplDate() {
		return clsAplDate;
	}

	public void setClsAplDate(java.sql.Date clsAplDate) {
		this.clsAplDate = clsAplDate;
	}

	public int getPpl() {
		return ppl;
	}

	public void setPpl(int ppl) {
		this.ppl = ppl;
	}

	public String getPayStatus() {
		return payStatus;
	}

	public void setPayStatus(String payStatus) {
		this.payStatus = payStatus;
	}

	public int getRefundAmount() {
		return refundAmount;
	}

	public void setRefundAmount(int refundAmount) {
		this.refundAmount = refundAmount;
	}

	public String getRefundStatus() {
		return refundStatus;
	}

	public void setRefundStatus(String refundStatus) {
		this.refundStatus = refundStatus;
	}

	public int getPayNo() {
		return payNo;
	}

	public void setPayNo(int payNo) {
		this.payNo = payNo;
	}

	public int getScheduleNo() {
		return scheduleNo;
	}

	public void setScheduleNo(int scheduleNo) {
		this.scheduleNo = scheduleNo;
	}

	public String getSearchContent() {
		return searchContent;
	}

	public void setSearchContent(String searchContent) {
		this.searchContent = searchContent;
	}

	public int getMinPrice() {
		return minPrice;
	}

	public void setMinPrice(int minPrice) {
		this.minPrice = minPrice;
	}

	public int getMaxPrice() {
		return maxPrice;
	}

	public void setMaxPrice(int maxPrice) {
		this.maxPrice = maxPrice;
	}

	public String getSearchCheckBox() {
		return searchCheckBox;
	}

	public void setSearchCheckBox(String searchCheckBox) {
		this.searchCheckBox = searchCheckBox;
	}

	public String getTitlePic1() {
		return titlePic1;
	}

	public void setTitlePic1(String titlePic1) {
		this.titlePic1 = titlePic1;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getLikeStatus() {
		return likeStatus;
	}

	public void setLikeStatus(String likeStatus) {
		this.likeStatus = likeStatus;
	}

	@Override
	public String toString() {
		return "UserClassDTO [clsNo=" + clsNo + ", title=" + title + ", address=" + address + ", intro=" + intro
				+ ", cExpl=" + cExpl + ", time=" + time + ", startDate=" + startDate + ", endDate=" + endDate
				+ ", price=" + price + ", addInfo=" + addInfo + ", addSup=" + addSup + ", dicsionStatus="
				+ dicsionStatus + ", clsType=" + clsType + ", dateAplct=" + dateAplct + ", status=" + status + ", teNo="
				+ teNo + ", categoryNo=" + categoryNo + ", simpleIntro=" + simpleIntro + ", titlePic=" + titlePic
				+ ", avgScore=" + avgScore + ", dDay=" + dDay + ", scheduleDate=" + scheduleDate + ", scheduleStart="
				+ scheduleStart + ", clsPplAmount=" + clsPplAmount + ", payPrice=" + payPrice + ", aplNo=" + aplNo
				+ ", teName=" + teName + ", clsAplDate=" + clsAplDate + ", ppl=" + ppl + ", payStatus=" + payStatus
				+ ", refundAmount=" + refundAmount + ", refundStatus=" + refundStatus + ", payNo=" + payNo
				+ ", scheduleNo=" + scheduleNo + ", searchContent=" + searchContent + ", minPrice=" + minPrice
				+ ", maxPrice=" + maxPrice + ", searchCheckBox=" + searchCheckBox + ", titlePic1=" + titlePic1
				+ ", userNo=" + userNo + ", likeStatus=" + likeStatus + "]";
	}

}