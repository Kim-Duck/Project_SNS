package com.project.ff;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.project.sign.UserVO;

public interface FfMapper {
	
	public ArrayList<UserVO> Friend_List(@Param("user_id")String user_id);
	
	public ArrayList<UserVO> User_List(@Param("user_id")String user_id, @Param("searchName") String searchName);
	
	public String[] User_List_Friend(@Param("user_id") String user_id);
	
	public void Friend_Request(@Param("main_id")String main_id,@Param("friend_id")String friend_id);
	
	public ArrayList<UserVO> Friend_Request_List(@Param("user_id")String user_id);
	
	public ArrayList<UserVO> Friend_Request_Ing(@Param("user_id")String user_id);
	
	public void Friend_Agree(@Param("user_id")String user_id, @Param("friend_id")String friend_id);
	
	public String Follow_Id(@Param("unum") int unum);
	
	public String[] Follow_Check(@Param("main_id")String main_id);
	
	public void Follow_Insert(@Param("main_id")String main_id,@Param("follow_id")String follow_id);
	
	public ArrayList<UserVO> Follow_List(@Param("user_id")String user_id);
	
	public ArrayList<UserVO> Follower_List(@Param("user_id")String user_id);
	
	public UserVO User_Name(@Param("user_id")String user_id);
	
	
	
}
