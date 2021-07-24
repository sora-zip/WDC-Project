package com.tig.wdc.user.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tig.wdc.model.dto.CurriculumDTO;
import com.tig.wdc.model.dto.PageInfoDTO;
import com.tig.wdc.user.model.dao.UserClassMapper;
import com.tig.wdc.user.model.dao.UserInfoMapper;
import com.tig.wdc.user.model.dto.ClassApplyDTO;
import com.tig.wdc.user.model.dto.ClassPieceDTO;
import com.tig.wdc.user.model.dto.PaymentDTO;
import com.tig.wdc.user.model.dto.ReviewAnswerDTO;
import com.tig.wdc.user.model.dto.ScheduleDTO;
import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.user.model.dto.UserCouponDTO;
import com.tig.wdc.user.model.dto.UserInfoDTO;
import com.tig.wdc.user.model.dto.UserInquiryDTO;
import com.tig.wdc.user.model.dto.UserRefundDTO;
import com.tig.wdc.user.model.dto.UserReportDTO;
import com.tig.wdc.user.model.dto.UserReviewDTO;

/**
 * @author SORA
 *
 */
@Service
public class UserClassServiceImpl implements UserClassService{

	@Autowired
	private UserClassMapper mapper;
	private UserInfoMapper userInfoMapper;
	public UserClassServiceImpl(UserClassMapper mapper, UserInfoMapper userInfoMapper) {
		this.mapper = mapper;
		this.userInfoMapper = userInfoMapper;
	}

	@Override
	public List<UserClassDTO> selectNewClassList(int userNo) {

		return mapper.selectNewClassList(userNo);
	}

	@Override
	public List<UserClassDTO> selectTopClassList(int userNo) {
		
		return mapper.selectTopClassList(userNo);
	}

	@Override
	public List<UserClassDTO> selectCheerClassList(int userNo) {

		return mapper.selectCheerClassList(userNo);
	}

	@Override
	public UserClassDTO selectClassDtail(int clsNo) {

		return mapper.selectClassDetail(clsNo);
	}

	@Override
	public List<ClassPieceDTO> selectClassPiece(int clsNo) {
		return mapper.selectClassPiece(clsNo);
	}

	@Override
	public List<CurriculumDTO> selectCurriculum(int clsNo) {
		return mapper.selectCurriculum(clsNo);
	}

	@Override
	public List<UserClassDTO> selectClassPic(int clsNo) {
		return mapper.selectClassPic(clsNo);
	}

	@Override
	public List<UserReviewDTO> selectReview(int clsNo) {
		return mapper.selectReview(clsNo);
	}

	@Override
	public UserClassDTO selectClassStar(int clsNo) {
		return mapper.selectClassStar(clsNo);
	}


	@Override
	public List<ScheduleDTO> selectSchedule(int clsNo) {
		return mapper.selectSchedule(clsNo);
	}

	@Override
	public List<UserInquiryDTO> selectQnA(int clsNo) {
		return mapper.selectQnA(clsNo);
	}

	/**
	 *@author 연준
	 */
	@Override
	public UserInfoDTO selectUserInfo(int userNo) {
		return userInfoMapper.selectUser(userNo);
	}

	/**
	 *@author 연준
	 */
	@Override
	public List<UserCouponDTO> selectCouponList(UserClassDTO userClassDTO) {
		return mapper.selectCouponList(userClassDTO);
	}

	@Override
	public ScheduleDTO selectscheduleNo(ScheduleDTO scheduleDTO) {
		return mapper.selectscheduleNo(scheduleDTO);
	}

	@Override
	public int insertClassApply(ClassApplyDTO paymentClassApplyDTO) {
		return mapper.insertClassApply(paymentClassApplyDTO);
	}

	@Override
	public int insertPayment(PaymentDTO insertPaymentDTO) {
		return mapper.insertPayment(insertPaymentDTO);
	}

	@Override
	public int updateCpnUseYn(int cpnNo) {
		return mapper.updateCpnUseYn(cpnNo);
	}

	@Override
	public int insertReport(UserReportDTO userReportDTO) {
		return mapper.insertReport(userReportDTO);
	}

	@Override
	public int insertReportHistory(UserReportDTO userReportDTO) {
		return mapper.insertReportHistory(userReportDTO);
	}

	@Override
	public List<ScheduleDTO> selectTime(ScheduleDTO scheduleDTO) {
		return mapper.selectTime(scheduleDTO);
	}

	@Override
	public int inserRefund(UserRefundDTO userRefundDTO) {
		return mapper.inserRefund(userRefundDTO);
	}

	@Override
	public int updatePaymentStatus(int payNo) {
		return mapper.updatePaymentStatus(payNo);
	}

	@Override
	public int selectCheerHistory(UserClassDTO cheerUpHisInsertDTO) {
		return mapper.selectCheerHistory(cheerUpHisInsertDTO);
	}

	@Override
	public int insertCheerHistory(UserClassDTO cheerUpHisInsertDTO) {
		return mapper.insertCheerHistory(cheerUpHisInsertDTO);
	}

	@Override
	public ScheduleDTO selectPeople(ScheduleDTO scheduleDTO) {
		return mapper.selectPeople(scheduleDTO);
	}
	
	@Override
	public int selectMaxUserSize(ScheduleDTO scheduleDTO) {
		
		return mapper.selectMaxUserSize(scheduleDTO);
	}

	@Override
	public int insertInquiry(UserInquiryDTO userInquiryDTO) {
		return mapper.insertInquiry(userInquiryDTO);
	}

	@Override
	public List<UserClassDTO> selectMyCheerClassList(int userNo) {
		return mapper.selectMyCheerClassList(userNo);
	}

	/**
	 * 환불금액 계산 서비스
	 */
	@Override
	public UserRefundDTO selectRefundAmount(int scheduleNo, int payPrice) {
		UserRefundDTO userRefundDTO = new UserRefundDTO();
		System.out.println("payPrice : " + payPrice);
		
		// 1. 해당 스케줄 넘이 진행 했는지 카운트 조회/ 한번 이라도 진행된 클래스만 들어옴 else 2/3 환불
		
		int classProgressCount = mapper.selectClassProgressCount(scheduleNo);
		System.out.println(classProgressCount + " classProgressCount");
		
		if(classProgressCount > 0) {
			
			userRefundDTO = mapper.selectMaxStep(scheduleNo);
			System.out.println("userRefundDTO : " + userRefundDTO);
			// 리펀드 디티오  맥스값과 카운트가 들어옴
			if(userRefundDTO.getMaxStep() < ((userRefundDTO.getScheduleCount() / 3))) {
				userRefundDTO.setRefundAmount((int) (payPrice / 1.5));
			}else if(userRefundDTO.getMaxStep() < ((userRefundDTO.getScheduleCount() / 2))) {
				userRefundDTO.setRefundAmount((int) (payPrice / 2));
			}else {
				userRefundDTO.setRefundAmount(0);
			}
		}else {
			userRefundDTO.setRefundAmount((int) (payPrice / 1.5));
		}
		
		System.out.println("userRefundDTO serviceImpl : " + userRefundDTO);
		return userRefundDTO;
	}

	@Override
	public ScheduleDTO selectRegularSchedule(int clsNo) {
		return mapper.selectRegularSchedule(clsNo);
	}

	@Override
	public ScheduleDTO selectApplyPeople(ScheduleDTO regularSchedule) {
		return mapper.selectApplyPeople(regularSchedule);
	}

	@Override
	public int selectDoTodayCheer(int userNo) {
		return mapper.selectDoTodayCheer(userNo);
	}

	@Override
	public int selectUserCpnNo(int cpnNo) {
		return mapper.selectUserCpnNo(cpnNo);
	}

	@Override
	public int insertAllUserCoupon(UserCouponDTO forInsertAllUserCouponDTO) {
		return mapper.insertAllUserCoupon(forInsertAllUserCouponDTO);
	}

	@Override
	public int selectOneDayMax(int clsNo) {
		return mapper.selectOneDayMax(clsNo);
	}

	@Override
	public int insertTuitionManagement(PaymentDTO insertPaymentDTO) {
		return mapper.insertTuitionManagement(insertPaymentDTO);
	}

	@Override
	public int selectCheerCount(int clsNo) {
		return mapper.selectCheerCount(clsNo);
	}

	@Override
	public List<UserClassDTO> selectMyLikeClassList(PageInfoDTO pageInfo) {
		return mapper.selectMyLikeClassList(pageInfo);
	}

	@Override
	public int updateUserWithdraw(int userNo) {
		return mapper.updateUserWithdraw(userNo);
	}

	@Override
	public String selectClassUpdate(HashMap<String, String> searchDate) {
		return mapper.selectClassUpdate(searchDate);
	}

	@Override
	public int updateClass(HashMap<String, String> searchDate) {
		return mapper.updateClass(searchDate);
	}

	@Override
	public int insertUpdateClass(HashMap<String, String> searchDate) {
		return mapper.insertUpdateClass(searchDate);
	}

	@Override
	public int updateStartClass(HashMap<String, String> searchDate) {
		return mapper.updateStartClass(searchDate);
	}

	@Override
	public int updatePplZero(int aplNo) {
		return mapper.updatePplZero(aplNo);
	}

	@Override
	public String selectLikeStatus(UserClassDTO userClassDTO) {
		return mapper.selectLikeStatus(userClassDTO);
	}




}
