package com.project.sign;

import org.springframework.beans.factory.annotation.Autowired;


public class SignServiceImpl implements SignService{
	
	@Autowired
	private SignMapper mapper;

	@Override
	public void User_SignUp(UserVO user) {
		mapper.User_SignUp(user);
	}
	
}
