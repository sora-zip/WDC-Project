package com.tig.wdc.user.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tig.wdc.admin.model.dto.NoticeDTO;
import com.tig.wdc.model.dto.PageInfoDTO;
import com.tig.wdc.user.model.dao.UserServiceCenterMapper;
import com.tig.wdc.user.model.dto.InquiryAnswerDTO;
import com.tig.wdc.user.model.dto.UserInquiryDTO;
import com.tig.wdc.user.model.dto.UserReportDTO;

@Service
public class UserServiceCenterServiceImpl implements UserServiceCenterService{

	@Autowired
	private UserServiceCenterMapper mapper;
	public UserServiceCenterServiceImpl(UserServiceCenterMapper mapper) {
		this.mapper = mapper;
	}
	
	@Override
	public int selectTotalCount() {
		return mapper.selectTotalCount();
	}

	@Override
	public List<NoticeDTO> selectNotice(PageInfoDTO pageInfo) {
		return mapper.selectNotice(pageInfo);
	}

	@Override
	public NoticeDTO selectNoticeDetail(int noticeNo) {
		return mapper.selectNoticeDetail(noticeNo);
	}
	
	@Override
	public int selectInquiryCount(int userNo) {
		return mapper.selectInquiryCount(userNo);
	}

	@Override
	public List<UserInquiryDTO> selectInquiry(PageInfoDTO pageInfo) {
		return mapper.selectInquiry(pageInfo);
	}

	@Override
	public UserInquiryDTO InquiryDetail(int inquiryNo) {
		return mapper.selectInquiryDetail(inquiryNo);
	}

	@Override
	public InquiryAnswerDTO InquiryAnswer(int inquiryNo) {
		return mapper.selectInquiryAnswer(inquiryNo);
	}

	@Override
	public int selectReportCount(int userNo) {
		return mapper.selectReportCount(userNo);
	}

	@Override
	public List<UserReportDTO> selectReport(PageInfoDTO pageInfo) {
		return mapper.selectReport(pageInfo);
	}

	@Override
	public UserReportDTO ReportDetail(int reportNo) {
		return mapper.selectReportDetail(reportNo);
	}

	@Override
	public UserReportDTO ReportAnswer(int reportNo) {
		return mapper.selectReportAnswer(reportNo);
	}

	@Override
	public int insertInquiry(UserInquiryDTO userInquiryDTO) {
		return mapper.insertInquiry(userInquiryDTO);
	}

	@Override
	public int inquiryHistory(UserInquiryDTO userInquiryDTO) {
		return mapper.inquiryHistory(userInquiryDTO);
	}


}
