package com.tig.wdc.common;

import com.tig.wdc.model.dto.PageInfoDTO;

public class PageNation {

	public static PageInfoDTO getPageInfo(int pageNo, int totalCount, int limit, int buttonAmount) {
		
		int maxPage;		
		int startPage;		
		int endPage;		
		int startRow;
		int endRow;
		
		maxPage = (int)Math.ceil((double)totalCount/limit);
		
		startPage = (int)(Math.ceil((double) pageNo / buttonAmount) -1) * buttonAmount + 1;
		
		endPage = startPage + buttonAmount - 1;
		
		if(maxPage < endPage){
			endPage = maxPage;
		}
		
		if(maxPage == 0 && endPage ==0) {
			maxPage = startPage;
			endPage = startPage;
		}
		
		startRow = (pageNo - 1) * limit + 1; // 4page 3 * 10 + 1
		endRow = startRow + limit -1;
		 
		PageInfoDTO pageInfo = new PageInfoDTO(pageNo,totalCount,limit,buttonAmount,maxPage,startPage,endPage,startRow,endRow,0);
		return pageInfo;
	}
}
