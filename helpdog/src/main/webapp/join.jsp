<%@page import="com.smhrd.domain.member_web"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding ="UTF-8"  isELIgnored ="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h1>회원 가입 페이지</h1>
   <form action="joinCon" method="post" >
   ID : <input type="text" name="id">
   PW : <input type="text" name="pw">
   NICK : <input type="text" name="nick">
   <input type="submit" value="회원가입">
   
   
   </form>
   
</body>
</html>