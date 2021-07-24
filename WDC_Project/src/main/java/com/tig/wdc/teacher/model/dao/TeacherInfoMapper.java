package com.tig.wdc.teacher.model.dao;

import java.util.Map;

import com.tig.wdc.model.dto.TeacherInfoDTO;

/**
 * @author 이해승
 *
 */
public interface TeacherInfoMapper {

	//로그인 정보 확인
	TeacherInfoDTO findTeacherInfo(TeacherInfoDTO loginInfo);

	//강사의 등록된 클래스 수
	int selectRegisteredClassCount(int teacherNo);

	//강사의 누적 정산료
	String selectSumClassCalculate(int teacherNo);

	//강사정보조회
	TeacherInfoDTO searchTeacherInfo(int teacherNo);

	//강사프로필 수정
	int updateTeacherProfile(TeacherInfoDTO profileInfo);

	//공지사항 전체 조회
	int selectNoticeCount();

	//아이디중복확인
	String selectCheckDoubleId(String checkId);
	
	//강사 회원가입
	int registTeacher(TeacherInfoDTO registInfo);

	//강사 기본정보 확인
	TeacherInfoDTO selectExistingInfo(Map<String, String> result);

	//비밀번호 재설정
	int modifyTeacherPwd(TeacherInfoDTO info);
}
