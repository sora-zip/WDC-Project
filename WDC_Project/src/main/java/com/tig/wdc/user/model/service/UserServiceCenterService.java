package com.tig.wdc.user.model.service;

import java.util.List;

import com.tig.wdc.admin.model.dto.NoticeDTO;
import com.tig.wdc.model.dto.PageInfoDTO;
import com.tig.wdc.user.model.dto.InquiryAnswerDTO;
import com.tig.wdc.user.model.dto.UserInquiryDTO;
import com.tig.wdc.user.model.dto.UserReportDTO;

public interface UserServiceCenterService {

	int selectTotalCount();

	List<NoticeDTO> selectNotice(PageInfoDTO pageInfo);

	NoticeDTO selectNoticeDetail(int noticeNo);

	int selectInquiryCount(int userNo);
	
	List<UserInquiryDTO> selectInquiry(PageInfoDTO pageInfo);

	UserInquiryDTO InquiryDetail(int inquiryNo);

	InquiryAnswerDTO InquiryAnswer(int inquiryNo);

	int selectReportCount(int userNo);
	
	List<UserReportDTO> selectReport(PageInfoDTO pageInfo);

	UserReportDTO ReportDetail(int reportNo);

	UserReportDTO ReportAnswer(int reportNo);

	int insertInquiry(UserInquiryDTO userInquiryDTO);

	int inquiryHistory(UserInquiryDTO userInquiryDTO);






}
