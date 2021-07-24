package com.tig.wdc.teacher.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tig.wdc.admin.model.dto.QuestionDTO;
import com.tig.wdc.common.PageNation;
import com.tig.wdc.model.dto.ClassScheduleInfoDTO;
import com.tig.wdc.model.dto.PageInfoDTO;
import com.tig.wdc.teacher.model.service.BalanceService;
import com.tig.wdc.teacher.model.service.BoardAndQnAService;
import com.tig.wdc.teacher.model.service.ClassRegistManageService;
import com.tig.wdc.user.model.dto.ClassDTO;
import com.tig.wdc.user.model.dto.InquiryAnswerDTO;
import com.tig.wdc.user.model.dto.ReviewAnswerDTO;
import com.tig.wdc.user.model.dto.UserReportDTO;
import com.tig.wdc.user.model.service.UserClassService;

/**
 * @author 강현우, 이해승
 * 강사  마이페이지용 컨트롤러
 */
@Controller
@RequestMapping("/teacher/*")
public class TeacherMyPageController {
	
	private BalanceService myPageService;
	private BoardAndQnAService boardService;
	private UserClassService classService; 
	private PageInfoDTO pageInfo;
	private ClassDTO classInfo;
	private ClassRegistManageService classManage;
	
	@Autowired
	public TeacherMyPageController(BalanceService myPageService, BoardAndQnAService boardService, PageInfoDTO pageInfo, ClassDTO classInfo, UserClassService classService, ClassRegistManageService classManage) {
		this.myPageService = myPageService;
		this.boardService = boardService;
	    this.pageInfo = pageInfo;
	    this.classInfo = classInfo;
	    this.classService = classService;
	    this.classManage = classManage;
	}
	
	/**
	 * 강사가 보유한 클래스 리스트 조회(이해승)
	 * @return 클래스 리스트
	 */
	@GetMapping("/teacherClassManagement")
	public String teacherClassManagement(HttpSession session, Model model, @RequestParam(defaultValue = "1") int currentPage, @RequestParam HashMap<String, Object> searchInfo) {
		
		int teacherNo = (Integer) session.getAttribute("teacherNo");
		searchInfo.put("teacherNo", teacherNo);
		pageInfo = PageNation.getPageInfo(currentPage, boardService.selectClassCount(searchInfo), 10, 5);
		searchInfo.put("pageInfo", pageInfo);
		
		if(searchInfo.get("classType") != null) {
			model.addAttribute("classType", searchInfo.get("classType"));
		}
		if(searchInfo.get("decision") != null) {
			model.addAttribute("decision", searchInfo.get("decision"));
		}
		if(searchInfo.get("proceed") != null) {
			model.addAttribute("proceed", searchInfo.get("proceed"));
		}
		
		model.addAttribute("classList",boardService.selectClassList(searchInfo));

		model.addAttribute("pageInfo", pageInfo);
		
	
		return "teacher/classManage/t_classManagement";
	}
	
	
	/**
	 * 클래스 상세조회(이해승)
	 * @param model 
	 * @param clsNo 클래스 번호
	 * @return 클래스 상세정보
	 */
	@GetMapping("/classDetail/{clsNo}")
	public String classDetail(Model model, @PathVariable("clsNo") int clsNo) {
		
		model.addAttribute("classDetail", classService.selectClassDtail(clsNo));
		model.addAttribute("titlePicture", classService.selectClassPic(clsNo));
		model.addAttribute("classPiece", classService.selectClassPiece(clsNo));
		model.addAttribute("curriculum", classService.selectCurriculum(clsNo));
		model.addAttribute("rejectReason", classManage.selectRejectReason(clsNo));
		model.addAttribute("cheeringCount", classManage.selectCheeringCount(clsNo));

		return "teacher/classManage/t_classDetail";
	}
	
	/**
	 * 클래스 스케쥴 별 참여정보 조회(이해승)
	 * @param model
	 * @param classType 클래스타입
	 * @return 클래스 스케쥴
	 */
	@GetMapping("/studentManagement")
	public String attendanceManageMent(Model model, @RequestParam(defaultValue = "1") int currentPage, @RequestParam Map<String,String> info) {
		System.out.println("클래스 참여정보 : " + info);
		String pageName = ""; 
		if(info.get("classType") != null && info.get("classType").equals("R")) {
			
			/* 정규클래스 스케쥴*/
			ClassScheduleInfoDTO regularClassinfo = classManage.selectRegularScheduleinfo(Integer.parseInt(info.get("clsNo")));
			ClassScheduleInfoDTO classApplyInfo = classManage.selectRegularApplyCount(regularClassinfo.getScheduleNo());
			if(classApplyInfo != null) {
				regularClassinfo.setApplyCount(classApplyInfo.getApplyCount());
			}
			model.addAttribute("regularInfo", regularClassinfo);
			model.addAttribute("applyUserInfoList",classManage.selectApplyUserInfo(((Integer)regularClassinfo.getScheduleNo()).toString()));
			model.addAttribute("existingInfo", classManage.selectExistingInfo(regularClassinfo.getScheduleNo()));
			model.addAttribute("clsNo", Integer.parseInt(info.get("clsNo")));
			
			pageName = "teacher/classManage/t_classAttendanceDetaiRegularl";
		} else {
			
			/* 원데이클래스 스케쥴 리스트*/
			pageInfo = PageNation.getPageInfo(currentPage, boardService.selectScheduleCount(Integer.parseInt(info.get("clsNo"))), 10, 5);
			
			classInfo.setClsNo(Integer.parseInt(info.get("clsNo")));
			classInfo.setPageInfo(pageInfo);
			
			model.addAttribute("pageInfo", pageInfo);
			model.addAttribute("clsNo", classInfo.getClsNo());
			/* 클래스의 스케쥴 리스트 조회*/
			List<ClassScheduleInfoDTO> onedayInfoList = classManage.selectOneDayScheduleList(classInfo);

			/* 클래스의 신청인원 수 조회*/
			List<ClassScheduleInfoDTO> applyList = classManage.selectOnedayApplyCount(onedayInfoList);
			
			/* 병합 */
			Map<Integer,Integer> addInfo= new HashMap<>();
			
			for(int i = 0; i < applyList.size(); i++) {
				addInfo.put(applyList.get(i).getScheduleNo(), applyList.get(i).getApplyCount());
			}
			
			for(int i = 0; i < onedayInfoList.size(); i++) {
				if(addInfo.get(onedayInfoList.get(i).getScheduleNo()) != null) {
					onedayInfoList.get(i).setApplyCount(addInfo.get(onedayInfoList.get(i).getScheduleNo()));
				}
			}
			model.addAttribute("onedayInfo", onedayInfoList);
			pageName = "teacher/classManage/t_classAttendance";
		}
		model.addAttribute("classType", info.get("classType"));

		
		return pageName;
	}
	
	/**
	 * 원데이클래스 스케쥴별 신청정보(이해승)
	 * @param model
	 * @param scheduleNo 스케쥴번호
	 * @return 
	 */
	@GetMapping("/oneDayAttendanceList")
	public String oneDayAttendancdManange(Model model, @RequestParam HashMap<String,String> info) {
		
		model.addAttribute("applyInfoList", classManage.selectApplyUserInfo((String)info.get("scheduleNo")));
		model.addAttribute("scheduleNo",info.get("scheduleNo"));
		model.addAttribute("classType", info.get("classType"));
		model.addAttribute("clsNo", info.get("clsNo"));
		model.addAttribute("classDate", info.get("classDate"));
		return "teacher/classManage/t_classAttendanceDetail";
	}
	
	/**
	 * 원데이 클래스 출석상태 update(이해승)
	 * @param model
	 * @param allApplyNo
	 * @param checkedApplyNo
	 * @return
	 */
	@PostMapping("/oneDayAttendanceUpdate")
	public String oneDayAttendanceUpdate(Model model,@RequestParam("allApplyNo") int[] allNo, @RequestParam("checkedApplyNo") @Nullable int[] checkedNo, @RequestParam int scheduleNo,@RequestParam HashMap<String,String> info) {
		
		HashMap<String, Object> applyNoList= new HashMap<>();
		
		applyNoList.put("allApplyNo", allNo);
		applyNoList.put("checkedApplyNo", checkedNo);
		classManage.modifyOndeDayAttendanceStatus(applyNoList);
		
		return "redirect:/teacher/oneDayAttendanceList?scheduleNo=" + scheduleNo + "&clsNo="+info.get("clsNo")+"&classType="+info.get("classType") + "&classDate="+info.get("classDate");
	}
	
	
	/**
	 * 정규클래스 출석관리(이해승)
	 * @param model
	 * @param attendanceInfo
	 * @param scheduleNo
	 * @param attendanceDate
	 * @return
	 */
	@PostMapping("/regularAttendance")
	public String regularAttendanceUpdate(Model model, @RequestParam @Nullable String attendanceInfo,@RequestParam int scheduleNo, @RequestParam String attendanceDate, @RequestParam String clsNo, @RequestParam("lastCount") int lastCount) {
		
		HashMap<String, Object> attendInfo = new HashMap<>();
		
		String applyNo = "";
		String userNo = "";
		int classStep = 0;
		
		/* 1. 출석인원은 없지만 수업은 진행한 경우*/
		if(attendanceInfo == null) {
			userNo = "0";
			applyNo = "0";
			classStep = lastCount + 1;
			
		} else if(attendanceInfo != null && attendanceInfo.length() >0) {
			/*2. 출석인원이 있는경우*/ 
			String[] infoList = attendanceInfo.split(",");
			for(int i = 0; i < infoList.length; i++) {
			
				String[] oneInfo = infoList[i].split("/");
				if(i != (infoList.length -1 )) {
				
					applyNo += oneInfo[1] + ",";
					userNo += oneInfo[2] + ",";
				} else {
					classStep = Integer.parseInt(oneInfo[0]);
					applyNo += oneInfo[1];
					userNo += oneInfo[2];
				}
			}
			String[] updateList = applyNo.split(",");
		
			classManage.updateRegularApplyStatus(updateList);
		}
			
		attendInfo.put("classStep", classStep);
		attendInfo.put("applyNo", applyNo);
		attendInfo.put("userNo", userNo);
		attendInfo.put("attendanceDate", java.sql.Date.valueOf(attendanceDate));
		attendInfo.put("scheduleNo", scheduleNo);
		classManage.insertRegularClassAttendance(attendInfo);
		model.addAttribute("clsNo", clsNo);
		
		return "redirect:/teacher/studentManagement?classType=R&clsNo="+clsNo;
	}
	
	/* 정산관리(강현우) */
	@GetMapping("/teacherBalanceList")
	public String teacherBalanceList(HttpSession session, Model model, @RequestParam(defaultValue = "1") int currentPage) {
		
		int teacherNo = (Integer) session.getAttribute("teacherNo");
		
		/* 페이징 처리 */
		PageInfoDTO pageInfo = PageNation.getPageInfo(currentPage, myPageService.selectBalanceCount(), 5, 5);
		model.addAttribute("pageInfo", pageInfo);
		
		/* 문의사항 목록 검색 */
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("teacherNo", teacherNo);
		map.put("pageInfo", pageInfo);
		
		/* 정산내역 조회 */
		model.addAttribute("balanceList", myPageService.selectBalanceList(map));
		
		return "teacher/balanace/t_balanceList";
	}
	
	/* 문의하기(강현우) */
	@GetMapping("/teacherInquiry")
	public String teacherInquiry() {
	
		return "teacher/reportInquiry/t_Inquiry";
	}

	/**
	 * 문의글 작성(이해승)
	 * @return
	 */
	@PostMapping("/inquiryWrite")
	public String inquiryWrite(Model model, @ModelAttribute QuestionDTO content, HttpSession session) {
		
		int teacherNo = (Integer)session.getAttribute("teacherNo");
		content.setQuestionId(Integer.toString(teacherNo));
		boardService.insertAdminQuestion(content);
		boardService.insertAdminQuestionHistory(content);
		
		return "redirect:/teacher/teacherInquiryList";
	}
	
	/**
	 * 문의목록조회(이해승)
	 * @param session
	 * @param model
	 * @param currentPage
	 * @return
	 */
	@GetMapping("/teacherInquiryList")
	public String teacherInquiryList(HttpSession session, Model model, @RequestParam(defaultValue = "1") int currentPage, @RequestParam HashMap<String, Object> searchInfo) {
		
		int teacherNo = (Integer) session.getAttribute("teacherNo");
		searchInfo.put("teacherNo", teacherNo);
		pageInfo = PageNation.getPageInfo(currentPage, boardService.selectAdminQnACount(searchInfo), 10, 5);
		
		searchInfo.put("pageInfo", pageInfo);
		searchInfo.put("teacherNo", teacherNo);
		
		if(searchInfo.get("inquiryReply") != null) {
			
			model.addAttribute("inquiryReply",searchInfo.get("inquiryReply"));
		}
		model.addAttribute("adminQnAList",boardService.selectAdminQnAList(searchInfo));
		model.addAttribute("pageInfo", pageInfo);
		
		return "teacher/reportInquiry/t_inquiryList";
	}
	
	/**
	 * 관리자문의내용상세조회(이해승)
	 * @param model
	 * @param serachInfo
	 * @return
	 */
	@GetMapping("/teacherInquiryDetail")
	public String teacherInquiryDetail(Model model, @RequestParam Map<String, String> serachInfo) {
		
		model.addAttribute("QnADetail",boardService.selectQnADetail(serachInfo));
		
		return "teacher/reportInquiry/t_inquiryDetail";
	}
	
	/* 자주 묻는 질문(강현우) */
	@GetMapping("/teacherFAQ")
	public String teacherFAQ() {
		
		return "teacher/reportInquiry/t_FAQ";
	}
	
	/**
	 * 공지상세보기(이해승)
	 * @param model
	 * @param noticeNo
	 * @return
	 */
	@GetMapping("/noticeDetail")
	public String noticeDetail(Model model, @RequestParam int noticeNo) {
		
		model.addAttribute("noticeDetail", boardService.selectNoticeDetail(noticeNo));
		
		return "teacher/classManage/t_classNotice";
	}
	
	/**
	 * 고객이 클래스에 한 문의리스트(이해승)
	 * @param model
	 * @param classInfo
	 * @return
	 */
	@GetMapping("/userInquiry")
	public String userInquiryList(Model model,@RequestParam HashMap<String,Object> classInfo, @RequestParam(defaultValue = "1") int currentPage) {
		System.out.println(classInfo);
		pageInfo = PageNation.getPageInfo(currentPage, boardService.selectUserInquiryCount(classInfo), 10, 5);
		classInfo.put("pageInfo", pageInfo);
		model.addAttribute("inquiryList", boardService.selectinquiryList(classInfo));
		model.addAttribute("classType", classInfo.get("classType"));
		model.addAttribute("pageInfo",pageInfo);
		model.addAttribute("clsNo",classInfo.get("clsNo"));
		model.addAttribute("replyStatus", classInfo.get("replyStatus"));

		return "teacher/classManage/t_classInquiry";
	}
	
	/**
	 * 고객이 클래스에 한 문의 상세(이해승)
	 * @param model
	 * @param inquiryInfo
	 * @return
	 */
	@GetMapping("/userInquiryDetail")
	public String userInquiryDetail(Model model, @RequestParam HashMap<String, Object> inquiryInfo) {
		
		model.addAttribute("inquiry", boardService.selectOneInquiry(inquiryInfo));
		model.addAttribute("info", inquiryInfo);
	
		return "teacher/classManage/t_classInquiryDetail";
	}
	
	/**
	 * 고객이 클래스에 한 문의 답변(이해승)
	 * @param model
	 * @param answer
	 * @param inquiryInfo
	 * @return
	 */
	@PostMapping("/inquiryAnswer")
	public String inquiryAnswer(Model model, @ModelAttribute InquiryAnswerDTO answer, @RequestParam HashMap<String, Object> inquiryInfo) {
		System.out.println("여기는 답변작성 :  " + inquiryInfo);
		int result = boardService.insertInquiryAnswer(answer);
		if(result > 0) {
			model.addAttribute("message", "답변작성성공!");
		} else {
			model.addAttribute("message", "답변작성실패!");
		}
		model.addAttribute("queNo", inquiryInfo.get("queNo"));
		model.addAttribute("classType", inquiryInfo.get("classType"));
		model.addAttribute("clsNo", inquiryInfo.get("clsNo"));
	
		return "redirect:/teacher/userInquiryDetail";
	}
	
	/**
	 * 신고페이지로이동
	 * @param model
	 * @param info
	 * @return
	 */
	@GetMapping("/reportUser")
	public String reportUserPage(Model model, @RequestParam HashMap<String, Integer> info) {
		
		model.addAttribute("userNo", info.get("userNo"));
		model.addAttribute("clsNo", info.get("clsNo"));
		
		return "teacher/reportInquiry/t_reportWrite";
	}
	
	/**
	 * 신고글 작성(이해승)
	 * @param session
	 * @param model
	 * @param reportInfo
	 * @param clsNo
	 * @return
	 */
	@PostMapping("/reportWrite")
	public String reportWrite(HttpSession session, RedirectAttributes rttr, @ModelAttribute UserReportDTO reportInfo, @RequestParam int clsNo) {
		
		reportInfo.setReportType("강사");
		reportInfo.setReportFromNo((Integer)session.getAttribute("teacherNo"));
		reportInfo.setStatus("N");
		int result = boardService.insertReportUser(reportInfo);
		
		if(result > 0) {
			
			rttr.addFlashAttribute("message", "신고가 정상적으로 접수되었습니다.");
		} else {
			
			rttr.addFlashAttribute("message", "신고 작성에 실패하였습니다.");
		}
		return "redirect:/teacher/classDetail/"+clsNo;
	}

	/**
	 * 클래스 리뷰목록 조회(이해승)
	 * @param info 클래스 정보
	 * @param currentPage 현재 페이지
	 * @return
	 */
	@GetMapping("/classReviewList")
	public String classReviewList(Model model, @RequestParam HashMap<String,String> info, @RequestParam(value = "currentPage",defaultValue = "1") int currentPage) {
		
		int reviewCount = classManage.selectReviewCount(info.get("clsNo"));
		pageInfo = PageNation.getPageInfo(currentPage, reviewCount, 5, 5);
		
		HashMap<String, Object> searchInfo = new HashMap<String, Object>();
		
		searchInfo.put("pageInfo", pageInfo);
		searchInfo.put("clsNo", info.get("clsNo"));
		
		model.addAttribute("classType",info.get("classType"));
		model.addAttribute("clsNo", info.get("clsNo"));
		model.addAttribute("reviewCount",reviewCount);
		model.addAttribute("avgScore", classManage.selectReviewAvgScore(info.get("clsNo")));
		model.addAttribute("reviewList", classManage.selectReviewList(searchInfo));
		
		return "teacher/classManage/t_classReview";
	}
	
	/**
	 * 리뷰답변 작성(이해승)
	 * @param session
	 * @param rttr
	 * @param model
	 * @param reviewInfo
	 * @param info
	 * @return
	 */
	@PostMapping("/reviewAnswer")
	public String reviewAnswer(HttpSession session, RedirectAttributes rttr,Model model, @ModelAttribute ReviewAnswerDTO reviewInfo, @RequestParam HashMap<String, String> info) {
		
		System.out.println(info);
		reviewInfo.setTeNo((Integer)session.getAttribute("teacherNo"));
		int result = classManage.insertReviewAnswer(reviewInfo);
		
		if(result > 0) {
			
			model.addAttribute("message","답변이 정상적으로 등록되었습니다.");
		} else {
			model.addAttribute("message","답변등록에 실패했습니다.");
		}
		
		model.addAttribute("clsNo", info.get("clsNo"));
		model.addAttribute("classType", info.get("classType"));
		model.addAttribute("currentPage", info.get("currentPage"));
		
		return "redirect:/teacher/classReviewList?clsNo="+info.get("clsNo")+"&classType="+info.get("classType")+"&currentPage="+info.get("currentPage");
	}
}
