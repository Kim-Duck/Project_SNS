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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import com.project.sign.SignServiceImpl;
import com.project.sign.UserVO;

@Controller
public class SignController {

	@Inject
	private SignServiceImpl service;
	
	@Resource(name = "uploadPath")
	private String uploadPath;

	@PostMapping("/signup")
	public String User_signUp(@RequestParam("user_photo") MultipartFile file,
			@RequestParam("user_id") String user_id,
			@RequestParam("user_pwd") String user_pwd,
			@RequestParam("user_name") String user_name,
			@RequestParam("user_phone") String user_phone,
			@RequestParam("user_email") String user_email)
			throws Exception {
		String savedName = file.getOriginalFilename();
		savedName = uploadFile(savedName, file.getBytes());
		File f = new File(uploadPath + savedName);
		file.transferTo(f);
		
		UserVO user = new UserVO();
		user.setUser_id(user_id);
		user.setUser_pwd(user_pwd);
		user.setUser_name(user_name);
		user.setUser_phone(user_phone);
		user.setUser_email(user_email);
		user.setUser_photo(savedName);		
		service.User_SignUp(user);
		return "sign-in";
	}

	@PostMapping("/index")
	public String LoginTest() {		
		return "redirect:/mainIndex";
	}

	// 로그인 체크
	@ResponseBody
	@PostMapping("/LoginCheck/{LoginID}/{LoginPWD}")
	public String LoginCehck(@PathVariable("LoginID") String LoginID, @PathVariable("LoginPWD") String LoginPWD,
			HttpServletRequest request) {
		String loginCheck = "0";
		UserVO user = service.User_Login(LoginID);
		if (user.getUser_pwd().equals(LoginPWD)) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			return loginCheck = "1";
		}
		return loginCheck;
	}

	// ID중복체크
	@ResponseBody
	@PostMapping("/OverLabId/{LoginID}")
	public String OverLabIdCheck(@PathVariable("LoginID") String LoginID) {
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
	
	//파일 이름 중복 없애는
	private String uploadFile(String originalName, byte[] fileData) throws Exception{
        UUID uuid = UUID.randomUUID();
        String savedName = uuid.toString()+"_"+originalName;
        File target = new File(uploadPath, savedName);
        FileCopyUtils.copy(fileData, target);
        return savedName;
    }


}
