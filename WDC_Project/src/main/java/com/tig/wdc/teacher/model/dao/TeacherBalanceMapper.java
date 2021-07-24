package com.tig.wdc.teacher.model.dao;

import java.util.List;
import java.util.Map;

import com.tig.wdc.model.dto.BalanceDTO;
import com.tig.wdc.model.dto.PageInfoDTO;

/**
 * 정산 정보 조회용 mapper
 * @author 강현우
 *
 */
public interface TeacherBalanceMapper {

	int selectBalanceCount();

	List<BalanceDTO> selectBalanceList(Map<String, Object> map);
	
}
