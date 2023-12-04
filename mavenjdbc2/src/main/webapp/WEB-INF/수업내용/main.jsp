<%@page import="com.smhrd.domain.member_web"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<%
 		// LoginCon을 들렸다 오면 session에 회원정보 저장
 		// session에서 "loginMember"라는 이름으로 저장된 정보 출력
 		member_web loginMember = (member_web) session.getAttribute("loginMember");
 	
 		out.print("<h1>"+loginMember.getNick()+"님 환영합니다~~~</h1>");
 	%>
</body>
</html>