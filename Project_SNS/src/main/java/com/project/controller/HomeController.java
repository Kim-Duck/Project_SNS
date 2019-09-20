package com.project.controller;

import java.util.Locale;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.sign.SignService;
import com.project.sign.UserVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	//private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "sign-in";
	}	
	
	@Inject
	private SignService service;
	
	@PostMapping("/signup")
	public void User_signUp(UserVO user) {
		service.User_SignUp(user);
	}

}
