package com.project.sign;

import org.apache.ibatis.annotations.Param;

public interface SignMapper {
	
	//회원가입
	public void User_SignUp(UserVO vo);
	
	//로그인체크&ID중복확인체크
	public UserVO User_Login(String LoginID);
	
	//회원수정
	public void User_Update(UserVO vo);
	
	//회원 커버사진 변경
	public void User_Cover(UserVO vo);
	
	//회원 커버사진 변경
	public void User_Photo(UserVO vo);
	
	//아이디찾기
	public String User_Id(@Param("unum") int unum);
	
	//회원탈퇴
	public void User_Delete(@Param("unum") int unum);
	
	
}
