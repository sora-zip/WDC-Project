package com.tig.wdc.teacher.model.dao;

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
 * 클래스등록,관리용 Mapper
 */
public interface ClassRegistManageMapper {

	int insertClassInfo(ClassDTO classInfo);

	int insertTitlePicture(AttachMentDTO titlePicture);

	int insertCompletePiece(ClassPieceDTO classPiece);

	int insertCurriculum(CurriculumDTO curriculum);

	int insertSchedule(ScheduleDTO schedule);

	ClassScheduleInfoDTO selectRegularScheduleinfo(int clsNo);

	List<ClassApplyDTO> selectApplyUserInfo(String scheduleNo);

	List<ClassScheduleInfoDTO> selectOneDayScheduleList(ClassDTO classInfo);

	int modifyOndeDayAttendanceStatus(HashMap<String, Object> applyNoList);

	int insertRegularClassAttendance(HashMap<String, Object> attendInfo);

	List<RegularClassAttendanceDTO> selectExistingInfo(int scheduleNo);

	List<ClassScheduleInfoDTO> selectOnedayApplyCount(List<ClassScheduleInfoDTO> onedayInfoList);

	ClassScheduleInfoDTO selectRegularApplyCount(int scheduleNo);

	int updateRegularApplyStatus(String[] updateList);

	int selectReviewCount(String clsNo);

	List<UserReviewDTO> selectReviewList(HashMap<String, Object> searchInfo);

	Double selectReviewAvgScore(String clsNo);

	int insertReviewAnswer(ReviewAnswerDTO reviewInfo);

	String selectRejectReason(int clsNo);

	int selectCheeringCount(int clsNo);

}
