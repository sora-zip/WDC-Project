package com.tig.wdc.teacher.model.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tig.wdc.model.dto.AttachMentDTO;
import com.tig.wdc.model.dto.ClassPieceDTO;
import com.tig.wdc.model.dto.CurriculumDTO;
import com.tig.wdc.model.dto.RegularClassAttendanceDTO;
import com.tig.wdc.model.dto.ClassScheduleInfoDTO;
import com.tig.wdc.teacher.model.dao.ClassRegistManageMapper;
import com.tig.wdc.user.model.dto.ClassApplyDTO;
import com.tig.wdc.user.model.dto.ClassDTO;
import com.tig.wdc.user.model.dto.ReviewAnswerDTO;
import com.tig.wdc.user.model.dto.ScheduleDTO;
import com.tig.wdc.user.model.dto.UserReviewDTO;

/**
 * @author 이해승
 * 클래스등록용 서비스
 */
@Service
public class ClassRegistManageServiceImpl implements ClassRegistManageService {
	
	private ClassRegistManageMapper mapper;
	
	@Autowired
	public ClassRegistManageServiceImpl(ClassRegistManageMapper mapper) {
		this.mapper = mapper;
	}

	/**
	 * 클래스 정보 insert
	 */
	@Override
	public int insertClassInfo(ClassDTO classInfo) {
		return mapper.insertClassInfo(classInfo);
	}

	/**
	 * 클래스 대표사진 insert
	 */
	@Override
	public int insertTitlePicture(AttachMentDTO titlePicture) {
		return mapper.insertTitlePicture(titlePicture);
	}

	/**
	 * 클래스 완성작 insert
	 */
	@Override
	public int insertCompletePiece(ClassPieceDTO classPiece) {
		return mapper.insertCompletePiece(classPiece);
	}

	/**
	 * 커리큘럼 insert
	 */
	@Override
	public int insertCurriculum(CurriculumDTO curriculum) {
		return  mapper.insertCurriculum(curriculum);
	}

	/**
	 * 스케쥴 insert
	 */
	@Override
	public int insertSchedule(ScheduleDTO schedule) {
		return mapper.insertSchedule(schedule);
	}

	/**
	 *  정규클래스 정보 select
	 */
	@Override
	public ClassScheduleInfoDTO selectRegularScheduleinfo(int clsNo) {
		return mapper.selectRegularScheduleinfo(clsNo);
	}

	/**
	 *  클래스 신청자 정보
	 */
	@Override
	public List<ClassApplyDTO> selectApplyUserInfo(String scheduleNo) {
		return mapper.selectApplyUserInfo(scheduleNo);
	}

	/**
	 * 원데이클래스 스케쥴 리스트
	 */
	@Override
	public List<ClassScheduleInfoDTO> selectOneDayScheduleList(ClassDTO classInfo) {
		return mapper.selectOneDayScheduleList(classInfo);
	}

	/**
	 * 원데이클래스 출석상태값 변경
	 */
	@Override
	public int modifyOndeDayAttendanceStatus(HashMap<String, Object> applyNoList) {
		
		applyNoList.put("status", "reset");
		if(applyNoList.get("checkedApplyNo") == null) {
			
			return mapper.modifyOndeDayAttendanceStatus(applyNoList);
		} else {
			mapper.modifyOndeDayAttendanceStatus(applyNoList);
			applyNoList.put("status", "update");

			return mapper.modifyOndeDayAttendanceStatus(applyNoList);
		}
	}

	/**
	 * 정규클래스 출석 insert
	 */
	@Override
	public int insertRegularClassAttendance(HashMap<String, Object> attendInfo) {
		return mapper.insertRegularClassAttendance(attendInfo);
		
	}

	/**
	 * 정규클래스 기존 정보 select
	 */
	@Override
	public List<RegularClassAttendanceDTO> selectExistingInfo(int scheduleNo) {
		return mapper.selectExistingInfo(scheduleNo);
	}

	/**
	 * 원데이 스케쥴 카운트
	 */
	@Override
	public List<ClassScheduleInfoDTO> selectOnedayApplyCount(List<ClassScheduleInfoDTO> onedayInfoList) {
		return mapper.selectOnedayApplyCount(onedayInfoList);
	}

	/**
	 * 원데이 스케쥴 신청정보
	 */
	@Override
	public ClassScheduleInfoDTO selectRegularApplyCount(int scheduleNo) {
		return mapper.selectRegularApplyCount(scheduleNo);
	}

	/**
	 * 정규클래스 신청상태 변경
	 */
	@Override
	public int updateRegularApplyStatus(String[] updateList) {
		return mapper.updateRegularApplyStatus(updateList);
	}

	/**
	 * 리뷰 전체 수 카운트
	 */
	@Override
	public int selectReviewCount(String clsNo) {
		return mapper.selectReviewCount(clsNo);
	}

	/**
	 * 리뷰 리스트 조회
	 */
	@Override
	public List<UserReviewDTO> selectReviewList(HashMap<String, Object> searchInfo) {
		return mapper.selectReviewList(searchInfo);
	}

	/**
	 * 리뷰평점
	 */
	@Override
	public Double selectReviewAvgScore(String clsNo) {
		return mapper.selectReviewAvgScore(clsNo);
	}

	/**
	 * 리뷰답변 작성
	 */
	@Override
	public int insertReviewAnswer(ReviewAnswerDTO reviewInfo) {
		return mapper.insertReviewAnswer(reviewInfo);
	}

	/**
	 * 거절사유
	 */
	@Override
	public String selectRejectReason(int clsNo) {
		return mapper.selectRejectReason(clsNo);
	}

	/**
	 * 응원수
	 */
	@Override
	public int selectCheeringCount(int clsNo) {
		return mapper.selectCheeringCount(clsNo);
	}
	
	

}
