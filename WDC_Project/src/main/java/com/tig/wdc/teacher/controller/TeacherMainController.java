
package com.tig.wdc.teacher.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;

import com.tig.wdc.common.PageNation;
import com.tig.wdc.model.dto.PageInfoDTO;
import com.tig.wdc.teacher.model.service.BoardAndQnAService;
import com.tig.wdc.teacher.model.service.TeacherInfoService;

/**
 * 강사 메인
 * @author 이해승
 *
 */
@Controller
public class TeacherMainController {

	private final TeacherInfoService teacherInfoServcie;
	private final BoardAndQnAService noticeService;
	private PageInfoDTO pageInfo;
	
	@Autowired
	public TeacherMainController(TeacherInfoService teacherInfoServcie, BoardAndQnAService noticeService, PageInfoDTO pageInfo) {
		this.teacherInfoServcie = teacherInfoServcie;
		this.noticeService = noticeService;
		this.pageInfo = pageInfo; 
	}

	/**
	 * 로그인화면으로이동
	 * @return
	 */
	@GetMapping("teacher")
	public String teacherlogin() {
		return "teacher/teacherInfo/t_login";
	}
	
	/**
	 * 메인화면
	 * @param session
	 * @param model
	 * @param currentPage
	 * @return
	 */
	@GetMapping("teacher/main")
	public String teacherMain(HttpSession session, Model model, @RequestParam(defaultValue = "1") int currentPage) {

		int teacherNo= (Integer) session.getAttribute("teacherNo");
		//공지사항 페이징처리
		pageInfo = PageNation.getPageInfo(currentPage, noticeService.selectNoticeCount(), 5, 5);
		//페이징처리정보
		model.addAttribute("pageInfo", pageInfo);
		//공지사항리스트
		model.addAttribute("noticeList", noticeService.selectNoticeList(pageInfo));
		//강사정보
		model.addAttribute("teacherInfo",teacherInfoServcie.selectTeacherInfo(teacherNo));
		//등록된 클래스 수
		model.addAttribute("RegistedClassCount",teacherInfoServcie.selectRegisteredClassCount(teacherNo));
		//누적 정산금액
		model.addAttribute("SumClassCalculate",teacherInfoServcie.selectSumClassCalculate(teacherNo));
		
		return "teacher/t_main";
	}
	
	@GetMapping("teacher/logout")
	public String teacherLogout(HttpSession session) {
		
		session.invalidate();
		return "redirect:/teacher";
	}
}
