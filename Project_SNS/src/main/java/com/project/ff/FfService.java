package com.project.ff;

import java.util.ArrayList;

import com.project.sign.UserVO;

public interface FfService {
	public ArrayList<UserVO> Friend_List(String user_id);
	
	public ArrayList<UserVO> User_List(String user_id,String searchName);
	
	public String[] User_List_Friend(String user_id);
	
	public ArrayList<UserVO> Friend_Request_List(String user_id);
	
	public ArrayList<UserVO> Friend_Request_Ing(String user_id);
	
	public void Friend_Request(String main_id,String friend_id);
	
	public void Friend_Agree(String user_id,String friend_id);
	
	public String Follow_Id(int follownum);
	
	public String[] Follow_Check(String mainid);
	
	public void Follow_Insert(String mainid,String followid);
	
	
}
