package com.tig.wdc.teacher.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.util.HashMap;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.tig.wdc.common.Encryption;
import com.tig.wdc.model.dto.TeacherInfoDTO;
import com.tig.wdc.teacher.model.service.TeacherInfoService;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

/**
 * @author 이해승 강사회원가입, 로그인, 아이디찾기, 비밀번호 찾기, 강사정보수정용 컨트롤러
 */
@Controller
@RequestMapping("/teacher/*")
@SessionAttributes("teacherNo")
public class TeacherInfoController {

	private final TeacherInfoService infoService;
	private final BCryptPasswordEncoder passwordEncoder;

	@Autowired
	private Encryption aes;

	@Autowired
	public TeacherInfoController(TeacherInfoService infoService, BCryptPasswordEncoder passwordEncoder) {
		this.infoService = infoService;
		this.passwordEncoder = passwordEncoder;
	}

	/**
	 * 회원가입페이지 이동
	 * 
	 * @return
	 */
	@GetMapping("registTeacher")
	public String registTeacher() {
		return "teacher/teacherInfo/t_signup";
	}

	/**
	 * 강사로그인
	 * 
	 * @param model
	 * @param loginInfo 로그인정보
	 * @param rttr      로그인 결과 메세지
	 * @return
	 */
	@PostMapping("teacherSignIn")
	public String teacherSignIn(Model model, @ModelAttribute TeacherInfoDTO loginInfo, RedirectAttributes rttr) {

		TeacherInfoDTO teacherInfo = infoService.findteacherInfo(loginInfo);

		// 로그인 입력 정보와 회원정보 불일치 시 다시 로그인페이지로 이동
		String returnPage = "redirect:/teacher";

		if (teacherInfo == null) {

			rttr.addFlashAttribute("message", "등록된 아이디가 없습니다.");
		} else if(!passwordEncoder.matches(loginInfo.getTeacherPwd(), teacherInfo.getTeacherPwd())) {
			rttr.addFlashAttribute("message", "비밀번호가 일치하지 않습니다.");
		} else if ("Y".equals(teacherInfo.getTeacherQuitStatus())) {
			rttr.addFlashAttribute("message", "탈퇴된 아이디입니다.");
		} else if ("Y".equals(teacherInfo.getTeacherBlockStatus())) {
			rttr.addFlashAttribute("message", "신고에 의해 차단된 아이디입니다. 관리자에게 문의하세요");
		} else {
			// 로그인 입력 정보와 회원정보 일치 시 메인페이지 핸들러로 이동
			model.addAttribute("teacherNo", teacherInfo.getTeacherNo());
			returnPage = "redirect:main";
		}
		return returnPage;
	}

	/**
	 * 강사 프로필 수정
	 * 
	 * @param teacherPic
	 * @param request
	 * @param rttr
	 * @return
	 */
	@PostMapping("updateProfile")
	public String updateProfile(@RequestParam("thumbnailImg1") MultipartFile teacherPic, HttpServletRequest request,
			RedirectAttributes rttr) {

		// 강사 소개글
		String saveName = null;
		String originFileName = teacherPic.getOriginalFilename();

		String intro = request.getParameter("teacherIntro");
		// 업로드 된 사진이 있으면 새로 저장
		if (originFileName != null && originFileName.length() != 0) {

			String root = request.getSession().getServletContext().getRealPath("resources");

			String filePath = root + "\\upload";
			File mkdir = new File(filePath);

			if (!mkdir.exists()) {
				mkdir.mkdirs();
			}

			String ext = originFileName.substring(originFileName.lastIndexOf("."));
			saveName = UUID.randomUUID().toString().replace("-", "") + ext;

			try {
				teacherPic.transferTo(new File(filePath + "\\" + saveName));

				TeacherInfoDTO profileInfo = new TeacherInfoDTO();
				profileInfo.setTeacherPicture(saveName);
				profileInfo.setTeacherIntro(intro);
				profileInfo.setTeacherNo((Integer) request.getSession().getAttribute("teacherNo"));

				int result = infoService.updateTeacherProfile(profileInfo);

				if (result > 0) {
					rttr.addFlashAttribute("profileMessage", "회원정보 수정 성공!");
				} else {
					rttr.addFlashAttribute("profileMessage", "회원정보 수정 실패!");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (request.getParameter("beforePic") != null) {
			// 기존 사진이 있는 경우 기존사진 그대로 유지
			saveName = request.getParameter("beforePic");

			TeacherInfoDTO profileInfo = new TeacherInfoDTO();
			profileInfo.setTeacherPicture(saveName);
			profileInfo.setTeacherIntro(intro);
			profileInfo.setTeacherNo((Integer) request.getSession().getAttribute("teacherNo"));

			int result = infoService.updateTeacherProfile(profileInfo);

			if (result > 0) {
				rttr.addFlashAttribute("profileMessage", "회원정보 수정 성공!");
			} else {
				rttr.addFlashAttribute("profileMessage", "회원정보 수정 실패!");
			}
		}

		return "redirect:main";
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

	/**
	 * 인증문자보내기
	 * @param session
	 * @param result
	 * @return
	 */
	@PostMapping(value="certification",produces ="application/json; charset=UTF-8")
	@ResponseBody 
	public String teacherCertification(HttpSession session, @RequestParam Map<String,String> result) {

		Gson gson = new GsonBuilder().setFieldNamingPolicy(FieldNamingPolicy.IDENTITY).serializeNulls().disableHtmlEscaping().create();
	    String returnMessage = "";

	    if(result.get("type").equals("id")) {

	    	if(infoService.selectExistingInfo(result) == null) {
	    		returnMessage = "no";
	    		return gson.toJson(returnMessage);
	    	} 	
		} else if(result.get("type").equals("pwd")) {
	    	if(infoService.selectExistingInfo(result) == null) {
	    		returnMessage = "no";
	    		return gson.toJson(returnMessage);
	    	} 
		}
		String api_key = "NCSAX4RAHGBBXBIW"; 
		String api_secret =	"YOW3G0YEJU6PSDLB8PTB88A1SABBHLUE"; 
		int certificationNum = ThreadLocalRandom.current().nextInt(100000, 1000000);
	    Message coolsms = new Message(api_key, api_secret);

	    HashMap<String, String> params = new HashMap<String, String>();
	    //수신자
	    params.put("to", result.get("phoneNumber"));
	    //발신자
	    params.put("from", "01048147030");
	    //타입
	    params.put("type", "SMS");
	    //내용
	    params.put("text", "[우동클] 인증번호 ["+ certificationNum +"]를 입력해주세요");
	    //버전
	    params.put("app_version", "test app 1.2"); // application name and version
	    //인증내용 세션에 담기
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

	/**
	 * 문자인증
	 * @param session
	 * @param model
	 * @param check
	 * @return
	 */
	@PostMapping(value = "messageCertification", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String messageCertification(HttpSession session, Model model, @RequestParam Map<String,String> check) {

		Gson gson = new GsonBuilder().setFieldNamingPolicy(FieldNamingPolicy.IDENTITY).serializeNulls()
				.disableHtmlEscaping().create();

		String returnMessage = "";

		if(Integer.parseInt(check.get("checkCount") )> 5) {
			returnMessage = "초과";
			session.invalidate();
		} else if(Integer.parseInt(check.get("checkNum")) == (Integer) session.getAttribute("certificationNum")) {
			returnMessage = "일치";
			session.invalidate();
		} else {
			returnMessage = "불일치";
		}

		return gson.toJson(returnMessage);
	}

	/**
	* 강사회원가입
	* 
	* @param model
	* @return
	*/
	@PostMapping("signUp")
	public String signUpMove(Model model, @ModelAttribute TeacherInfoDTO registInfo ) {

		try {
			registInfo.setTeacherPwd(passwordEncoder.encode(registInfo.getTeacherPwd()));
			registInfo.setTeacherIdNo(aes.encrypt(registInfo.getTeacherIdNo()));
			registInfo.setTeacherAccountNo(aes.encrypt(registInfo.getTeacherAccountNo()));

			System.out.println(registInfo);
			int result = infoService.registTeacher(registInfo);

			if(result > 0) {
				model.addAttribute("message", "회원가입성공!");
			} else {
				model.addAttribute("message", "회원가입실패!");
			}
		} catch (UnsupportedEncodingException | GeneralSecurityException e) {
			e.printStackTrace();
		}

		return "teacher/teacherInfo/t_login";
	}

	/**
	 * 아이디 찾기 화면이동
	 * @return
	 */
	@GetMapping("findId")
	public String moveFindIdPage() {
		return "teacher/teacherInfo/t_findID";
	}

	/**
	 * 아이디 찾기
	 * @param findId
	 * @return
	 */
	@PostMapping(value="idFind",produces ="application/json; charset=UTF-8")
	@ResponseBody 
	public String idFind(@RequestParam Map<String,String> findId) {

		Gson gson = new GsonBuilder().setFieldNamingPolicy(FieldNamingPolicy.IDENTITY).serializeNulls().disableHtmlEscaping().create();

		return gson.toJson(infoService.selectExistingInfo(findId).getTeacherId());
	}
	/**
	 * 비밀번호 찾기 화면으로 이동
	 * @return
	 */
	@GetMapping("findPWD")
	public String moveFindPwdPage() {
		return "teacher/teacherInfo/t_findPWD";
	}

	/**
	 * 비밀번호 찾기 
	 * @param model
	 * @param info
	 * @return 비밀번호 설정 화면으로 이동
	 */
	@PostMapping("setNewPwdPage")
	public String movePwdSettingPage(Model model,@RequestParam Map<String, String> info) {
		info.put("type", "pwd");
		model.addAttribute("teacherNo", infoService.selectExistingInfo(info).getTeacherNo());

		return "teacher/teacherInfo/t_findPWDsetting";

	}

	/**
	 * 새비밀번호 설정
	 * @param rttr 
	 * @param info
	 * @return
	 */
	@PostMapping("settingNewPwd")
	public String settingNewPwd(RedirectAttributes rttr, @ModelAttribute TeacherInfoDTO info) {
		System.out.println("변경전 : " + info);
		info.setTeacherPwd(passwordEncoder.encode(info.getTeacherPwd()));
		System.out.println("변경후 " + info);
		int result = infoService.modifyTeacherPwd(info);
		rttr.addFlashAttribute("message", "비밀번호가 정상적으로 변경되었습니다.");

		return "redirect:/teacher";
	}


}