package com.tig.wdc;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.user.model.service.UserClassService;

/**
 * @author SORA
 * 메인페이지 클래스 리스트 조회하기
 */
@Controller
@RequestMapping("/*")
public class MainController {

	private final UserClassService classService;
	
	@Autowired
	public MainController(UserClassService classService) {
		this.classService = classService;
	}
	
	@GetMapping(value= {"/"})
	public String main(Model model, HttpSession session) {

		Calendar date = Calendar.getInstance();
		date.add(Calendar.DATE, 0);
		String today = new SimpleDateFormat("yyyy-MM-dd").format(date.getTime());
		HashMap<String, String> searchDate = new HashMap<>();
		searchDate.put("today", today);
		
		if(classService.selectClassUpdate(searchDate) == null) {
			
			date.add(Calendar.DATE, -1);
			String yesterday = new SimpleDateFormat("yyyy-MM-dd").format(date.getTime());
			searchDate.put("yesterday", yesterday);
			
			classService.updateStartClass(searchDate);
			classService.updateClass(searchDate);
			classService.insertUpdateClass(searchDate);
		}
		
		int userNo = 0;
		
		//신규 클래스 select
		List<UserClassDTO> newClassList = new ArrayList<UserClassDTO>();
		
		if(((Integer) session.getAttribute("userNo")) != null) {
			userNo = (Integer) session.getAttribute("userNo"); //로그인 했으면 유저번호 넘기기
		}
		newClassList = classService.selectNewClassList(userNo);//안했으면 그냥 0 넘기기
		model.addAttribute("newClassList",newClassList);

		//인기 클래스 select
		List<UserClassDTO> topClassList = new ArrayList<UserClassDTO>();
		
		if(((Integer) session.getAttribute("userNo")) != null) {
			userNo = (Integer) session.getAttribute("userNo");
		}
		topClassList = classService.selectTopClassList(userNo);
		model.addAttribute("topClassList",topClassList);
		
		
		//응원 클래스 select
		List<UserClassDTO> cheerClassList = new ArrayList<UserClassDTO>();
		
		if(((Integer) session.getAttribute("userNo")) != null) {
			userNo = (Integer) session.getAttribute("userNo"); //로그인 했으면 유저번호 넘기기
		}
		cheerClassList = classService.selectCheerClassList(userNo);
		model.addAttribute("cheerClassList",cheerClassList);
		
		return "user/main/main";
	}
	
}
