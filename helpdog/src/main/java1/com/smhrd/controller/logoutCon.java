package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class logoutCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   //session에 저장 되어있는 loginMember의 값을 삭제하고 
		HttpSession session = request.getSession();
		session.removeAttribute("loginMember");
		
		//main.jsp로 이동
		response.sendRedirect("loginbefore.jsp");
		
	
	
	}

}
