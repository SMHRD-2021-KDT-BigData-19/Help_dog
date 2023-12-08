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
        <!-- chart.js 라이브러리 가져오는 script  -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
    
   </head>
   <body class="is-preload">
      <div id="page-wrapper">
          <nav id="nav">
              <ul>
                <li><a href="loginbefore.jsp" id="logo"> 🐶오래살개🐱</a></li>
                <li>
                      <a href="#">메뉴(Menu)</a>
                      <ul>
                          <li><a href="건강체크.jsp">건강 체크</a></li>
                          <li><a href="식사량.jsp">식사량</a></li>
                          <li><a href="운동량.jsp">운동량</a></li>
                          <li><a href="영양제 체크.jsp">영양제 체크</a></li>
                      </ul>
                  </li>
                  <li><a href="Calendarjsp">캘린더(Calendar)</a></li>
                  <li><a href="팁.jsp">팁(Tip)</a></li>
                  <li>
                    <a href="mypage.jsp">마이페이지</a>
                   
                </li>

              </ul>
          </nav>
      </div>
    
 
      
         <!-- Main --> 
        <div id ="sidebar">  
            <h2>식사량</h2>
            <div class="check">
                        <b>금일 식사 횟수</b>
                    <br>
                    <input type="checkbox">
                    <input type="checkbox">
                    <input type="checkbox">
                    <input type="checkbox">
                    <input type="checkbox">
                </div>
      <br>
              <div class="menulist">
                    <b>금일 식사종류</b>
                    <br>
                    <select>
                        <option>습식</option>
                        <option>건식</option>
                    </select>
              </div>
    <br>
             <div><b>금일 식사 메뉴</b>
             <br>
             <textarea placeholder="내용을 입력해주세요" style="width: 255px; height: 60px;"></textarea>
             </div>
    <br>
             <div><b>섭취량</b>
                <br>
                <textarea placeholder="금일 식사 제공 횟수" style="width: 255px; height: 60px;"></textarea>
                </div>     
                 <br>
             
            <tr class="nomalTr">
                <td colspan="2" align="center">
                    <input type="submit" value="저장하기">
                </td>
            </tr>
        </div> 
        
        <!-- chart.js 그래프 크기  -->
         <!--    <div id = "Chart">
                <canvas id="myChart" width="500" height="500"></canvas>
            </div> -->
         </div> 
        <div id="Chart">
        <canvas id="chart" width="500" height="500"></canvas>
        </div>


      <!-- Scripts -->
      <script src="assets/js/jquery.min.js"></script>
      <script src="assets/js/jquery.dropotron.min.js"></script>
      <script src="assets/js/browser.min.js"></script>
      <script src="assets/js/breakpoints.min.js"></script>
      <script src="assets/js/util.js"></script>
      <script src="assets/js/main.js"></script>
      <script src="assets/js/식사량test.js"></script>
   </body>
</html>