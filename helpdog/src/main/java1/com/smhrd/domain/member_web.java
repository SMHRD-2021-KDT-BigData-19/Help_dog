package com.smhrd.domain;

public class member_web {

	private String id;
	private String pw;
	private String name;
	private String mail;
	private String hp;
	
	
	public member_web(String id, String pw, String name, String mail, String hp) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.mail = mail;
		this.hp = hp;
	} // 회원가입
	
	
	public member_web(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}	// 로그인


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getMail() {
		return mail;
	}


	public void setMail(String mail) {
		this.mail = mail;
	}


	public String getHp() {
		return hp;
	}


	public void setHp(String hp) {
		this.hp = hp;
	}


	@Override
	public String toString() {
		return "member_web [id=" + id + ", pw=" + pw + ", name=" + name + ", mail=" + mail + ", hp=" + hp + "]";
	}



		
		}
		

