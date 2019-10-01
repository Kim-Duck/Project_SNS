package com.project.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.board.BoardServiceImpl;
import com.project.board.BoardVO;
import com.project.ff.FfServiceImpl;
import com.project.sign.SignService;
import com.project.sign.SignServiceImpl;
import com.project.sign.UserVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Inject
	private BoardServiceImpl boardservice;
	
	@Inject
	private SignServiceImpl signservice;
	
	@Inject
	private FfServiceImpl ffservice;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "sign-in";
		
	}	
	
	//InfoPage
	@PostMapping("/InfoPage")
	public ModelAndView Mypage(HttpServletResponse response,HttpServletRequest request,ModelAndView mv,@RequestParam("user_id") String user_id) {
		HttpSession session = request.getSession();
		session.removeAttribute("main");
		UserVO vo = signservice.User_Login(user_id);		
		ArrayList<UserVO> Friend_List = ffservice.Friend_List(user_id);
		String another_id = (String)session.getAttribute("another_id");
		if(another_id!=null) {
			session.removeAttribute("another_id");
		}
		session.setAttribute("another_id", user_id);
		
		mv.addObject("user_info",vo);		
		mv.addObject("Friend_List", Friend_List);		
		
		mv.setViewName("my-profile-feed");		
		return mv;
	}
	
	
	// 계정설정
	@GetMapping("/Setting")
	public String Logout2(HttpServletRequest request) {		
		return "profile-account-setting";
	}
	
	


}
