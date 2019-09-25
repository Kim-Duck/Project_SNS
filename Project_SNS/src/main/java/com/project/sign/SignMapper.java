package com.project.sign;

public interface SignMapper {
	
	//회원가입
	public void User_SignUp(UserVO vo);
	
	//로그인체크&ID중복확인체크
	public UserVO User_Login(String LoginID);
	
	//회원수정
	public void User_Update(UserVO vo);
	
	
}
