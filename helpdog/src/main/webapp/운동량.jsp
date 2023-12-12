<%@page import="com.smhrd.domain.member_web"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding ="UTF-8"  isELIgnored ="false" %>
<!DOCTYPE HTML>

<html>
   <head>
      <title>도와줄개</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="assets/css/main.css" />
      <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
    
   </head>
   <body class="is-preload">
      <div id="page-wrapper">
          <nav id="nav">
              <ul>
               <li><a href="loginafter.jsp" id="logo"> 🐶오래살개🐱</a></li>
               <li>
                      <a href="#">메뉴(Menu)</a>
                      <ul>
                          <li><a href="건강체크.jsp">건강 체크</a></li>
                          <li><a href="식사량.jsp">식사량</a></li>
                          <li><a href="운동량.jsp">운동량</a></li>
                          <li><a href="영양제 체크.jsp">영양제 체크</a></li>
                      </ul>
                  </li>
                  <li><a href="Calendar.jsp">캘린더(Calendar)</a></li>
                  <li><a href="팁.jsp">팁(Tip)</a></li>
                  <li>
                     <a href="mypage.jsp">마이페이지</a>
                    
                 </li>
 					<li><a href="loginbefore.jsp">로그아웃</a></li>
              </ul>
          </nav>
      </div>

      <div id ="sidebar"> 
         <h2>운동량</h2>
     
               <div>
			    <label for="mealDateInput"><b>날짜:</b></label>
			    <br>
			    <input type="text" id="mealDateInput" placeholder="날짜를 입력하세요">
			</div>
			   <br>
			<div>
			    <label for="mealAmountInput"><b>금일 운동시간 (30~120분):</b></label>
			    <br>
			    <input type="text" id="mealAmountInput" placeholder="운동시간을 입력하세요">
			</div>
     			<br>
				<button id="addMealButton">저장하기</button>
	     	</div>

         <div id = "Chart">
            <canvas id="myChart" width="500" height="500"></canvas>
         </div>

         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/jquery.dropotron.min.js"></script>
         <script src="assets/js/browser.min.js"></script>
         <script src="assets/js/breakpoints.min.js"></script>
         <script src="assets/js/util.js"></script>
         <script src="assets/js/main.js"></script>
         <script src="assets/js/운동량.js"></script>
   </body>

</html>