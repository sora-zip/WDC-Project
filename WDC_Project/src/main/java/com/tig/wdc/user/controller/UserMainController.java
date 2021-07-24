package com.tig.wdc.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user/*")
public class UserMainController {

	@GetMapping("/login")
	public String login(HttpSession session) {

//		int userNo= (Integer) session.getAttribute("userNo");
//		System.out.println("userNo : " + userNo);
		return "user/login/login";
	}

	@GetMapping("/teacher")
	public String teacher() {

		return "redirect:teacher";
	}

	@GetMapping("/admin")
	public String admin() {

		return "admin/adminMain";
	}

	@GetMapping("/check")
	public String check() {

		return "user/classList/class_detail";

	}
}
