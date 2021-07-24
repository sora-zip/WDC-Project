package com.tig.wdc.admin.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.tig.wdc.admin.model.dto.CalculateDTO;
import com.tig.wdc.admin.model.dto.CheeringClassDTO;
import com.tig.wdc.admin.model.dto.ClassDTO;
import com.tig.wdc.admin.model.dto.ClsDecisionDTO;
import com.tig.wdc.admin.model.dto.CouponDTO;
import com.tig.wdc.admin.model.dto.NoticeDTO;
import com.tig.wdc.admin.model.dto.ReportDTO;
import com.tig.wdc.admin.model.dto.ReportDetailDTO;
import com.tig.wdc.admin.model.dto.StudentDTO;
import com.tig.wdc.admin.model.dto.TeacherDTO;
import com.tig.wdc.admin.model.dto.TotalDTO;
import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.admin.model.dto.AdminDTO;
import com.tig.wdc.admin.model.dto.BlackListDTO;
import com.tig.wdc.admin.model.dto.QuestionDTO;
import com.tig.wdc.admin.model.dto.RefundDTO;


public interface AdminMapper {



	List<TotalDTO> selectTotalUsertList();
	
	List<ClassDTO> selectAllClassList();

	List<ReportDTO> selectAllReportList();

	List<TotalDTO> selectTeacherList();

	/**
	 * @author 송아현
	 * 전체 문의
	 * 
	 * @return
	 */
	List<QuestionDTO> selectAllQuestionList();
	
	/**
	 * @author 송아현
	 * 강사문의
	 * 
	 * @return
	 */
	List<QuestionDTO> selectTeacherQuestionList();

	/**
	 * @author 송아현
	 * 고객문의
	 * 
	 * @return
	 */
	List<QuestionDTO> selectStudentQuestionList();
	
	/**
	 * @author 송아현
	 * 강사 문의 상세
	 * 
	 * @param id
	 * @return
	 */
	QuestionDTO selectTeacherQuestionInfoDetail(int no);
	
	/**
	 * @author 송아현
	 * 학생 문의 상세
	 * 
	 * @param id
	 * @return
	 */
	QuestionDTO selectStudentQuestionInfoDetail(int no);
	
	/**
	 * @author 송아현
	 * 문의 답변 - insert
	 * 
	 * @param question
	 * @return
	 */
	int insertAnswer(QuestionDTO question);
	
	/**
	 * @author 송아현
	 * 문의 답변 - update
	 * 
	 * @param question
	 * @return
	 */
	int updateAnswer(QuestionDTO question);

	/**
	 * @author 송아현
	 * 쿠폰
	 * 
	 * @return
	 */
	List<CouponDTO> selectAllCouponList();
	
	/**
	 * @author 송아현
	 * 쿠폰 상세
	 * 
	 * @param no
	 * @return
	 */
	CouponDTO selectCouponInfoDetail(int no);
	
	/**
	 * @author 송아현
	 * 쿠폰 발급
	 * 
	 * @param coupon 
	 * @return
	 */
	int insertCouponIssue(CouponDTO coupon);

	/**
	 * @author 송아현
	 * 공지
	 * 
	 * @return
	 */
	List<NoticeDTO> selectAllNoticeList();
	
	/**
	 * @author 송아현
	 * 공지 상세
	 * 
	 * @param no
	 * @return
	 */
	NoticeDTO selectNoticeInfoDetail(int no);
	
	/**
	 * @author 송아현
	 * 공지 등록
	 * 
	 * @param notice
	 * @return
	 */
	int insertNoticeWrite(NoticeDTO notice);
	
	/**
	 * @author 송아현
	 * 공지 수정 등록
	 * 
	 * @param notice
	 * @return
	 */
	int updateNoticeReWrite(NoticeDTO notice);
	
	/**
	 * @author 송아현
	 * 미정산
	 * 
	 * @return
	 */
	List<CalculateDTO> selectNoCalculateList(String classType);
	
	/**
	 * @author 송아현
	 * 정산완료
	 * 
	 * @return
	 */
	List<CalculateDTO> selectYesCalculateList(String classType);

	/**
	 * @author 송아현
	 * 미정산 상세
	 * 
	 * @param no
	 * @return
	 */
	CalculateDTO selectNoCalculateDetail(Map<String, Object> calculateDetailMap);
	
	/**
	 * @author 송아현
	 * 정산 상세
	 * 
	 * @return
	 */
	CalculateDTO selectYesCalculateDetail(int no);
	
	/**
	 * @author 송아현
	 * 정산 승인 - insert
	 * 
	 * @param calculate
	 * @return
	 */
	int insertCalculate(CalculateDTO calculate);
	
	/**
	 * @author 송아현
	 * 정산 승인 - update
	 * 
	 * @param calculate
	 * @return
	 */
	int updateCalculate(CalculateDTO calculate);
	
	/**
	 * @author 송아현
	 * 환불 관리
	 * 
	 * @return
	 */
	List<RefundDTO> selectRefundList(String type);
	
	/**
	 * @author 송아현
	 * 환불 상세
	 * 
	 * @param refund
	 * @return
	 */
	RefundDTO selectRefundInfoDetail(Map<String, Object> refundDetailMap);
	
	/**
	 * @author 송아현
	 * 환불 승인 insert 하기 위해 필요한 값
	 * 
	 * @param refundDetailMap
	 * @return
	 */
	RefundDTO selectRefundTotalAmount(Map<String, Object> refundDetailMap);
	
	/**
	 * @author 송아현
	 * 환불 승인 - update
	 * 
	 * @param refund
	 * @return
	 */
	int updateRefundApprove(Map<String, Object> refundMap);
	
	/**
	 * @author 송아현
	 * 환불 승인 - insert
	 * 
	 * @param refund
	 * @return
	 */
	int insertRefundApprove(Map<String, Object> refundMap);
	
	StudentDTO selectOneStudent(int no);

	TeacherDTO selectOneTeacher(int no);

	List<TotalDTO> selectStudentList();
	
	ReportDetailDTO selectStudentReportList(ReportDetailDTO rd);

	int updateReportStatus(int no);

	int updateReportStatus2(int no);

	List<BlackListDTO> selectAllBlackList();

	List<BlackListDTO> selectBlockedTeacherList();

	List<BlackListDTO> selectBlockedStudentList();

	int selectReportCnt(Map<String, Object> getCnt);

	int insertBlackList(Map<String, Object> blackMap);

	int updateBlackListOnUSerTable(Map<String, Object> blackMap);

	List<ClassDTO> selectClassBycategory(Map<String, String> type);

	int updateFirstDecision(ClsDecisionDTO clsDecisionDTO);

	int insertClassDecision(ClsDecisionDTO clsDecisionDTO);

	List<CheeringClassDTO> selectCheeringClass();

	List<Integer> selectUserNoByCheeringClass(int clsNo);

	int updateClsSecondDecision(int clsNo);

	int updateClsSecondDecisionHistory(int clsNo);

	int insertCheeringCoupon(UserClassDTO classDetail);

	int updateClsSecondDecisionReject(int clsNo);

	int updateClsSecondDecisionHistoryRedject(int clsNo);

	int insertBlackListByThreeCnt(Map<String, Object> blackMap);

	int updateBlackListOnUSerTableByCnt(Map<String, Object> blackMap);

	String selectRejectReason(int clsNo);

	AdminDTO selectAdminInfo(AdminDTO loginInfo);





















}
