package com.tig.wdc.user.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.tig.wdc.common.Encryption;
import com.tig.wdc.model.dto.CurriculumDTO;
import com.tig.wdc.user.model.dao.UserInfoMapper;
import com.tig.wdc.user.model.dto.ClassApplyDTO;
import com.tig.wdc.user.model.dto.ClassPieceDTO;
import com.tig.wdc.user.model.dto.PaymentDTO;
import com.tig.wdc.user.model.dto.ScheduleDTO;
import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.user.model.dto.UserCouponDTO;
import com.tig.wdc.user.model.dto.UserInfoDTO;
import com.tig.wdc.user.model.dto.UserInquiryDTO;
import com.tig.wdc.user.model.dto.UserRefundDTO;
import com.tig.wdc.user.model.dto.UserReportDTO;
import com.tig.wdc.user.model.dto.UserReviewDTO;
import com.tig.wdc.user.model.service.UserClassService;

/**
 * @author SORA 
 * 클래스 상세보기 / 신청 / 결제 / 신고/ 환불 / 수료증 조회  / 응원 용 컨트롤러
 */
@Controller
@RequestMapping("/user/*")
public class UserClassDetailController {

	private final UserClassService classService;
	private final UserInfoMapper infoService;
	private final BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private Encryption aes;


	@Autowired
	public UserClassDetailController(UserClassService classService,UserInfoMapper infoService,BCryptPasswordEncoder passwordEncoder) {
		this.classService = classService;
		this.infoService = infoService;
		this.passwordEncoder = passwordEncoder;
	}

	/**
	 * 클래스 상세보기 정보 select
	 * 
	 * @param model
	 * @return
	 */
	@GetMapping("classDetail/{clsNo}")
	public String ClassDetail(HttpSession session, @PathVariable("clsNo") int clsNo, Model model) {

		// 클래스 정보 select
		UserClassDTO classDetail = new UserClassDTO();
		classDetail = classService.selectClassDtail(clsNo);
		model.addAttribute("classDetail", classDetail);
		if(classDetail.getDicsionStatus().equals("F")) {
			int cheerCount = classService.selectCheerCount(clsNo);
			model.addAttribute("cheerCount",cheerCount);
		}

		// 대표사진 3장 select
		List<UserClassDTO> classPic = new ArrayList<UserClassDTO>();
		classPic = classService.selectClassPic(clsNo);
		model.addAttribute("classPic", classPic);

		// 평점 select
		UserClassDTO classStar = new UserClassDTO();
		classStar = classService.selectClassStar(clsNo);
		model.addAttribute("classStar", classStar);
		
		//로그인 세션 값이 있으면 찜 상태 select
		if((Integer) session.getAttribute("userNo") != null) {
			
			int userNo = (Integer) session.getAttribute("userNo");
			
			//찜 상태 select
			UserClassDTO likeStatus = new UserClassDTO();
			likeStatus.setClsNo(clsNo);
			likeStatus.setUserNo(userNo);
			
			String likeYn = classService.selectLikeStatus(likeStatus);
			model.addAttribute("likeYn", likeYn);
			
		}

		// 완성작 select
		List<ClassPieceDTO> classPiece = new ArrayList<ClassPieceDTO>();
		classPiece = classService.selectClassPiece(clsNo);
		model.addAttribute("classPiece", classPiece);

		// 커리큘럼 select
		List<CurriculumDTO> curriculum = new ArrayList<CurriculumDTO>();
		curriculum = classService.selectCurriculum(clsNo);
		model.addAttribute("curriculum", curriculum);

		// 리뷰 select
		List<UserReviewDTO> review = new ArrayList<UserReviewDTO>();
		review = classService.selectReview(clsNo);
		model.addAttribute("review", review);

		// 문의 select
		List<UserInquiryDTO> qna = new ArrayList<UserInquiryDTO>();
		qna = classService.selectQnA(clsNo);
		model.addAttribute("qna", qna);
		
		// 클래스 스케줄 select
		List<ScheduleDTO> schedule = new ArrayList<ScheduleDTO>();
		schedule = classService.selectSchedule(clsNo);
		model.addAttribute("schedule", schedule);
		
		//원데이 클래스 스케줄의 최대 인원 select
		int oneDayMax = classService.selectOneDayMax(clsNo);
		model.addAttribute("oneDayMax", oneDayMax);
		
		//정규 클래스인 경우, 클래스 스케줄 select 
		if(classDetail.getClsType().equals("R")) {
			
			//클래스 정보 담아오기
			ScheduleDTO regularSchedule = new ScheduleDTO();
			regularSchedule = classService.selectRegularSchedule(clsNo);
			model.addAttribute("regularSchedule", regularSchedule);
			
			//정규 클래스인 경우, 현재 수강 신청 인원 select 
			ScheduleDTO scheduleDTO = classService.selectApplyPeople(regularSchedule);
			
			if(scheduleDTO == null) { //신청 인원이 없으면
				
				int applyCheck = regularSchedule.getMaxPeople(); //applyCheck = 정원
				model.addAttribute("applyCheck", applyCheck);
				System.out.println("신청 가능 인원 : " + applyCheck);

				
			} else {
				
				int applyCheck = regularSchedule.getMaxPeople() - scheduleDTO.getPeopleCount(); //남은인원(applyCheck) = 정원 - 현재 신청인원 
				model.addAttribute("applyCheck", applyCheck);
				System.out.println("신청 가능 인원 : " + applyCheck);
			}
		}

		return "user/classList/class_detail";
	}
	
	@PostMapping(value="classDetail/dateTimePicker", produces = "application/json; charset=utf-8" )
	@ResponseBody
	public String DateTimePicker(HttpSession session, Model model,
			@RequestParam("date") Date date, @RequestParam("clsNo") int clsNo, HttpServletRequest request) {
		System.out.println("날짜 확인 : " + date);
		ScheduleDTO scheduleDTO = new ScheduleDTO();
		scheduleDTO.setClsNo(clsNo);
		scheduleDTO.setScheduleDate(date);
		
		// 클래스 날짜에 맞는 시간 select
		List<ScheduleDTO> time = new ArrayList<ScheduleDTO>();
		time = classService.selectTime(scheduleDTO);

		Gson gson = new Gson();
		
		return gson.toJson(time);
	}
	
	@PostMapping(value="classDetail/peopleCount", produces = "application/json; charset=utf-8" )
	@ResponseBody
	public String PeopleCount(HttpSession session, Model model,
			@RequestParam("date") Date date, @RequestParam("clsNo") int clsNo, 
			@RequestParam("time") String time, HttpServletRequest request) {
		
		ScheduleDTO scheduleDTO = new ScheduleDTO();
		scheduleDTO.setClsNo(clsNo);
		scheduleDTO.setScheduleDate(date);
		scheduleDTO.setScheduleStart(time);
		
		//최대 인원 select
		int maxUserSize = classService.selectMaxUserSize(scheduleDTO);
		
		//스케쥴 신청 인원 select
		ScheduleDTO applyPeople = classService.selectPeople(scheduleDTO);
		
		if(applyPeople == null) {
			
			int peopleCount = maxUserSize;
			
			Gson gson = new Gson();
			
			return gson.toJson(peopleCount);
		}
			
		int peopleCount = maxUserSize - applyPeople.getPeopleCount();
		
		Gson gson = new Gson();
		
		return gson.toJson(peopleCount);
	}
	
	@PostMapping("inquiry/{clsNo}")
	public String ClassInquiry(HttpSession session, @PathVariable("clsNo") int clsNo, Model model, UserInquiryDTO userInquiryDTO) {
	
		//로그인 세션 값
		int userNo = (Integer) session.getAttribute("userNo");
		
		userInquiryDTO.setClsNo(clsNo);
		userInquiryDTO.setUserNo(userNo);
		
		// 문의 insert
		int inquiry = classService.insertInquiry(userInquiryDTO);
		
		return "redirect:/user/classDetail/{clsNo}";
	}

	/**
	 * 결제페이지 이동용 메소드
	 * 
	 * @author 연준
	 * @param session
	 * @return
	 */
	@PostMapping("payment")
	public String payment(HttpSession session, ScheduleDTO scheduleDTO, ClassApplyDTO classApplyDTO, Model model,
			UserClassDTO userClassDTO) {
		System.out.println("userClassDTO : " + userClassDTO.toString());
		System.out.println("scheduleDTO : " + scheduleDTO.toString());

//		
//		if (session == null) {
//			return "user/login/login";
//		}

		int userNo = (Integer) session.getAttribute("userNo");
		// 유저 넘버로 이름과 전화번호 조회
		UserInfoDTO userInfo = new UserInfoDTO();
		userInfo = classService.selectUserInfo(userNo);
		model.addAttribute("userInfo", userInfo);
		System.out.println("1. userInfo" + userInfo);

		
		// 유저 넘버로 보유 쿠폰 조회
		List<UserCouponDTO> couponList = new ArrayList<UserCouponDTO>();
		userClassDTO.setUserNo(userNo);
		couponList = classService.selectCouponList(userClassDTO);
		System.out.println("2.couponList :  " + couponList);
		
		// 전체 쿠폰 리스트중 사용가능 쿠폰 리스트 조회
		List<UserCouponDTO> allUserCouponList = new ArrayList<UserCouponDTO>();
		allUserCouponList = infoService.selectAllUserCouponList();
		
		for(int i = 0; i < allUserCouponList.size(); i++) {
			// 해당 리스트의 쿠폰 번호 빼와서  카운트 조회
			UserCouponDTO alluserCouponDTO = new UserCouponDTO();
			alluserCouponDTO.setCpnNo(allUserCouponList.get(i).getCpnNo());
			alluserCouponDTO.setUserNo(userNo);
		
			// 해당 유저가 전체 쿠폰 넘버의 사용이력이 이력 테이블에 있는지 조회
			int allUserCouponCount = infoService.selectUseAllUserCoupon(alluserCouponDTO);
			System.out.println("쿠폰 넘버 : " + allUserCouponList.get(i).getCpnNo());
			
			// 사용하지 않았다면(카운트가 0이라면) 쿠폰 리스트에 해당 쿠폰 추가
			if(allUserCouponCount <= 0) {
				couponList.add(allUserCouponList.get(i));
			}else {
				System.out.println("넘어가");
			}

		}
		model.addAttribute("couponList", couponList);
		System.out.println("3. couponList : " + couponList);
		
		// 스케줄 넘버 조회
		System.out.println("userClassDTO : " + userClassDTO);
		scheduleDTO.setClsNo(userClassDTO.getClsNo());
		scheduleDTO.setScheduleClsType(userClassDTO.getClsType());
		System.out.println("4. 스케줄넘버 조회 scheduleDTO2 : " + scheduleDTO);
		model.addAttribute("scheduleDTO", scheduleDTO);

		System.out.println("여기까진 옴?");
		ScheduleDTO paymentScheduleDTO = new ScheduleDTO();
		paymentScheduleDTO = classService.selectscheduleNo(scheduleDTO);
		// paymentScheduleDTO 가 왜 null?
		
		
		System.out.println("paymentScheduleDTO : " + paymentScheduleDTO);
		System.out.println("scheduleDTO3 : " + scheduleDTO);
		//System.out.println("paymentScheduleDTO : " + paymentScheduleDTO);
		
		model.addAttribute("classApplyDTO", classApplyDTO);
		// stringScheduleDate 용
		model.addAttribute("paymentScheduleDTO", paymentScheduleDTO);

		System.out.println("userClassDTO : " + userClassDTO);
		return "user/payment/payment";
	}

	/**
	 * 결제 완료 시 이동 페이지 및 결제 디비 인서트
	 * 
	 * @return
	 */
	@PostMapping("paymentSuccess")
	public String paymentSuccess(HttpServletRequest request, HttpSession session) {
		int userNo = (Integer) session.getAttribute("userNo");
		// 0 .쿠폰 no 가 0 이 아니라면 사용으로 업데이트
		int cpnNo = Integer.parseInt(request.getParameter("cpnNo"));
		System.out.println(request.getParameter("cpnNo") + "@@");
		System.out.println("cpnNo : " + cpnNo);
		
		// 0.1. 쿠폰 넘버로 유저 넘버를 조회해서 쿠폰넘버가 0이면 업데이트 X, 유저 올 쿠폰에 인서트
		UserCouponDTO forInsertAllUserCouponDTO  =  new UserCouponDTO();
		if(cpnNo != 0) {
			int cpnUserNo = classService.selectUserCpnNo(cpnNo);
			
			forInsertAllUserCouponDTO.setUserNo(userNo);
			forInsertAllUserCouponDTO.setCpnNo(cpnNo);
			
			if(cpnUserNo == 0) {
				int result =  classService.insertAllUserCoupon(forInsertAllUserCouponDTO);
			}else if (cpnNo != 0 && cpnUserNo != 0) {
				int updateResult = classService.updateCpnUseYn(cpnNo);
			}
		}

		// 1. 클래스 어플라이 인서트
		ClassApplyDTO paymentClassApplyDTO = new ClassApplyDTO();

		int scheduleNo = Integer.parseInt(request.getParameter("scheduleNo"));
		int ppl = Integer.parseInt(request.getParameter("ppl"));

		paymentClassApplyDTO.setUserNo(userNo);
		paymentClassApplyDTO.setScheduleNo(scheduleNo);
		paymentClassApplyDTO.setPpl(ppl);

		int classApplyInsertResult = classService.insertClassApply(paymentClassApplyDTO);

		// 2. 페이먼트 인서트
		PaymentDTO insertPaymentDTO = new PaymentDTO();
		int payPrice = Integer.parseInt(request.getParameter("payPrice"));

		insertPaymentDTO.setPayPrice(payPrice);
		insertPaymentDTO.setCpnNo(cpnNo);

		int paymentInsertResult = classService.insertPayment(insertPaymentDTO);
		System.out.println("페이먼트 인서트는 된다?");
		
		// 3. 수업료 관리 인서트
		int clsNo = Integer.parseInt(request.getParameter("clsNo"));
		insertPaymentDTO.setClsAplNo(clsNo);
		System.out.println("clsNo : " + clsNo);
		System.out.println("insertPaymentDTO : " + insertPaymentDTO);
		int tuitionManagementInsertResult = classService.insertTuitionManagement(insertPaymentDTO);

		// 클래스 어플라이랑 페이먼트 둘다 인서트 잘 됐다면 이동 -> ajax 라 필요 없음
		if (classApplyInsertResult + paymentInsertResult == 2) {
			String returnPage = "redirect:/user/mypage/scheduledClassList";

			return returnPage;
		}

		return "user/mypage/mypage";
	}

	/**
	 * 결제 완료후 참여 예정 페이지로 이동 메소드
	 * 
	 * @param session
	 * @return
	 */
	@GetMapping("paymentSuccessToBookCheckPage")
	public String paymentSuccessToBookCheckPage(HttpSession session) {

		String returnPage = "redirect:/user/mypage/scheduledClassList";

		return returnPage;
	}

	/**
	 * 신고 작성 페이지 이동용 메소드
	 * 
	 * @param session
	 * @return
	 */
	@GetMapping("userReport")
	public String userReport(HttpSession session, UserClassDTO userClassDTO, Model model) {

		int userNo = (Integer) session.getAttribute("userNo");
		userClassDTO.setUserNo(userNo);

		model.addAttribute("userClassDTO", userClassDTO);

		return "user/serviceCenter/report_write";
	}
	
	/**@author 연준
	 * 신고 인서트 후 페이지 이동
	 * @return
	 */
	@PostMapping("reportInsert")
	public String reportInsert(@RequestParam MultipartFile singleFile, Model model, HttpSession session,
			UserReportDTO userReportDTO, HttpServletRequest request) {
		int userNo = (Integer) session.getAttribute("userNo");

		/* 사진 추가할 경로 */
		// 루트 경로
		String root = request.getServletContext().getRealPath("resources");

		// 파일저장할 경로(없을 경우 생성)
		String filePath = root + "\\upload";
		File mkdir = new File(filePath);
		if (!mkdir.exists()) {
			mkdir.mkdirs();
		}

		/* 파일명 변경 처리 */
		String originFileName = singleFile.getOriginalFilename();
		String ext = originFileName.substring(originFileName.lastIndexOf("."));
		String saveName = UUID.randomUUID().toString().replace("-", "") + ext;


		/* 파일을 저장한다. */
		try {
			singleFile.transferTo(new File(filePath + "\\" + saveName));

			userReportDTO.setReportFromNo(userNo);
			userReportDTO.setReportPic(saveName);
			// 신고 사진/내용 인서트
			int insertResult = classService.insertReport(userReportDTO);
			// 신고 이력 인서트
			int historyInsertResult = classService.insertReportHistory(userReportDTO);

			if (insertResult == 1) {
				return "redirect:serviceCenter/report";
			}
		} catch (Exception e) {
			e.printStackTrace();

			/* 실패시 파일 삭제 */
			new File(filePath + "\\" + saveName).delete();
			model.addAttribute("message", "파일 업로드 실패!!!!");
		}
		return "redirect:serviceCenter/main";
	}

	/**
	 * 결제 취소 페이지  이동용 메소드
	 * @param session
	 * @param userClassDTO
	 * @param model
	 * @return
	 */
	@PostMapping("userRefund")
	public String userRefund(HttpSession session, UserClassDTO userClassDTO, Model model) {

		int userNo = (Integer) session.getAttribute("userNo");
		userClassDTO.setUserNo(userNo);
		System.out.println("userClassDTO : " + userClassDTO);

		// 유저넘버로 유저 정보 조회
		UserInfoDTO userDTO = new UserInfoDTO();
		userDTO = infoService.selectUser(userNo);
		System.out.println("userDTO : " + userDTO);
		
		// 스케줄 넘버로 환불금액 계산
		// 1. 스케줄 넘버로 맥스스텝, 총 회차수 계산
		UserRefundDTO userRefundDTO = new UserRefundDTO();
		if(userClassDTO.getClsType().equals("R")) {
			userRefundDTO = classService.selectRefundAmount(userClassDTO.getScheduleNo(),userClassDTO.getPayPrice());
		}
		System.out.println("userRefundDTO : " + userRefundDTO);
		model.addAttribute("userRefundDTO",userRefundDTO);
		model.addAttribute("userClassDTO",userClassDTO);
		model.addAttribute("userDTO",userDTO);
		
		return "user/payment/refund"; 
	}
	
	/**
	 * 환불용 인서트 메소드
	 * @param userClassDTO
	 * @param userRefundDTO
	 * @param session
	 * @param model
	 * @return
	 */
	@PostMapping("refundInsert")
	public String refundInsert(UserClassDTO userClassDTO, UserRefundDTO userRefundDTO, HttpSession session, Model model) {
		
		// 1. 예금주 조회
		int userNo= (Integer) session.getAttribute("userNo");
		UserInfoDTO userInfoDTO = new UserInfoDTO();
		userInfoDTO = classService.selectUserInfo(userNo);
		userRefundDTO.setAccountHolder(userInfoDTO.getUserName());
		
		int payNo = userClassDTO.getPayNo();
		System.out.println("payNo = " + payNo);
		
		// 2. 페이넘 받기		
		userRefundDTO.setPayNo(payNo);
		// 3. 리펀드 어마운트 set
		if(userClassDTO.getClsType().equals("O")) {
			userRefundDTO.setRefundAmount(userClassDTO.getPayPrice());
		}else if(userClassDTO.getClsType().equals("R")) {
			userRefundDTO.setRefundAmount(userRefundDTO.getRefundAmount());			
		}
		
		// 4. 계좌 번호 암호화
		System.out.println("암호화 전 : " + userRefundDTO.getRefundAccount());
		
		try {
			userRefundDTO.setRefundAccount(aes.encrypt(userRefundDTO.getRefundAccount()));
			System.out.println("암호화 후 : " + userRefundDTO.getRefundAccount());
			System.out.println("복호화 후 : " + aes.decrypt(userRefundDTO.getRefundAccount()));

		} catch (UnsupportedEncodingException | GeneralSecurityException e) {
			e.printStackTrace();
		}
		
		// 5. 해당 신청 ppl 0으로 초기화
		System.out.println("userClassDTO : " + userClassDTO);
		int resultUpdatePpl = classService.updatePplZero(userClassDTO.getAplNo());
		
		
		// payment cancel 테이블 인서트
		int result = classService.inserRefund(userRefundDTO);
		
		// payment -> 취소로 업데이트
		int paymentResult = classService.updatePaymentStatus(payNo);
		
		if(result + paymentResult == 2) {
			System.out.println("클래스 취소 성공");
			return "redirect:/user/mypage/complateClassList";
		}
		// 실패시 
		return "user/main/main";
	}
	
	/**
	 * 수료증 조회 메소드
	 * @param userClassDTO
	 * @param session
	 * @param model
	 * @return
	 */
	@PostMapping("certificate/user")
	public String selectCertificate(UserClassDTO userClassDTO, HttpSession session, Model model) {
		
		int userNo= (Integer) session.getAttribute("userNo");
		UserInfoDTO userInfoDTO = new UserInfoDTO();
		userInfoDTO = classService.selectUserInfo(userNo);
		System.out.println("userInfoDTO : " + userInfoDTO);
		System.out.println("userClassDTO : " + userClassDTO);
		
		
		long randomNum = ((long)((Math.random()*100000000) + 100000000) * (long)((Math.random()*1000) + 100));
		
		model.addAttribute("randomNum",randomNum);
		model.addAttribute("userClassDTO", userClassDTO);
		model.addAttribute("userInfoDTO", userInfoDTO);
		
		return "user/mypage/certificate";

	}
	
	/**
	 * 응원하기 메소드
	 * @param request
	 * @param session
	 * @return
	 */
	@PostMapping("cheerUp")
	@ResponseBody
	public String cheerUp(HttpServletRequest request, HttpSession session) {
		
		int userNo= (Integer) session.getAttribute("userNo");
		System.out.println("userNo : " + userNo);
		int clsNo = Integer.parseInt(request.getParameter("clsNo"));
		UserClassDTO cheerUpHisInsertDTO = new UserClassDTO();
		cheerUpHisInsertDTO.setUserNo(userNo);
		cheerUpHisInsertDTO.setClsNo(clsNo);
		
		//1. 해당 클래스 응원했는지 조회
		int cheerHistory = classService.selectCheerHistory(cheerUpHisInsertDTO);
		System.out.println("cheerHistory : " + cheerHistory);
		// 이클래스에 응원한적 있으면 cheerHistory = 1, 없으면 cheerHistory = 0.
		
		// 2. 오늘 응원했는지 조회  <- 카운트가 0인 경우에만 응원 가능
		int selectDoTodayCheer = classService.selectDoTodayCheer(userNo);
		
		// 에이작스에 반환할 결과
		int cheerUpResult = 0;
		
		// 해당 클래스 응원 카운트가 0이고 오늘 응원을 하지 않았다면
		if(cheerHistory == 0 && selectDoTodayCheer == 0) {
			cheerUpResult = classService.insertCheerHistory(cheerUpHisInsertDTO);
			// cheerUpResult = 1 ->응원 성공
			
		}else if(cheerHistory == 1) {
			cheerUpResult = 0;
			// 없으면 cheerUpResult = 0 으로 반환 (이미 응원하셨습니다)
		
		}else if(selectDoTodayCheer >= 1 ) {
			cheerUpResult = 2; // 오늘 응원 했습니다.
			
		}
		String result = Integer.toString(cheerUpResult); 
		return result; 

	}
}
