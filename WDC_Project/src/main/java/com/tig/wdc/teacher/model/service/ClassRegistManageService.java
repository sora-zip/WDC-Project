package com.tig.wdc.teacher.model.service;

import java.util.HashMap;
import java.util.List;

import com.tig.wdc.model.dto.AttachMentDTO;
import com.tig.wdc.model.dto.ClassPieceDTO;
import com.tig.wdc.model.dto.CurriculumDTO;
import com.tig.wdc.model.dto.RegularClassAttendanceDTO;
import com.tig.wdc.model.dto.ClassScheduleInfoDTO;
import com.tig.wdc.user.model.dto.ClassApplyDTO;
import com.tig.wdc.user.model.dto.ClassDTO;
import com.tig.wdc.user.model.dto.ReviewAnswerDTO;
import com.tig.wdc.user.model.dto.ScheduleDTO;
import com.tig.wdc.user.model.dto.UserReviewDTO;

/**
 * @author 이해승
 * 클래스등록 인터페이스
 */
public interface ClassRegistManageService {

	//클래스정보 insert
	int insertClassInfo(ClassDTO classInfo);
	
	//클래스 대표사진 insert
	int insertTitlePicture(AttachMentDTO titlePicture);

	//클래스 완성작 insert
	int insertCompletePiece(ClassPieceDTO classPiece);

	//클래스 커리큘럼 insert
	int insertCurriculum(CurriculumDTO curriculum);

	//클래스 스케쥴 
	int insertSchedule(ScheduleDTO schedule);

	//정규 클래스 정보
	ClassScheduleInfoDTO selectRegularScheduleinfo(int clsNo);

	//클래스 신청한 정보
	List<ClassApplyDTO> selectApplyUserInfo(String string);

	//원데이클래스 스케쥴리스트
	List<ClassScheduleInfoDTO> selectOneDayScheduleList(ClassDTO classInfo);

	//원데이클래스 출석 수정용
	int modifyOndeDayAttendanceStatus(HashMap<String, Object> applyNoList);

	//정규클래스 출석 수정용
	int insertRegularClassAttendance(HashMap<String, Object> attendInfo);

	//정규클래스 기존 출석정보
	List<RegularClassAttendanceDTO> selectExistingInfo(int scheduleNo);

	//원데이클래스 신청인원
	List<ClassScheduleInfoDTO> selectOnedayApplyCount(List<ClassScheduleInfoDTO> onedayInfoList);

	//정규클래스 신청인원
	ClassScheduleInfoDTO selectRegularApplyCount(int scheduleNo);

	//정규클래스 신청 상태값 update
	int updateRegularApplyStatus(String[] updateList);

	//리뷰 전체 수 카운트
	int selectReviewCount(String string);

	//리뷰 리스트
	List<UserReviewDTO> selectReviewList(HashMap<String, Object> searchInfo);

	//리뷰 평점
	Double selectReviewAvgScore(String string);

	//리뷰 답변
	int insertReviewAnswer(ReviewAnswerDTO reviewInfo);

	//거절사유
	String selectRejectReason(int clsNo);
 
	//응원수
	int selectCheeringCount(int clsNo);

	
}
