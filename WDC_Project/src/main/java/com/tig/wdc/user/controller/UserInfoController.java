package com.tig.wdc.user.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ThreadLocalRandom;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.tig.wdc.common.Encryption;
import com.tig.wdc.common.PageNation;
import com.tig.wdc.model.dto.PageInfoDTO;
import com.tig.wdc.model.dto.TeacherInfoDTO;
import com.tig.wdc.teacher.model.service.TeacherInfoService;
import com.tig.wdc.user.model.dto.UserCouponDTO;
import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.user.model.dto.UserInfoDTO;
import com.tig.wdc.user.model.dto.UserLikeClassDTO;
import com.tig.wdc.user.model.dto.UserReviewDTO;
import com.tig.wdc.user.model.service.UserClassService;
import com.tig.wdc.user.model.service.UserInfoService;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

/**
 * @author 민연준 
 * 유저 회원가입, 로그인,로그아웃, 아이디찾기, 비밀번호 찾기, 강사정보수정용, 참여진행/완료/예정 클래스조회 / 찜 및 응원 클래스 조회용 컨트롤러
 */
@Controller
@RequestMapping("/user/mypage/*")
@SessionAttributes("userNo")
public class UserInfoController {

	private final UserInfoService infoService;
	private final UserClassService classService;
	private final BCryptPasswordEncoder passwordEncoder;
	private PageInfoDTO pageInfo;


	@Autowired
	public UserInfoController(UserInfoService infoService, UserClassService classService,
			BCryptPasswordEncoder passwordEncoder, PageInfoDTO pageInfo) {
		this.infoService = infoService;
		this.classService = classService;
		this.passwordEncoder = passwordEncoder;
		this.pageInfo = pageInfo;
	}

	/**
	 * 마이페이지 이동용 메소드
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@GetMapping("mypageMain")
	public String userMypage(Model model, HttpSession session) {

		UserInfoDTO userInfoDTO = new UserInfoDTO();
		int userNo = (Integer) session.getAttribute("userNo");

		userInfoDTO = infoService.selectUser(userNo);

		model.addAttribute("userInfoDTO", userInfoDTO);

		if (session == null) {
			return "user/login/login";
		}

		return "user/mypage/mypage";
	}

	/**
	 * 로그인용 메소드
	 * 
	 * @author 연준
	 * @param model
	 * @param userInfoDTO
	 * @param rttr
	 * @return
	 */
	@PostMapping("login")
	public String userLogin(Model model, @ModelAttribute UserInfoDTO loginInfo, RedirectAttributes rttr) {
		UserInfoDTO userInfoDTO = infoService.findUserInfo(loginInfo);
		System.out.println("loginInfo : " + loginInfo);
		System.out.println("userInfoDTO : " + userInfoDTO);

		// 로그인 입력 정보와 회원정보 불일치 시 다시 로그인페이지로 이동
		String returnPage = "redirect:/user/login";

		if (userInfoDTO == null) {

			rttr.addFlashAttribute("message", "등록된 아이디가 없습니다.");
//        암호화 후 적용
		} else if(!passwordEncoder.matches(loginInfo.getUserPwd(), userInfoDTO.getUserPwd())) {
//		} else if (!loginInfo.getUserPwd().equals(userInfoDTO.getUserPwd())) {

			rttr.addFlashAttribute("message", "비밀번호가 일치하지 않습니다.");
		} else if ("Y".equals(userInfoDTO.getQuitYn())) {

			rttr.addFlashAttribute("message", "탈퇴된 아이디입니다.");
		} else if ("Y".equals(userInfoDTO.getBlockYn())) {

			rttr.addFlashAttribute("message", "차단된 아이디입니다. 관리자에게 문의하세요");
		} else {

			// 로그인 입력 정보와 회원정보 일치 시 메인페이지 핸들러로 이동
			model.addAttribute("userNo", userInfoDTO.getUserNo());

			returnPage = "redirect:/";
		}
		return returnPage;
	}

	/**
	 * 로그아웃용 메소드
	 * 
	 * @SessionAttributes로 생성한 세션은 SessionStatus의 setComplete로 제거해 준다.
	 * @param model
	 * @param session
	 * @param sessionStatus
	 * @return
	 */
	@GetMapping("logout")
	public String logout(Model model, HttpSession session, SessionStatus sessionStatus) {

		sessionStatus.setComplete();

		System.out.println("로그아웃 으로 넘어옴");

		String returnPage = "redirect:/user/login";
		return returnPage;
	}

	/**
	 * 아이디 찾기 페이지 이동용 메소드
	 * 
	 * @return
	 */
	@GetMapping("findId")
	public String findId() {
		return "user/login/findID";
	}

	@PostMapping(value = "certification", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String teacherCertification(HttpSession session, @RequestParam Map<String, String> result) {

		Gson gson = new GsonBuilder().setFieldNamingPolicy(FieldNamingPolicy.IDENTITY).serializeNulls()
				.disableHtmlEscaping().create();
		String returnMessage = "";

		if (result.get("type").equals("id")) {

			if (infoService.selectExistingInfo(result) == null) {
				returnMessage = "no";
				return gson.toJson(returnMessage);
			}
		} else if (result.get("type").equals("pwd")) {
			if (infoService.selectExistingInfo(result) == null) {
				returnMessage = "no";
				return gson.toJson(returnMessage);
			}
		}
		String api_key = "NCSAX4RAHGBBXBIW";
		String api_secret = "YOW3G0YEJU6PSDLB8PTB88A1SABBHLUE";
		int certificationNum = ThreadLocalRandom.current().nextInt(100000, 1000000);
		Message coolsms = new Message(api_key, api_secret);

		HashMap<String, String> params = new HashMap<String, String>();
		// 수신자
		params.put("to", result.get("phoneNumber"));
		// 발신자
		params.put("from", "01048147030");
		// 타입
		params.put("type", "SMS");
		// 내용
		params.put("text", "[우동클] 인증번호 [" + certificationNum + "]를 입력해주세요");
		// 버전
		params.put("app_version", "test app 1.2"); // application name and version
		// 인증내용 세션에 담기
		session.setAttribute("certificationNum", certificationNum);

		try {
			JSONObject obj = (JSONObject) coolsms.send(params);
			System.out.println(obj.toString());
			returnMessage = "인증번호 전송 성공!";

		} catch (CoolsmsException e) {
			returnMessage = "인증번호 전송 실패!";
			System.out.println(e.getMessage());
			System.out.println(e.getCode());
		}
		return gson.toJson(returnMessage);
	}

	@PostMapping(value = "messageCertification", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String messageCertification(HttpSession session, Model model, @RequestParam Map<String, String> check) {

		Gson gson = new GsonBuilder().setFieldNamingPolicy(FieldNamingPolicy.IDENTITY).serializeNulls()
				.disableHtmlEscaping().create();

		String returnMessage = "";

		if (Integer.parseInt(check.get("checkCount")) > 5) {
			returnMessage = "초과";
			session.invalidate();
		} else if (Integer.parseInt(check.get("checkNum")) == (Integer) session.getAttribute("certificationNum")) {
			returnMessage = "일치";
			session.invalidate();
		} else {
			returnMessage = "불일치";
		}

		return gson.toJson(returnMessage);
	}

	/**
	 * 아이디찾기
	 * 
	 * @param findId
	 * @return
	 */
	@PostMapping(value = "idFind", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String idFind(@RequestParam Map<String, String> findId) {

		Gson gson = new GsonBuilder().setFieldNamingPolicy(FieldNamingPolicy.IDENTITY).serializeNulls()
				.disableHtmlEscaping().create();

		return gson.toJson(infoService.selectExistingInfo(findId).getUserId());
	}

	/**
	 * 회원가입 페이지 이동용 메소드
	 * 
	 * @return
	 */
	@GetMapping("signup")
	public String signUp() {
		return "user/login/signup";
	}

	/**
	 * 아이디 중복확인
	 * 
	 * @param model
	 * @return
	 */
	@PostMapping(value = "idDoubleCheck/{checkId}", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String idDoubleCheck(Model model, @PathVariable("checkId") String checkId) {

		int result = 0;
		if (infoService.selectCheckDoubleId(checkId) != null) {

			result = 1;
		}
		Gson gson = new GsonBuilder().setFieldNamingPolicy(FieldNamingPolicy.IDENTITY).serializeNulls()
				.disableHtmlEscaping().create();

		return gson.toJson(result);
	}

	@PostMapping("signUpInsert")
	public String signUpMove(Model model, @ModelAttribute UserInfoDTO registInfo) {

		registInfo.setUserPwd(passwordEncoder.encode(registInfo.getUserPwd()));

		System.out.println(registInfo);
		int result = infoService.registUser(registInfo);

		if (result > 0) {
			model.addAttribute("message", "회원가입성공!");
		} else {
			model.addAttribute("message", "회원가입실패!");
		}

		return "user/login/login";
	}

	/**
	 * 쿠폰 목록 조회용 메소드
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@GetMapping("coupon")
	public String couponList(Model model, HttpSession session) {

		// 유저의 사용가능 쿠폰 리스트 조회
		int userNo = (Integer) session.getAttribute("userNo");
		List<UserCouponDTO> couponList = new ArrayList<UserCouponDTO>();

		couponList = infoService.selectCouponList(userNo);

		// 전체 쿠폰 리스트중 사용가능 쿠폰 리스트 조회
		List<UserCouponDTO> allUserCouponList = new ArrayList<UserCouponDTO>();
		allUserCouponList = infoService.selectAllUserCouponList();

		for (int i = 0; i < allUserCouponList.size(); i++) {
			// 해당 리스트의 쿠폰 번호 빼와서 카운트 조회
			UserCouponDTO alluserCouponDTO = new UserCouponDTO();
			alluserCouponDTO.setCpnNo(allUserCouponList.get(i).getCpnNo());
			alluserCouponDTO.setUserNo(userNo);

			// 해당 유저가 전체 쿠폰 넘버의 사용이력이 이력 테이블에 있는지 조회
			int allUserCouponCount = infoService.selectUseAllUserCoupon(alluserCouponDTO);
			System.out.println("쿠폰 넘버 : " + allUserCouponList.get(i).getCpnNo());

			// 사용하지 않았다면(카운트가 0이라면) 쿠폰 리스트에 해당 쿠폰 추가
			if (allUserCouponCount <= 0) {
				couponList.add(allUserCouponList.get(i));
			} else {
				System.out.println("넘어가");
			}
		}
		model.addAttribute("couponList", couponList);

		return "user/mypage/coupon";
	}

	/**
	 * 참여 예정 클래스 목록 조회용
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@GetMapping("scheduledClassList")
	public String scheduledClassList(Model model, HttpSession session) {
		
		int userNo= (Integer) session.getAttribute("userNo");
		
		List<UserClassDTO> scheduledClassList = new ArrayList<UserClassDTO>();
		
		// 1. 원데이용, 정규용 한번에 조회
		scheduledClassList = infoService.selectScheduledClassList(userNo);
		
		model.addAttribute("scheduledClassList",scheduledClassList);		
		return "user/mypage/scheduledClass";

	}
	
	/**
	 * 참여 진행중 클래스 목록 조회용 메소드
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@GetMapping("participatingClassList")
	public String participatingClassList(Model model, HttpSession session) {
		
		int userNo= (Integer) session.getAttribute("userNo");
		
		List<UserClassDTO> participatingClassList = new ArrayList<UserClassDTO>();
		
		// 1. 원데이 정규 한번에 조회
		participatingClassList = infoService.selectparticipatingClassList(userNo);
		
		model.addAttribute("participatingClassList",participatingClassList);
		System.out.println("participatingClassList : " + participatingClassList);
		
		return "user/mypage/participatingClass";
	}

	/**
	 * 참여 완료 and 취소(환불) 클래스 조회용 메소드
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@GetMapping("complateClassList")
	public String complateClassList(Model model, HttpSession session, @RequestParam(defaultValue = "1") int currentPage) {
		
		int userNo= (Integer) session.getAttribute("userNo");
		
		int countSelectCompleteClssCount = infoService.selectCompleteClssCount(userNo);
		int countSelectRefundClassCount = infoService.selectRefundClassCount(userNo);
		int sumCount = countSelectCompleteClssCount + countSelectRefundClassCount;
		
		//현재 페이지, 전체 게시글 수, 보여줄 게시글 수, 보여줄 버튼 수
		pageInfo = PageNation.getPageInfo(currentPage, sumCount, 8, 5);
		//페이지 정보를 담아옴
		model.addAttribute("pageInfo", pageInfo);
		pageInfo.setUserNo(userNo);
		
		List<UserClassDTO> complateClassList = new ArrayList<UserClassDTO>();
		
		complateClassList = infoService.selectComplateClassList(pageInfo);

		model.addAttribute("complateClassList",complateClassList);
		
		return "user/mypage/complateClass";

	}
	/**
	 * 진행/ 예정 예약 상세 조회용 메소드
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@GetMapping("userApplyClassDetail/{aplNo}")
	public String userApplyClassDetail(Model model, HttpSession session, UserClassDTO userClassDTO,
			@PathVariable("aplNo") int aplNo, HttpServletRequest request) {

		int userNo = (Integer) session.getAttribute("userNo");
		userClassDTO.setUserNo(userNo);
		userClassDTO.setAplNo(aplNo);

		UserClassDTO scheduleDetailUserClassDTO = new UserClassDTO();
		scheduleDetailUserClassDTO = infoService.selectScheduleDetail(userClassDTO);
		System.out.println("scheduleDetailUserClassDTO : " + scheduleDetailUserClassDTO);

		model.addAttribute("scheduleDetailUserClassDTO", scheduleDetailUserClassDTO);

		return "user/mypage/scheduledClass_detail";

	}

	/**
	 * 완료 클래스 예약 상세 조회 메소드
	 * 
	 * @param model
	 * @param session
	 * @param userClassDTO
	 * @param aplNo
	 * @return
	 */
	@GetMapping("userApplyComplateDetail/{aplNo}/{payStatus}")
	public String userApplyComplateDetail(Model model, HttpSession session, UserClassDTO userClassDTO,
			@PathVariable("aplNo") int aplNo, @PathVariable("payStatus") String payStatus) {

		int userNo = (Integer) session.getAttribute("userNo");
		userClassDTO.setUserNo(userNo);
		userClassDTO.setAplNo(aplNo);
		userClassDTO.setPayStatus(payStatus);

		System.out.println("userClassDTO : " + userClassDTO);

		UserClassDTO scheduleDetailUserClassDTO = new UserClassDTO();
		scheduleDetailUserClassDTO = infoService.selectScheduleDetail(userClassDTO);

		model.addAttribute("complateDetailUserClassDTO", scheduleDetailUserClassDTO);

		int reviewYn = infoService.selectReviewYn(aplNo);
		model.addAttribute("reviewYn", reviewYn);

		return "user/mypage/complateClass_detail";
	}

	/**
	 * 리뷰 인서트 메소드
	 * 
	 * @param model
	 * @param session
	 * @param aplNo
	 * @param userReviewDTO
	 * @return
	 */
	@PostMapping("ComplateClassReview/{aplNo}")
	public String writeReview(Model model, @RequestParam MultipartFile singleFile, HttpSession session,
			HttpServletRequest request, @PathVariable("aplNo") int aplNo, UserReviewDTO userReviewDTO) {

		// 리뷰 insert
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
		String originFileName = singleFile.getOriginalFilename(); // 원본 이름 저장
		String ext = originFileName.substring(originFileName.lastIndexOf(".")); // 확장자만 저장 (.png)
		String saveName = UUID.randomUUID().toString().replace("-", "") + ext; // 랜덤하게 파일 명을 지정하고 확장자 더해줌

		try {
			singleFile.transferTo(new File(filePath + "\\" + saveName));

			System.out.println(aplNo);

			userReviewDTO.setUserNo(userNo);
			userReviewDTO.setAplNo(aplNo);
			userReviewDTO.setReviewPic(saveName);

			int reviewWrite = infoService.insertReview(userReviewDTO);

			return "redirect:/user/mypage/complateClassList";

		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}

		return "redirect:/user/mypage/complateClassList";
	}

	@PostMapping("likeClass")
	@ResponseBody
	public String likeClass(Model model, HttpSession session, HttpServletRequest request) {

		int userNo = (Integer) session.getAttribute("userNo");
		int clsNo = Integer.parseInt(request.getParameter("clsNo"));

		UserLikeClassDTO likeClassDTO = new UserLikeClassDTO();
		likeClassDTO.setUserNo(userNo);
		likeClassDTO.setClsNo(clsNo);

		System.out.println(likeClassDTO);

		// 유저가 찜한 클래스인지 확인
		int likeStatus = infoService.selectLikeStatus(likeClassDTO);
		System.out.println("likeStatus : " + likeStatus);

		if (likeStatus == 0) {// 찜한 클래스가 아닌 상태

			// 찜을 취소한 기록이 있는지 확인
			int likeHistory = infoService.selectLikeHistory(likeClassDTO);

			if (likeHistory == 0) { // 찜한 기록이 없으면 새 찜 insert
				int insertLike = infoService.insertLike(likeClassDTO);

			} else { // 찜한 기록이 있으면 Y로 update
				likeClassDTO.setLikeStatus('N');
				int yesLike = infoService.updateLikeYn(likeClassDTO);
			}

			return Integer.toString(likeStatus);

		} else {// 찜한 상태이므로 상태 N으로 update
			likeClassDTO.setLikeStatus('Y');
			int noLike = infoService.updateLikeYn(likeClassDTO);

			return Integer.toString(likeStatus);
		}
	}

	/**
	 * 내가 찜 목록 클래스 조회
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@GetMapping("likeClassList")
	public String likeClassList(Model model, HttpSession session, @RequestParam(defaultValue = "1") int currentPage) {

		int userNo = (Integer) session.getAttribute("userNo");

		//현재 페이지, 전체 게시글 수, 보여줄 게시글 수, 보여줄 버튼 수
		pageInfo = PageNation.getPageInfo(currentPage, infoService.selectlikeClassCount(userNo), 8, 5);
		pageInfo.setUserNo(userNo);
		
		//페이지 정보를 담아옴
		model.addAttribute("pageInfo", pageInfo);
		
		//받아온 페이지 정보를 가지고 찜 목록 select
		List<UserClassDTO> likeClassDTOList = classService.selectMyLikeClassList(pageInfo);
		model.addAttribute("likeClassDTOList", likeClassDTOList);

		return "user/classList/likeClassList";
	}

	/**
	 * 응원한 목록 클래스 조회
	 * 
	 * @param model
	 * @param session
	 * @return
	 */
	@GetMapping("cheerClassList")
	public String cheerClass(Model model, HttpSession session) {

		int userNo = (Integer) session.getAttribute("userNo");

		UserClassDTO userClassDTO = new UserClassDTO();

		List<UserClassDTO> cheerClassDTOList = classService.selectMyCheerClassList(userNo);

		model.addAttribute("cheerClassDTOList", cheerClassDTOList);

		return "user/classList/cheerClassList";

	}

	/**
	 * 유저 탈퇴용 메소드
	 * 
	 * @param session
	 * @return
	 */
	@GetMapping("userWithdraw")
	public String userWithdraw(HttpSession session, SessionStatus sessionStatus) {

		int userNo = (Integer) session.getAttribute("userNo");

		int withdrawResult = classService.updateUserWithdraw(userNo);

		session.invalidate();
		sessionStatus.setComplete();

		return "user/login/login";
	}

	/**
	 * 유저 휴대폰 번호 변경 메소드
	 * 
	 * @param session
	 * @param model
	 * @param changePhone
	 * @return
	 */
	@PostMapping("changePhone")
	@ResponseBody
	public String changePhone(HttpSession session, HttpServletRequest request) {

		int userNo = (Integer) session.getAttribute("userNo");
		String phoneNum = request.getParameter("phoneNum");

		UserInfoDTO infoDTO = new UserInfoDTO();
		infoDTO.setUserNo(userNo);
		infoDTO.setPhone(phoneNum);

		int selectPhone = infoService.selectPhone(infoDTO);

		if (selectPhone == 0) { // 변경할 번호가 등록되어있지 않으면 update
			int updatePhone = infoService.updatePhone(infoDTO);

			return Integer.toString(selectPhone); // 0
		} else { // 번호가 등록되어있으면 변경불가

			return Integer.toString(selectPhone); // 1
		}
	}

	/**
	 * 유저 비밀번호 변경 메소드
	 * 
	 * @param session
	 * @param model
	 * @param changePwd
	 * @param checkPwd
	 * @return
	 */
	@PostMapping("changePwd")
	@ResponseBody
	public String changePwd(HttpSession session, HttpServletRequest request) {
		
		int userNo = (Integer) session.getAttribute("userNo");
		String newPwd = request.getParameter("newPwd");

		UserInfoDTO infoDTO = new UserInfoDTO();
		infoDTO.setUserNo(userNo);
		
         try {
            infoDTO.setUserPwd(passwordEncoder.encode(newPwd)); //비밀번호 암호화해서 값 전달
            
         }catch(Exception e){
            e.printStackTrace();
         }

         //새 비밀번호이므로 update
		 int updatePwd = infoService.updatePwd(infoDTO);
			
		 return Integer.toString(0); // 0
	}

}
