package com.project.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;


import org.springframework.web.bind.annotation.ResponseBody;


import com.project.sign.SignServiceImpl;
import com.project.sign.UserVO;

@Controller
public class SignController {

	@Inject
	private SignServiceImpl service;

	@Resource(name = "uploadPath")
	private String uploadPath;

	@PostMapping("/signup")
	public String User_signUp(UserVO vo) throws Exception {
		String savedName = "";
		if (vo.getUser_photoFile().getSize() == 0) {
			vo.setUser_photo(null);
		} else {			
			savedName = uploadFile(vo.getUser_photoFile().getOriginalFilename(), vo.getUser_photoFile().getBytes());
			vo.setUser_photo(savedName);
			File f = new File(uploadPath + savedName);
			vo.getUser_photoFile().transferTo(f);
		}
		vo.setUser_photo(savedName);
		service.User_SignUp(vo);
		return "sign-in";
	}

	@PostMapping("/index")
	public String Login() {
		return "redirect:/mainIndex";
	}

	@GetMapping("/index")
	public String Login_Test() {
		return "redirect:/mainIndex";
	}

	// 로그인 체크
	@ResponseBody
	@PostMapping("/LoginCheck/{LoginID}/{LoginPWD}")
	public String Login_Cehck(@PathVariable("LoginID") String LoginID, @PathVariable("LoginPWD") String LoginPWD,
			HttpServletRequest request) {
		String loginCheck = "0";
		UserVO user = service.User_Login(LoginID);
		if(user==null) {
			return loginCheck;
		}else {
			if (user.getUser_pwd().equals(LoginPWD)) {
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				return loginCheck = String.valueOf(user.getUnum());
			}
		}
		return loginCheck;
	}

	// ID중복체크
	@ResponseBody
	@PostMapping("/OverLabId/{LoginID}")
	public String OverLab_IdCheck(@PathVariable("LoginID") String LoginID) {
		String OverLabIdCheck = "0";
		UserVO user = service.User_Login(LoginID);
		if (user == null) {
			OverLabIdCheck = "1";
		}
		return OverLabIdCheck;
	}

	// 로그아웃
	@GetMapping("/Logout")
	public String Logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "sign-in";
	}

	// 파일 이름 중복 없애는
	private String uploadFile(String originalName, byte[] fileData) throws Exception {
		UUID uuid = UUID.randomUUID();
		String savedName = uuid.toString() + "_" + originalName;
		File target = new File(uploadPath, savedName);
		FileCopyUtils.copy(fileData, target);
		return savedName;
	}

	@PostMapping("/UserUpdate")
	public void User_Update(UserVO vo) {
		service.User_Update(vo);		
	}

}
