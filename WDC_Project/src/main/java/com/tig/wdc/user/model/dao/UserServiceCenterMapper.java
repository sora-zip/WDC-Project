package com.tig.wdc.user.model.dao;

import java.util.List;

import com.tig.wdc.admin.model.dto.NoticeDTO;
import com.tig.wdc.model.dto.PageInfoDTO;
import com.tig.wdc.user.model.dto.InquiryAnswerDTO;
import com.tig.wdc.user.model.dto.UserInquiryDTO;
import com.tig.wdc.user.model.dto.UserReportDTO;

public interface UserServiceCenterMapper {

	int selectTotalCount();

	List<NoticeDTO> selectNotice(PageInfoDTO pageInfo);

	NoticeDTO selectNoticeDetail(int noticeNo);

	int selectInquiryCount(int userNo);
	
	List<UserInquiryDTO> selectInquiry(PageInfoDTO pageInfo);

	UserInquiryDTO selectInquiryDetail(int inquiryNo);

	InquiryAnswerDTO selectInquiryAnswer(int inquiryNo);

	int selectReportCount(int userNo);

	List<UserReportDTO> selectReport(PageInfoDTO pageInfo);

	UserReportDTO selectReportDetail(int reportNo);

	UserReportDTO selectReportAnswer(int reportNo);

	int insertInquiry(UserInquiryDTO userInquiryDTO);

	int inquiryHistory(UserInquiryDTO userInquiryDTO);


}
