package com.tig.wdc.teacher.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tig.wdc.model.dto.BalanceDTO;
import com.tig.wdc.teacher.model.dao.TeacherBalanceMapper;

@Service
public class BalanceServiceImpl implements BalanceService {

	
	private TeacherBalanceMapper mapper;
	
	
	@Autowired
	public BalanceServiceImpl(TeacherBalanceMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public int selectBalanceCount() {
		
		return mapper.selectBalanceCount();
	}

	@Override
	public List<BalanceDTO> selectBalanceList(Map<String, Object> map) {

		return mapper.selectBalanceList(map);
	}

}
