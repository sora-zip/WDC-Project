package com.tig.wdc.user.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tig.wdc.admin.model.dto.NoticeDTO;
import com.tig.wdc.common.PageNation;
import com.tig.wdc.model.dto.PageInfoDTO;
import com.tig.wdc.user.model.dto.InquiryAnswerDTO;
import com.tig.wdc.user.model.dto.UserInquiryDTO;
import com.tig.wdc.user.model.dto.UserReportDTO;
import com.tig.wdc.user.model.service.UserServiceCenterService;

/**
 * @author SORA
 * 고객센터 컨트롤러
 */
@Controller
@RequestMapping("/user/serviceCenter/*")
public class UserServiceCenterController {

	private final UserServiceCenterService serviceCenter;
	private PageInfoDTO pageInfo;
	
	@Autowired
	public UserServiceCenterController(UserServiceCenterService serviceCenter, PageInfoDTO pageInfo) {
		this.serviceCenter = serviceCenter;
		this.pageInfo = pageInfo;
	}
	
	@GetMapping("notice")
	public String Notice(Model model, @RequestParam(defaultValue = "1") int currentPage) {

		//현재 페이지, 전체 게시글 수, 보여줄 게시글 수, 보여줄 버튼 수
		pageInfo = PageNation.getPageInfo(currentPage, serviceCenter.selectTotalCount(), 10, 5);
		
		//페이지 정보를 담아옴
		model.addAttribute("pageInfo", pageInfo);
		
		//받아온 페이지 정보를 가지고 공지사항 select
		List<NoticeDTO> notice = new ArrayList<NoticeDTO>();
		notice = serviceCenter.selectNotice(pageInfo);
		model.addAttribute("notice",notice);
		
		return "user/serviceCenter/notice";
	}
	
	@GetMapping("noticeDetail/{noticeNo}")
	public String NoticeDetail(@PathVariable("noticeNo") int noticeNo, Model model) {
		
		NoticeDTO noticeDetail = new NoticeDTO();
		noticeDetail = serviceCenter.selectNoticeDetail(noticeNo);
		model.addAttribute("noticeDetail",noticeDetail);
		
		return "user/serviceCenter/notice_detail";
	}
	
	@GetMapping("faq")
	public String Faq() {
		
		return "user/serviceCenter/faq";
	}
	
	@GetMapping("inquiry")
	public String Inquiry(Model model, @RequestParam(defaultValue = "1") int currentPage, HttpSession session) {
		
		//로그인한 유저 번호 받기
		int userNo= (Integer) session.getAttribute("userNo");
		
		//현재 페이지, 전체 게시글 수, 보여줄 게시글 수, 보여줄 버튼 수
		pageInfo = PageNation.getPageInfo(currentPage, serviceCenter.selectInquiryCount(userNo), 10, 5);
		pageInfo.setUserNo(userNo);
		
		//페이지 정보를 담아옴
		model.addAttribute("pageInfo", pageInfo);
		
		//받아온 페이지 정보를 가지고 문의 select
		List<UserInquiryDTO> inquiry = new ArrayList<UserInquiryDTO>();
		inquiry = serviceCenter.selectInquiry(pageInfo);
		model.addAttribute("inquiry",inquiry);
		
		return "user/serviceCenter/inquiry";
	}
	
	@GetMapping("inquiryDetail/{inquiryNo}")
	public String InquiryDetail(@PathVariable("inquiryNo") int inquiryNo, Model model) {
		
		//문의
		UserInquiryDTO inquiryDetail = new UserInquiryDTO();
		inquiryDetail = serviceCenter.InquiryDetail(inquiryNo);
		model.addAttribute("inquiryDetail",inquiryDetail);
		
		//답변
		InquiryAnswerDTO inquiryAnswer = new InquiryAnswerDTO();
		inquiryAnswer = serviceCenter.InquiryAnswer(inquiryNo);
		model.addAttribute("inquiryAnswer",inquiryAnswer);
		
		return "user/serviceCenter/inquiry_detail";
	}
	
	@GetMapping("inquiryWrite")
	public String InquiryWrite(HttpSession session, UserInquiryDTO userInquiryDTO) {
		
		return "user/serviceCenter/inquiry_write";
	}
	
	@GetMapping("insertWrite")
	public String InsertWrite(HttpSession session, UserInquiryDTO userInquiryDTO) {
		
		//문의 insert
		int userNo= (Integer) session.getAttribute("userNo");
		userInquiryDTO.setUserNo(userNo);
		
		int inquiryWrite = serviceCenter.insertInquiry(userInquiryDTO);
		int inquiryHistory = serviceCenter.inquiryHistory(userInquiryDTO);
		
		return "redirect:/user/serviceCenter/inquiry";
	}
	
	@GetMapping("report")
	public String Report(Model model, @RequestParam(defaultValue = "1") int currentPage, HttpSession session) {
		
		//로그인한 유저 번호 받기
		int userNo= (Integer) session.getAttribute("userNo");
		
		//현재 페이지, 전체 게시글 수, 보여줄 게시글 수, 보여줄 버튼 수
		pageInfo = PageNation.getPageInfo(currentPage, serviceCenter.selectReportCount(userNo), 10, 5);
		pageInfo.setUserNo(userNo);
		
		//페이지 정보를 담아옴
		model.addAttribute("pageInfo", pageInfo);
		
		//받아온 페이지 정보를 가지고 신고 select
		List<UserReportDTO> report = new ArrayList<UserReportDTO>();
		report = serviceCenter.selectReport(pageInfo);
		model.addAttribute("report",report);
		
		System.out.println(report);
		
		return "user/serviceCenter/report";
	}
	
	@GetMapping("reportDetail/{reportNo}")
	public String ReportDetail(@PathVariable("reportNo") int reportNo, Model model) {
		
		//신고
		UserReportDTO reportDetail = new UserReportDTO();
		reportDetail = serviceCenter.ReportDetail(reportNo);
		model.addAttribute("reportDetail",reportDetail);
		
		//답변
		UserReportDTO reportAnswer = new UserReportDTO();
		reportAnswer = serviceCenter.ReportAnswer(reportNo);
		model.addAttribute("reportAnswer",reportAnswer);
		
		return "user/serviceCenter/report_detail";
	}
	
}
