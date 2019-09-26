package com.project.sign;

public interface SignService {
	public void User_SignUp(UserVO vo);
	
	public UserVO User_Login(String LoginID);
	
	public void User_Update(UserVO vo);
}
