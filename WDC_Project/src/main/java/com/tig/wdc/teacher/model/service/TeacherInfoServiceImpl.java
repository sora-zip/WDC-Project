package com.tig.wdc.teacher.model.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.tig.wdc.model.dto.TeacherInfoDTO;
import com.tig.wdc.teacher.model.dao.TeacherInfoMapper;

/**
 * @author 이해승
 * 
 */
@Service
public class TeacherInfoServiceImpl implements TeacherInfoService {

	private TeacherInfoMapper mapper;
	
	@Autowired
	public TeacherInfoServiceImpl(TeacherInfoMapper mapper, BCryptPasswordEncoder passwordEncoder) {
		super();
		this.mapper = mapper;
	}

	@Override
	public TeacherInfoDTO findteacherInfo(TeacherInfoDTO loginInfo) {
		
		return mapper.findTeacherInfo(loginInfo);
	}

	@Override
	public int selectRegisteredClassCount(int teacherNo) {
		
		return mapper.selectRegisteredClassCount(teacherNo);
	}

	@Override
	public String selectSumClassCalculate(int teacherNo) {
		return mapper.selectSumClassCalculate(teacherNo);
	}

	@Override
	public TeacherInfoDTO selectTeacherInfo(int teacherNo) {
		return mapper.searchTeacherInfo(teacherNo);
	}

	@Override
	public int updateTeacherProfile(TeacherInfoDTO profileInfo) {
		return mapper.updateTeacherProfile(profileInfo);
	}

	@Override
	public String selectCheckDoubleId(String checkId) {
		return mapper.selectCheckDoubleId(checkId);
	}

	@Override
	public int registTeacher(TeacherInfoDTO registInfo) {
		return mapper.registTeacher(registInfo);
	}

	@Override
	public TeacherInfoDTO selectExistingInfo(Map<String, String> result) {
		return mapper.selectExistingInfo(result);
	}

	@Override
	public int modifyTeacherPwd(TeacherInfoDTO info) {
		return mapper.modifyTeacherPwd(info);
	}
}
