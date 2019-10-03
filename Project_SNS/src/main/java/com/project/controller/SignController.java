package com.project.controller;

import java.io.File;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.project.ff.FfServiceImpl;
import com.project.sign.SignServiceImpl;
import com.project.sign.UserVO;

@Controller
public class SignController {

	@Inject
	private SignServiceImpl service;
	@Inject
	private FfServiceImpl ffservice;

	@Resource(name = "uploadPath")
	private String uploadPath;

	@PostMapping("/signup")
	public String User_signUp(UserVO vo) throws Exception {
		String savedName = "";
		SecurityUtil se = new SecurityUtil();

		String sepwd = se.encryptSHA256(vo.getUser_pwd());
		if (vo.getUser_photoFile().getSize() == 0) {
			vo.setUser_photo(null);
		} else {
			savedName = uploadFile(vo.getUser_photoFile().getOriginalFilename(), vo.getUser_photoFile().getBytes());
			vo.setUser_photo(savedName);
			File f = new File(uploadPath + savedName);
			vo.getUser_photoFile().transferTo(f);
		}
		vo.setUser_pwd(sepwd);
		vo.setUser_photo(savedName);
		service.User_SignUp(vo);
		return "sign-in";
	}

	@PostMapping("/index")
	public String Login(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("main", "main");
		UserVO vo = (UserVO) session.getAttribute("user");
		UserVO user_info = service.User_Login(vo.getUser_id());
		List<UserVO> friend_request_list = ffservice.Friend_Request_List(vo.getUser_id());

		model.addAttribute("friend_request_list", friend_request_list);

		model.addAttribute("user_info", user_info);
		return "index";
	}

	@GetMapping("/index")
	public String Login_(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("main", "main");
		UserVO vo = (UserVO) session.getAttribute("user");
		UserVO user_info = service.User_Login(vo.getUser_id());

		List<UserVO> friend_request_list = ffservice.Friend_Request_List(vo.getUser_id());

		model.addAttribute("friend_request_list", friend_request_list);
		model.addAttribute("user_info", user_info);

		return "index";
	}

	// 로그인 체크
	@ResponseBody
	@PostMapping("/LoginCheck/{LoginID}/{LoginPWD}")
	public String Login_Cehck(@PathVariable("LoginID") String LoginID, @PathVariable("LoginPWD") String LoginPWD,
			HttpServletRequest request) {
		String loginCheck = "0";
		SecurityUtil se = new SecurityUtil();
		String sepwd = se.encryptSHA256(LoginPWD);
		UserVO user = service.User_Login(LoginID);
		if (user == null) {
			return loginCheck;
		} else {
			if (user.getUser_pwd().equals(sepwd)) {
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

	// 사용자 커버사진 변경
	@ResponseBody
	@PostMapping("/ChangeCover")
	public String ChangeCover(UserVO vo) throws Exception {
		String savedName = "";
		if (vo.getUser_photoFile().getSize() == 0) {
			vo.setUser_cover(null);
		} else {
			savedName = uploadFile(vo.getUser_photoFile().getOriginalFilename(), vo.getUser_photoFile().getBytes());
			vo.setUser_cover(savedName);
			File f = new File(uploadPath + savedName);
			vo.getUser_photoFile().transferTo(f);
		}
		service.User_Cover(vo);
		return "0";
	}

	// 사용자 프로필사진 변경
	@ResponseBody
	@PostMapping("/ChangePhoto")
	public String ChangePhoto(UserVO vo) throws Exception {
		String savedName = "";
		if (vo.getUser_photoFile().getSize() == 0) {
			vo.setUser_photo(null);
		} else {
			savedName = uploadFile(vo.getUser_photoFile().getOriginalFilename(), vo.getUser_photoFile().getBytes());
			vo.setUser_photo(savedName);
			File f = new File(uploadPath + savedName);
			vo.getUser_photoFile().transferTo(f);
		}
		service.User_Photo(vo);
		return "0";
	}

	// 파일 이름 중복 없애는
	private String uploadFile(String originalName, byte[] fileData) throws Exception {
		UUID uuid = UUID.randomUUID();
		String savedName = uuid.toString() + "_" + originalName;
		File target = new File(uploadPath, savedName);
		FileCopyUtils.copy(fileData, target);
		return savedName;
	}

	public class SecurityUtil {
		public String encryptSHA256(String str) {
			String sha = "";
			try {
				MessageDigest sh = MessageDigest.getInstance("SHA-256");
				sh.update(str.getBytes());
				byte byteData[] = sh.digest();
				StringBuffer sb = new StringBuffer();
				for (int i = 0; i < byteData.length; i++) {
					sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
				}
				sha = sb.toString();
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
				sha = null;
			}
			return sha;
		}
	}

	@PostMapping("/UserDelete")
	public void User_Delete(int unum) {
		service.User_Delete(unum);
	}

	@PostMapping("/UserUpdate")
	public void User_Update(UserVO vo) {
		SecurityUtil se = new SecurityUtil();
		String sepwd = se.encryptSHA256(vo.getUser_pwd());

		vo.setUser_pwd(sepwd);

		service.User_Update(vo);
	}

}
