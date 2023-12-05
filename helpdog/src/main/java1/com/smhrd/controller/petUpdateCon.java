package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.petMember;
import com.smhrd.domain.MemberDAO;


public class petUpdateCon extends HttpServlet {
   private static final long serialVersionUID = 1L;

   
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
            // post방식 인코딩
            request.setCharacterEncoding("UTF-8");
            // 파라미터 수집
            // session에서 email 가져오기
            HttpSession session = request.getSession();
            petMember loginMember = (petMember)session.getAttribute("loginMember");
            
            String id = loginMember.getId();	
            String petType = request.getParameter("petType");
            String petGender = request.getParameter("petGender");
            String petNe = request.getParameter("petNe");
            String petBirth = request.getParameter("petBirth");
            // Member 객체에 가져온 값을 담아주기
            petMember update = new petMember( id, petType, petGender, petNe, petBirth); 
            
      
      
            MemberDAO dao = new MemberDAO();
            int cnt = dao.updatePet(update);
            
            // cnt>0 (정보수정 성공) --> main.jsp로 이동
            if(cnt>0) {
               // 세션에 저장되어있는 정보도 새로운 정보로 업데이트
               // 똑같은 이름의 세션에 값을 새로 또 저장
               // 덮어쓰기
               session.setAttribute("loginMember", update);
               
               response.sendRedirect("main.jsp");
            }else {
            // 아니라면~ (실패) --> update.jsp로 이동
               System.out.println("회원정보 수정 실패ㅜㅜ ");
               response.sendRedirect("petupdate.jsp");
            }
            
         
            
   }

}