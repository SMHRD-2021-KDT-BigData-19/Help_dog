package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.domain.MemberDAO;
import com.smhrd.domain.member_web;


public class joinCon extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      
      // 0. post방식 인코딩
      request.setCharacterEncoding("UTF-8");
      
      // 1. 파라미터 수집(id,pw,nick)
      String id = request.getParameter("user_id");
      String pw = request.getParameter("user_pw");
      String name = request.getParameter("user_name");
      String hp = request.getParameter("user_hp");
      String mail = request.getParameter("user_mail");
      
      // 2. 가져온 값을 member_web 객체에 담아주기
      member_web joinMember = new member_web(id, pw, name, hp, mail);
      
      // 3. DAO 객체 생성
      MemberDAO dao = new MemberDAO();
      // 3-1. DAO의 메소드를 호출해서 joinMember 전달
      // 3-2. DAO 메소드의 결과물을 담아줌 --> int 
      int cnt = dao.insertMember(joinMember);
      
      // 4. (int의 결과)SQL문 실행결과에 따른 명령 후 처리
      // 4-1. int의 결과가 0보다 크면(성공) : joinSuccess.html로 이동
      // 4-2. 0보다 작거나 같으면(실패) : join.html로 이동
      
      
      
      if(cnt>0) {
         response.sendRedirect("joinSuccess.html");
      }else {
         response.sendRedirect("join.html");
      }
 // 위 아래 같은 식임!!!      
      
//      
//      String res="";
//      if(cnt>0) {
//         res = "joinSuccess.html";
//      }else {
//         res= "join.html";
//      }
//      
//      response.sendRedirect(res);
//      
   }

}
