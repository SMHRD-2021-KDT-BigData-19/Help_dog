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

public class petInsertCon extends HttpServlet {
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
            String petType = request.getParameter("pet_type");
            String petGender = request.getParameter("pet_gubun");
            String petNe = request.getParameter("pet_jungsung");
            String petBirth = request.getParameter("pet_date");
            String petSign = request.getParameter("pet_etc");
            String submit = request.getParameter("sub");
            // Member 객체에 가져온 값을 담아주기
            petMember inputPet = new petMember(id, petName, petType, petGender, petNe, petBirth, petSign); 
            
            MemberDAO dao = new MemberDAO();
          
         if(submit.equals("추가하기")) {
            // cnt > 0 반려동물 추가 성공 --> .jsp 
            // 아니라면 ~ 실패했다면 --> update.jsp 
        	// MemberDAO의 insertpet 메서드가 올바르게 동작하고 영향 받은 행의 수를 반환한다고 가정합니다.
        	  int cnt = dao.insertpet(inputPet);

        	  if (cnt > 0) {
        	      // 세션을 새 정보로 업데이트
        	      //session.setAttribute("newPet", inputPet);

        	      System.out.println("반려동물 추가 성공ㅎㅎ");
        	      response.sendRedirect("mypage.jsp");
        	  } else {
        	      System.out.println("반려동물 추가 실패 ㅠㅠ");
        	      response.sendRedirect("petinsert.jsp");
        	  }
  	      
  	}

   }
}
