package com.project.sign;

public interface SignMapper {
	
	//ȸ������
	public void User_SignUp(UserVO user);
	
	//�α���üũ&ID�ߺ�Ȯ��üũ
	public UserVO User_Login(String LoginID);
	
	
}
