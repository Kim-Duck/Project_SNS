package com.project.sign;

public interface SignMapper {
	
	//ȸ������
	public void User_SignUp(UserVO vo);
	
	//�α���üũ&ID�ߺ�Ȯ��üũ
	public UserVO User_Login(String LoginID);
	
	//ȸ������
	public void User_Update(UserVO vo);
	
	
}
