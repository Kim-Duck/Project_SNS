package com.project.controller;

import java.util.ArrayList;
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
	
	//마이페이지
	@PostMapping("/Mypage")
	public ModelAndView Mypage(ModelAndView mv,@RequestParam("user_id") String user_id) {		
		UserVO vo = signservice.User_Login(user_id);
		List<BoardVO> board_list_self = boardservice.Board_List_Self(1, 3,vo.getUser_id());
		ArrayList<UserVO> Friend_List = ffservice.Friend_List(user_id);
		mv.addObject("Friend_List", Friend_List);
		mv.addObject("user_info",vo);
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
