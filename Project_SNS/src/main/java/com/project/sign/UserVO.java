package com.project.sign;

import org.springframework.web.multipart.MultipartFile;

public class UserVO {
	private int unum, user_following, user_follower;
	private String user_id, user_pwd, user_photo, user_phone, user_email, user_day;
	private String user_name;
	private MultipartFile user_photoFile;
	private String friend_check;
	
	
	

	public String getFriend_check() {
		return friend_check;
	}
	public void setFriend_check(String friend_check) {
		this.friend_check = friend_check;
	}
	public MultipartFile getUser_photoFile() {
		return user_photoFile;
	}
	public void setUser_photoFile(MultipartFile user_photoFile) {
		this.user_photoFile = user_photoFile;
	}
	public int getUser_following() {
		return user_following;
	}
	public void setUser_following(int user_following) {
		this.user_following = user_following;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public int getUnum() {
		return unum;
	}
	public void setUnum(int unum) {
		this.unum = unum;
	}

	public int getUser_follower() {
		return user_follower;
	}
	public void setUser_follower(int user_follower) {
		this.user_follower = user_follower;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_photo() {
		return user_photo;
	}
	public void setUser_photo(String user_photo) {
		this.user_photo = user_photo;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_day() {
		return user_day;
	}
	public void setUser_day(String user_day) {
		this.user_day = user_day;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	
	

}
