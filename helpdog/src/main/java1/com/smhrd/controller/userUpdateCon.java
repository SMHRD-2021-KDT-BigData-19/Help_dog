package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.domain.member_web;
import com.smhrd.domain.MemberDAO;


public class userUpdateCon extends HttpServlet {
   private static final long serialVersionUID = 1L;

   
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
           // post방식 인코딩
            request.setCharacterEncoding("UTF-8");
   
            // session에서 id 가져오기
            HttpSession session = request.getSession();
            member_web loginMember = (member_web)session.getAttribute("loginMember");
            
            // 파라미터 수집
            String id = loginMember.getId();
            String name = request.getParameter("user_name");
            String pw = request.getParameter("user_pw");
            String hp = request.getParameter("user_hp");
            String mail = request.getParameter("user_mail");
            // Member 객체에 가져온 값을 담아주기
            member_web  update = new member_web(id,pw,name,mail,hp); 
            
      
           // 3. DAO 객체 생성
            MemberDAO dao = new MemberDAO();
            int cnt = dao.updateMember(update);
            
            // cnt>0 (정보수정 성공) --> main.jsp로 이동
            if(cnt>0) {
               // 세션에 저장되어있는 정보도 새로운 정보로 업데이트
               // 똑같은 이름의 세션에 값을 새로 또 저장
               // 덮어쓰기
               session.setAttribute("loginMember", update);
               
               response.sendRedirect("mypage.jsp");
            }else {
            // 아니라면~ (실패) --> update.jsp로 이동
               System.out.println("회원정보 수정 실패ㅜㅜ ");
               response.sendRedirect("userupdate.jsp");
            }
            
         
            
   }

}