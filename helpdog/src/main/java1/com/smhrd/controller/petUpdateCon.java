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

public class petUpdateCon extends HttpServlet {
   private static final long serialVersionUID = 1L;

   
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
            // post방식 인코딩
            request.setCharacterEncoding("UTF-8");
            // 파라미터 수집
            // session에서 ID 가져오기
            HttpSession session = request.getSession();
            member_web loginMember = (member_web)session.getAttribute("loginMember");
            
            String id = loginMember.getId();	
			/* String petName = request.getParameter("pet_name"); */
            String petType = request.getParameter("pet_type");
            String petGender = request.getParameter("pet_gubun");
            String petNe = request.getParameter("pet_jungsung");
            String petBirth = request.getParameter("pet_date");
            String petSign = request.getParameter("pet_etc");
            
            // Member 객체에 가져온 값을 담아주기
            petMember update = new petMember(id, petType, petGender, petNe, petBirth, petSign); 
           
            MemberDAO dao = new MemberDAO();
            	int cnt = dao.updatePet(update);
                // cnt>0 (반려동물 정보수정 성공) --> mypage.html로 이동
                if(cnt>0) {
                   // 세션에 저장되어있는 정보도 새로운 정보로 업데이트
                   // 똑같은 이름의 세션에 값을 새로 또 저장
                   // 덮어쓰기
                   //session.setAttribute("loginMember", update);
                   response.sendRedirect("mypage.jsp");
                	  System.out.println("변경 성공 ㅠㅠ ");
            }else{
            	// 새로 추가하는 dao 메소드            	
            	System.out.println("변경 실패ㅠㅠ ");
                   response.sendRedirect("petupdate.jsp");
            }
           
   }
}

