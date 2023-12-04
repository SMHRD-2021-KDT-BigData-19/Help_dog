package com.smhrd.domain;

public class member_info {

	private String user_id;
	private String user_pw;
	private String user_name;
	private String user_mail;
	private String user_hp;
	
	// 생성자 5개 짜리, 2개 짜리 

	public member_info(String user_id, String user_pw, String user_name, String user_email, String user_hp) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
		this.user_name = user_name;
		this.user_mail = user_mail;
		this.user_hp = user_hp;
	}
	
	public member_info(String user_id, String user_pw) {
		super();
		this.user_id = user_id;
		this.user_pw = user_pw;
	}

	//getters and setters
	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_mail() {
		return user_mail;
	}

	public void setUser_mail(String user_email) {
		this.user_mail = user_mail;
	}

	public String getUser_hp() {
		return user_hp;
	}

	public void setUser_hp(String user_hp) {
		this.user_hp = user_hp;
	}

	@Override
	public String toString() {
		return "member_info [user_id=" + user_id + ", user_pw=" + user_pw + ", user_name=" + user_name + ", user_mail="
				+ user_mail + ", user_hp=" + user_hp + "]";
	}




		
		
		}
		

