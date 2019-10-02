package com.project.sign;

import org.apache.ibatis.annotations.Param;

public interface SignMapper {
	
	//ȸ������
	public void User_SignUp(UserVO vo);
	
	//�α���üũ&ID�ߺ�Ȯ��üũ
	public UserVO User_Login(String LoginID);
	
	//ȸ������
	public void User_Update(UserVO vo);
	
	//ȸ�� Ŀ������ ����
	public void User_Cover(UserVO vo);
	
	//ȸ�� Ŀ������ ����
	public void User_Photo(UserVO vo);
	
	//���̵�ã��
	public String User_Id(@Param("unum") int unum);
	
	//ȸ��Ż��
	public void User_Delete(@Param("unum") int unum);
	
	
}
