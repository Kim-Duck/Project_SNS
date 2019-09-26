package com.project.controller;

import java.util.ArrayList;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.ff.FfServiceImpl;
import com.project.sign.UserVO;

@Controller
public class FfController {
	
	@Inject
	private FfServiceImpl service;
	
	
	//ģ����ûâ �������׽�Ʈ
	@PostMapping("/Friend")
	public ModelAndView FriendTest(@RequestParam("user_id") String user_id) {
		//user_id �� ���� �α����� ID		
		ModelAndView mv = new ModelAndView();
		ArrayList<UserVO> Friend_List = service.Friend_List(user_id);		
		ArrayList<UserVO> User_List = service.User_List(user_id);
		ArrayList<UserVO> Friend_Request_List = service.Friend_Request_List(user_id);
		ArrayList<UserVO> Friend_Request_Ing = service.Friend_Request_Ing(user_id);
		mv.addObject("Friend_List", Friend_List);
		mv.addObject("User_List", User_List);
		mv.addObject("Friend_Request_List", Friend_Request_List);
		mv.addObject("Friend_Request_Ing", Friend_Request_Ing);
		mv.setViewName("profiles");
		return mv;
	}
	
	//ģ����û������
	@PostMapping("/FriendRequest")
	public void FriendRequest(@RequestParam("main_id")String main_id,@RequestParam("friend_id")String friend_id) {
		service.Friend_Request(main_id,friend_id);
	}
	
	//ģ����û ����
	@PostMapping("/FriendAgree")
	public void Friend_Agree(@RequestParam("user_id") String user_id,@RequestParam("friend_id")String friend_id) {
		service.Friend_Agree(user_id,friend_id);
	}

}

