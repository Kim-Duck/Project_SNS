package com.project.sign;

public interface SignService {
	public void User_SignUp(UserVO user);
	
	public UserVO User_Login(String LoginID);
}
