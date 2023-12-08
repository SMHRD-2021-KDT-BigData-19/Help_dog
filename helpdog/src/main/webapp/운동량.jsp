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

         <!-- Main -->
      <div id ="sidebar"> 
         <h2>운동량</h2>
            <div class="menulist">
            <b>금일 운동 시간</b>
            <br>      
              <select>
                <option>15분</option>
                <option>30분</option>
                <option>45분</option>
                <option>1시간</option>
              </select>
            </div>
            <br>
				  <b>운동 종류</b>
            <br>
               <textarea placeholder="메뉴를 입력해주세요" style="width: 255px; height: 60px;"></textarea>
				<br>
            <br>
            <b>운동 거리</b>
            <br>
            <textarea placeholder="이동거리를 입력해주세요" style="width: 300px; height: 60px;"></textarea>
				<br>
            <br>
				<tr class="nomalTr">
				   <td colspan ="2" align="center">
					   <input type="submit" value="저장하기">  
					  
				   </td>
				</tr>
				
		</div>

       <!-- chart.js 그래프 크기  -->
         
         <div id = "Chart">
            <canvas id="myChart" width="500" height="500"></canvas>
         </div>
      </div>

      <!-- Scripts -->
         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/jquery.dropotron.min.js"></script>
         <script src="assets/js/browser.min.js"></script>
         <script src="assets/js/breakpoints.min.js"></script>
         <script src="assets/js/util.js"></script>
         <script src="assets/js/main.js"></script>
         <script src="assets/js/운동량.js"></script>
   </body>
</html>