package com.tig.wdc.teacher.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.tig.wdc.admin.model.dto.QuestionDTO;
import com.tig.wdc.model.dto.NoticeDTO;
import com.tig.wdc.model.dto.PageInfoDTO;
import com.tig.wdc.user.model.dto.ClassDTO;
import com.tig.wdc.user.model.dto.InquiryAnswerDTO;
import com.tig.wdc.user.model.dto.UserInquiryDTO;
import com.tig.wdc.user.model.dto.UserReportDTO;

/**
 * 공지사항(상세), 관리자 문의(작성,내역) 등 게시판 처리용
 * @author 이해승
 *
 */
public interface BoardAndQnAService {

	/**
	 * 공지사항 전체수 조회
	 * @return 공지사항 전체 수
	 */
	public int selectNoticeCount();

	/**
	 * @param pageInfo : 공지사항 페이징 처리 후 조회
	 * @return : 페이징 처리 된 공지사항
	 */
	public List<NoticeDTO> selectNoticeList(PageInfoDTO pageInfo);

	/**
	 * @param searchInfo 강사번호
	 * @return 강사가 보유한 강의 전체목록
	 */
	public int selectClassCount(HashMap<String, Object> searchInfo);

	/**
	 * @param searchInfo 강사번호, 페이지번호
	 * @return 클래스 리스트
	 */
	public List<ClassDTO> selectClassList(HashMap<String, Object> searchInfo);

	/**
	 * 원데이 클래스 전체 스케쥴 수 카운트
	 * @param clsNo 클래스번호
	 * @return
	 */
	public int selectScheduleCount(int clsNo);

	
	/**
	 * 강사가 관리자에게 문의한 전체 수
	 * @param searchInfo
	 * @return
	 */
	public int selectAdminQnACount(HashMap<String, Object> searchInfo);

	/**
	 * 강사가 관리자에게 문의한 리스트
	 * @param searchCondition 검색조건
	 * @return
	 */
	public List<UserInquiryDTO> selectAdminQnAList(HashMap<String, Object> searchCondition);

	/**
	 * 강사가 관리자에게 문의한 상세내용
	 * @param serachInfo
	 * @return
	 */
	public UserInquiryDTO selectQnADetail(Map<String, String> serachInfo);

	/**
	 * 강사가 관리자에게 문의 insert
	 * @param content
	 * @return
	 */
	public int insertAdminQuestion(QuestionDTO content);

	/**
	 * 강사가 관리자에게 문의 이력테이블
	 * @param content
	 * @return
	 */
	public int insertAdminQuestionHistory(QuestionDTO content);

	/**
	 * 공지사항 상세보기
	 * @param noticeNo 공지사항내용
	 * @return
	 */
	public NoticeDTO selectNoticeDetail(int noticeNo);

	/**
	 * 이용자가 클래스에 문의한 내용 리스트 select
	 * @param string
	 * @return
	 */
	public List<UserInquiryDTO> selectinquiryList(HashMap<String, Object> classInfo);

	/**
	 * 이용자 문의 전체 수
	 * @param parseInt
	 * @return
	 */
	public int selectUserInquiryCount(HashMap<String, Object> classInfo);

	/**
	 * 이용자문의 상세보기
	 * @param inquiryInfo
	 * @return
	 */
	public UserInquiryDTO selectOneInquiry(HashMap<String, Object> inquiryInfo);

	/**
	 * 이용자문의 답변
	 * @param answer
	 * @return
	 */
	public int insertInquiryAnswer(InquiryAnswerDTO answer);

	public int insertReportUser(UserReportDTO reportInfo);

}
