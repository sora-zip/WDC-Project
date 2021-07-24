package com.tig.wdc.model.dto;

import org.springframework.stereotype.Component;

@Component
public class PageInfoDTO {

	private int pageNo; 		// 요청한 페이지번호
	private int totalCount; 	// 전체 게시물 수
	private int limit; 			// 한페이지에 보여줄 게시물 수
	private int buttonAmount; 	// 한 번에 보여줄 페이징 버튼의 갯수
	private int maxPage; 		// 가장 마지막페이지
	private int startPage;		// 한번에 보여줄 페이징 버튼의 시작하는 페이징 수 (시작버튼숫자!)
	private int endPage; 		// 한번에 보여줄 페이징 버튼의 마지막 페이지 수 (마지막버튼숫자!)
	private int startRow; 		// DB조회 시 최신 글 부터 조회해야하는 행의 시작 수
	private int endRow; 		// DB 조회 시 최신글부터 조회해햐 하는 행의 마지막 수
	private int userNo; 		// 유저 넘버 넘겨줄 때 사용

	public PageInfoDTO() {
	}

	public PageInfoDTO(int pageNo, int totalCount, int limit, int buttonAmount, int maxPage, int startPage, int endPage,
			int startRow, int endRow, int userNo) {
		super();
		this.pageNo = pageNo;
		this.totalCount = totalCount;
		this.limit = limit;
		this.buttonAmount = buttonAmount;
		this.maxPage = maxPage;
		this.startPage = startPage;
		this.endPage = endPage;
		this.startRow = startRow;
		this.endRow = endRow;
		this.userNo = userNo;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public int getButtonAmount() {
		return buttonAmount;
	}

	public void setButtonAmount(int buttonAmount) {
		this.buttonAmount = buttonAmount;
	}

	public int getMaxPage() {
		return maxPage;
	}

	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getStartRow() {
		return startRow;
	}

	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "PageInfoDTO [pageNo=" + pageNo + ", totalCount=" + totalCount + ", limit=" + limit + ", buttonAmount="
				+ buttonAmount + ", maxPage=" + maxPage + ", startPage=" + startPage + ", endPage=" + endPage
				+ ", startRow=" + startRow + ", endRow=" + endRow + ", userNo=" + userNo + "]";
	}

}
