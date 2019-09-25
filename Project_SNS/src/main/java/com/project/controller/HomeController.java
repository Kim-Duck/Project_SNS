package com.project.controller;

import java.util.Locale;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.sign.SignService;
import com.project.sign.SignServiceImpl;
import com.project.sign.UserVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Inject
	private SignServiceImpl service;
	
	//private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "sign-in";
		
	}
	
	// ����������
	@GetMapping("/Mypage")
	public String Logout1(HttpServletRequest request) {		
		return "my-profile-feed";
	}
	
	// ��������
	@GetMapping("/Setting")
	public String Logout2(HttpServletRequest request) {		
		return "profile-account-setting";
	}
//	// �������������� ����?
//	@PostMapping("/update")
//	public String User_update(UserVO vo){
//		service.User_update(vo);
//		return "sign-in";		
//	}
	


}
