package com.project.controller;

import java.util.ArrayList;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.ff.FfServiceImpl;
import com.project.sign.UserVO;

@Controller
public class FfController {

	@Inject
	private FfServiceImpl service;

	// ģ��â
	@PostMapping("/Friend")
	public ModelAndView Friend(@RequestParam("user_id") String user_id) {
		// user_id �� ���� �α����� ID
		ModelAndView mv = new ModelAndView();
		ArrayList<UserVO> Friend_List = service.Friend_List(user_id);
		ArrayList<UserVO> Friend_Request_List = service.Friend_Request_List(user_id);
		ArrayList<UserVO> Friend_Request_Ing = service.Friend_Request_Ing(user_id);
		UserVO vo = service.User_Name(user_id);
		mv.addObject("Friend_List", Friend_List);
		mv.addObject("Friend_Request_List", Friend_Request_List);
		mv.addObject("Friend_Request_Ing", Friend_Request_Ing);
		mv.addObject("user_name", vo.getUser_name());
		mv.addObject("user_id", user_id);
		mv.setViewName("profiles");
		return mv;
	}
	
	// �ȷο�â
	@PostMapping("/Follow")
	public ModelAndView Follow(@RequestParam("user_id") String user_id) {
		ModelAndView mv = new ModelAndView();
		UserVO vo = service.User_Name(user_id);
		ArrayList<UserVO> Follow_List = service.Follow_List(user_id);
		
		ArrayList<UserVO> Follower_List = service.Follower_List(user_id);
		
		mv.addObject("Follow_List", Follow_List);
		mv.addObject("Follower_List", Follower_List);
		mv.addObject("user_name", vo.getUser_name());
		mv.setViewName("follow");
		return mv;
	}

	// ģ����û������
	@PostMapping("/FriendRequest")
	public void FriendRequest(@RequestParam("main_id") String main_id, @RequestParam("friend_id") String friend_id) {
		service.Friend_Request(main_id, friend_id);
	}

	// ģ����û ����
	@PostMapping("/FriendAgree")
	public void Friend_Agree(@RequestParam("user_id") String user_id, @RequestParam("friend_id") String friend_id) {
		service.Friend_Agree(user_id, friend_id);
	}

	// ������� ģ���̸� �˻�
	@PostMapping("/FriendSerach")
	public ModelAndView Friend_Search(@RequestParam("searchName") String searchName,
			@RequestParam("user_id") String user_id) {
		ModelAndView mv = new ModelAndView();
		ArrayList<UserVO> User_List = service.User_List(user_id, searchName);
		String[] User_List_Friend = service.User_List_Friend(user_id);
		ArrayList<UserVO> Friend_Request_Ing = service.Friend_Request_Ing(user_id);
		ArrayList<UserVO> Friend_Request_List = service.Friend_Request_List(user_id);

		for (int i = 0; i < User_List.size(); i++) {

			for (int j = 0; j < User_List_Friend.length; j++) {
				if (User_List.get(i).getUser_id().equals(User_List_Friend[j])) {
					User_List.get(i).setFriend_check(User_List_Friend[j]);
				}
			}

			for (int j = 0; j < Friend_Request_Ing.size(); j++) {
				if (User_List.get(i).getUser_id().equals(Friend_Request_Ing.get(j).getUser_id())) {
					User_List.get(i).setFriend_check("Request-Ing");
				}
			}

			for (int j = 0; j < Friend_Request_List.size(); j++) {
				if (User_List.get(i).getUser_id().equals(Friend_Request_List.get(j).getUser_id())) {
					User_List.get(i).setFriend_check("Request-List");
				}
			}

		}
		mv.addObject("searchName", searchName);
		mv.addObject("User_List", User_List);
		mv.setViewName("profiles-search");
		return mv;
	}

	@ResponseBody
	@PostMapping("/FollowInsert")
	public String Follow_Insert(@RequestParam("mainid") String mainid, @RequestParam("funum") int follownum) {
		String followinsertcheck = "1";

		String followid = service.Follow_Id(follownum);

		String[] followcheck = service.Follow_Check(mainid);

		for (int i = 0; i < followcheck.length; i++) {
			if (followcheck[i].equals(followid)) {
				return followinsertcheck;
			}
		}
		service.Follow_Insert(mainid, followid);
		followinsertcheck = "0";

		return followinsertcheck;
	}

}
