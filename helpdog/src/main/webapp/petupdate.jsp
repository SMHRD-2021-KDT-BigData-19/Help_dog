<%@page import="com.smhrd.domain.member_web"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding ="UTF-8"  isELIgnored ="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
		//세션에 저장되어있는 회원의 정보 가져오기
		member_web loginMember = (member_web)session.getAttribute("loginMember");
%>

<html>
<head>
	   <title>도와줄개</title>
	   <meta charset="utf-8" />
	   <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	   <link rel="stylesheet" href="assets/css/main.css" />
</head>
	<body class="is-preload">
	   <div id="page-wrapper">
	       <nav id="nav">
	           <ul>
	            <li><a href="loginbefore.jsp" id="logo"> 🐶오래살개🐱</a></li>
	                <li>
	                   <a href="#">메뉴(Menu)</a>
	                   <ul>
	                       <li><a href="건강체크.html">건강 체크</a></li>
	                       <li><a href="식사량.html">식사량</a></li>
	                       <li><a href="운동량.html">운동량</a></li>
	                       <li><a href="영양제 체크.html">영양제 체크</a></li>
	                   </ul>
	               </li>
	               <li><a href="캘린더.html">캘린더(Calendar)</a></li>
	               <li><a href="팁.html">팁(Tip)</a></li>
	               <li>
	                <a href="마이페이지.html">마이페이지</a>
	                
	            </li>
	            <li><a href="loginbefore.jsp">로그아웃</a></li>
	               
	            </li>
	
	           </ul>
	       </nav>
	   </div>
	    <form action="petUpdateCon" method="post">
	   <div id="centersidebar" style="text-align: center;">
	    <input type="button"  value="반려동물 정보 수정">
	    <br>
	    <br>
	    <div class="menulist">
	       <b>동물 종류</b>
	       <br>      
	       <select style="width: 100%;" name="petType">
	         
	 		 <option>개</option>
	          <option>고양이</option>

	 	</select>
	    </div>
	    <br>
	    
	    
	 <b>성별</b>
	    
	  
	 <br>      
	    <select style="width: 100%;" name="petGender">
	       <option>암컷</option>
	 	   <option>수컷</option>
	    </select>
	    <br>
	    <br>
	    <b>중성화 여부</b>
	    <br>   
	    <select style="width: 100%;" name="petNe">
	       <option>중성화완료</option>
	       
	     
	 		<option>중성화안함</option>
	    
	    </select>
	
	    <br>
	    <br>
	    <b>입양날짜(출생일)</b>
	   
	 <br>
	 <input type="date" style="width: 100%;" name="petBirth">
	    <br>
	    <br>
	    <b>특이사항</b>
	    
	    
	 <br>
	    <textarea placeholder="특이사항을 입력해주세요" style="width: 100%; height: 60px;" name="petSign"></textarea>
	    <br>
	    
	    
	 <br>
	    <input type="button" value="반려동물 추가하기" onclick="addInput();" />
	    <input type="submit" value="제출하기">
	 </div>
	 </form>
      <!-- Scripts -->
         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/jquery.scrolly.min.js"></script>
         <script src="assets/js/jquery.scrollex.min.js"></script>
         <script src="assets/js/skel.min.js"></script>
         <script src="assets/js/util.js"></script>
         <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
         <script src="assets/js/main.js"></script>
   </body>
</html>
