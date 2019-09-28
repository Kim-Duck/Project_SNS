package com.project.controller;

import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.board.BoardServiceImpl;
import com.project.board.BoardVO;
import com.project.sign.SignService;
import com.project.sign.SignServiceImpl;
import com.project.sign.UserVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Inject
	private BoardServiceImpl service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		return "sign-in";
		
	}
	
	
	
	//다른이의 마이페이지 들어갈때
	@PostMapping("/Youpage")
	public ModelAndView Mypage(HttpServletRequest request,@RequestParam("user_num") int user_num) {
		HttpSession session = request.getSession();		
		UserVO vo = (UserVO)session.getAttribute("user");
		if(vo.getUnum() == user_num) {
			return new ModelAndView("my-profile-feed");
		}
		return new ModelAndView("my-profile-feed");
	}
	
	//로그인한 사람의 마이페이지
	@GetMapping("/Mypage")
	public ModelAndView Mypage(ModelAndView mv,HttpServletRequest request) {
		HttpSession session = request.getSession();
		UserVO vo = (UserVO)session.getAttribute("user");		
		List<BoardVO> board_list_self = service.Board_List_Self(1, 3,vo.getUser_id());		
		mv.addObject("board_list", board_list_self);
		mv.setViewName("my-profile-feed");
		return mv;
	}
	
	
	// 계정설정
	@GetMapping("/Setting")
	public String Logout2(HttpServletRequest request) {		
		return "profile-account-setting";
	}



}
