package com.tig.wdc.user.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.user.model.service.UserCategoryService;

/**
 * @author 민연준
 * 클래스 카테고리 조회 및 검색/정렬용 컨트롤러
 *
 */
@Controller
@RequestMapping("/user/category/*")
public class UserCategoryController {

	private final UserCategoryService categoryService;
	
	@Autowired
	public UserCategoryController(UserCategoryService categoryService) {
		this.categoryService = categoryService;
	}
	
	/**
	 * 전체 카테고리 조회용 메소드
	 * @param model
	 * @return
	 */
	@GetMapping("all")
	public String ClassCategoryAllSelect(Model model, HttpServletRequest request , UserClassDTO userClassDTO, HttpSession session) {
		
		//String searchContent = request.getParameter("searchContent");
		String searchContent = userClassDTO.getSearchContent();
		System.out.println("ac userClassDTO : " + userClassDTO);
		System.out.println("searchContent : " + searchContent);
		System.out.println("searchCheckBox :" + userClassDTO.getSearchCheckBox());

		int userNo = 0;
		
		List<UserClassDTO> allClassList = new ArrayList<UserClassDTO>();
		
		if(((Integer) session.getAttribute("userNo")) != null) {
			userNo = (Integer) session.getAttribute("userNo"); //로그인 했으면 유저번호 넘기기
			userClassDTO.setUserNo(userNo);
		}
		
		allClassList = categoryService.selectClassCategory(userClassDTO);			
		
		model.addAttribute("allClassList",allClassList);
		model.addAttribute("searchContent",searchContent);
		
		return "user/classList/class_all";
	}
	
	/**
	 * 스포츠 카테고리 조회용 메소드
	 * @param model
	 * @return
	 */
	@GetMapping("sports")
	public String ClassCategorySportsSelect(Model model) {
		
		List<UserClassDTO> sportsClassList = new ArrayList<>();
		
		sportsClassList = categoryService.selectClassSportsCategory();
		
		model.addAttribute("sportsClassList",sportsClassList);
		
		
		return "user/classList/class_sports";
	}
	
	/**
	 * 뷰티 카테고리 조회용 메소드
	 * @param model
	 * @return
	 */
	@GetMapping("beauty")
	public String ClassCategorybeautySelect(Model model) {
		
		List<UserClassDTO> beautyClassList = new ArrayList<>();
		
		beautyClassList = categoryService.selectClassBeautyCategory();
		
		model.addAttribute("beautyClassList",beautyClassList);
		
		return "user/classList/class_beauty";

	}
	
	/**
	 * 아트 카테고리 조회용 메소드
	 * @param model
	 * @return
	 */
	@GetMapping("art")
	public String ClassCategoryArtSelect(Model model) {
		
		List<UserClassDTO> artClassList = new ArrayList<>();
		
		artClassList = categoryService.selectClassArtCategory();
		
		model.addAttribute("artClassList",artClassList);
		
		return "user/classList/class_art";

	}
	
	/**
	 * 요리/베이킹 카테고리 조회용 메소드
	 * @param model
	 * @return
	 */
	@GetMapping("cook")
	public String ClassCategoryCookSelect(Model model) {
		
		List<UserClassDTO> cookClassList = new ArrayList<>();
		
		cookClassList = categoryService.selectClassCookCategory();
		
		model.addAttribute("cookClassList",cookClassList);
		
		return "user/classList/class_cook";

	}
	
	/**
	 * it/computer 카테고리 조회용 메소드
	 * @param model
	 * @return
	 */
	@GetMapping("computer")
	public String ClassCategoryComputerSelect(Model model) {
		
		List<UserClassDTO> computerClassList = new ArrayList<>();
		
		computerClassList = categoryService.selectClassComputerCategory();
		
		model.addAttribute("computerClassList",computerClassList);
		
		return "user/classList/class_it";
	}
	
	/**
	 * 언어 카테고리 클래스 조회용 메소드
	 * @param model
	 * @return
	 */
	@GetMapping("language")
	public String ClassCategoryLanguageSelect(Model model) {
		
		List<UserClassDTO> languageClassList = new ArrayList<>();
		
		languageClassList = categoryService.selectClassLanguageCategoty();
		
		model.addAttribute("languageClassList",languageClassList);
		
		return "user/classList/class_language";
		
	}
	
	@GetMapping("revenu")
	public String ClassCategoryRevenuSelect(Model model) {
		
		List<UserClassDTO> revenuClassList = new ArrayList<>();
		
		revenuClassList = categoryService.selectClassRevenuCategoty();
		
		model.addAttribute("revenuClassList",revenuClassList);
		
		return "user/classList/class_revenu";
		
	}
}
