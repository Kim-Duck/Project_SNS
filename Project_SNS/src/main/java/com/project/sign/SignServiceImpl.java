package com.project.sign;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SignServiceImpl implements SignService{
	
	@Autowired
	private SignMapper mapper;

	@Override
	public void User_SignUp(UserVO vo) {
		mapper.User_SignUp(vo);	
	}

	@Override
	public UserVO User_Login(String LoginID) {
		return mapper.User_Login(LoginID);		
	}
	
	@Override
	public void User_Update(UserVO vo) {
		mapper.User_Update(vo);
	}
	
	@Override
	public void User_Cover(UserVO vo) {
		mapper.User_Cover(vo);
	}
	@Override
	public void User_Photo(UserVO vo) {
		mapper.User_Photo(vo);
	}

	@Override
	public String User_Id(int unum) {
		return mapper.User_Id(unum);
	}

	
}
