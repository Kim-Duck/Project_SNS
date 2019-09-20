package com.project.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.project.sign.SignServiceImpl;
import com.project.sign.UserVO;

@Controller
public class SignController {
	
	@Inject
	private SignServiceImpl service;	
	
	@PostMapping("/signup")
	public String User_signUp(UserVO user) {
		service.User_SignUp(user);
		return "sign-in";
	}
	
	@GetMapping("/index")
	public String LoginTest() {		
		return "index";
	}

}
