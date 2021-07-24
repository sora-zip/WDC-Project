package com.tig.wdc.teacher.model.service;

import java.util.List;
import java.util.Map;

import com.tig.wdc.model.dto.BalanceDTO;
import com.tig.wdc.model.dto.PageInfoDTO;

/**
 * 정산내역 관리용 서비스
 * @author 강현우
 */
public interface BalanceService {

	/**
	 * 정산내역 숫자 조회용
	 * @return 전체 정산내역 숫자
	 */
	public int selectBalanceCount();
	
	/**
	 * 정산내역 페이징 처리 후 조회
	 * @param pageInfo
	 * @return 페이징 처리 후 보여줄 정산내역
	 */
	public List<BalanceDTO> selectBalanceList(Map<String, Object> map);
	
	
}
