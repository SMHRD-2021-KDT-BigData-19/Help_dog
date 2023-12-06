package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.MemberDAO;
import com.smhrd.domain.petMember;
import com.smhrd.domain.member_web;

public class petSelectCon extends HttpServlet {
   private static final long serialVersionUID = 1L;

   
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
            // post방식 인코딩
            request.setCharacterEncoding("UTF-8");
            // 파라미터 수집
            // session에서 ID 가져오기
            HttpSession session = request.getSession();
            member_web loginMember = (member_web)session.getAttribute("loginMember");
            
            String id = loginMember.getId();	
            String petName = request.getParameter("pet_name");

            // Member 객체에 가져온 값을 담아주기 2
            petMember inputPet = new petMember(id, petName); 
           
            // 3
            MemberDAO dao = new MemberDAO();
            petMember choicePet = dao.selectPet(inputPet); 
            
           

   }
}

