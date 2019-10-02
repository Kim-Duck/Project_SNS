package com.project.ff;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.sign.UserVO;

@Service
public class FfServiceImpl implements FfService{
	
	@Autowired
	private FfMapper mapper;
	
	@Override
	public ArrayList<UserVO> Friend_List(String user_id) {		
		return mapper.Friend_List(user_id);
	}
	
	@Override
	public ArrayList<UserVO> User_List(String user_id,String searchName) {		
		return mapper.User_List(user_id,searchName);
	}

	@Override
	public void Friend_Request(String main_id, String friend_id) {
		mapper.Friend_Request(main_id,friend_id);
	}

	@Override
	public ArrayList<UserVO> Friend_Request_List(String user_id) {
		return mapper.Friend_Request_List(user_id);
	}

	@Override
	public ArrayList<UserVO> Friend_Request_Ing(String user_id) {
		return mapper.Friend_Request_Ing(user_id);
	}

	@Override
	public void Friend_Agree(String user_id, String friend_id) {
		mapper.Friend_Agree(user_id,friend_id);		
	}

	@Override
	public String[] User_List_Friend(String user_id) {
		return mapper.User_List_Friend(user_id);
	}

	@Override
	public String Follow_Id(int follownum) {		
		return mapper.Follow_Id(follownum);
	}

	@Override
	public String[] Follow_Check(String mainid) {
		return mapper.Follow_Check(mainid);
	}

	@Override
	public void Follow_Insert(String mainid, String followid) {
		mapper.Follow_Insert(mainid,followid);		
	}

	@Override
	public ArrayList<UserVO> Follow_List(String user_id) {
		return mapper.Follow_List(user_id);
	}
	@Override
	public ArrayList<UserVO> Follower_List(String user_id) {
		return mapper.Follower_List(user_id);
	}

	@Override
	public UserVO User_Name(String user_id) {
		return mapper.User_Name(user_id);
	}

}
