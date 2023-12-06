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
               <li><a href="캘린더.jsp">캘린더(Calendar)</a></li>
               <li><a href="팁.jsp">팁(Tip)</a></li>
               <li>
                <a href="mypage.jsp">마이페이지</a>
               
            </li>

           </ul>
       </nav>
   </div>

      <!-- Main -->
        <div id="sidebar">
         <td><b>영양제/약 추가</b></td>
         <br>
         <textarea placeholder="영양제를 입력해주세요" style="width: 280px; height: 60px;"></textarea>

         <br>
         <br>

         <div class="check">
           <label for="check"> <b>금일 투약 횟수</b></label>
            <br>
            1회<input type="checkbox">
            2회<input type="checkbox">
            3회이상<input type="checkbox">
         </div>

         <br>
         <br>

         <b>영양제/약 섭취기간</b>
         <br>
         <input type="date">
         <br>
         <br>

         <input type="submit" value="저장하기">
        </div>

   </div>
   </div>

   <!-- Scripts -->
   <script src="assets/js/jquery.min.js"></script>
   <script src="assets/js/jquery.dropotron.min.js"></script>
   <script src="assets/js/browser.min.js"></script>
   <script src="assets/js/breakpoints.min.js"></script>
   <script src="assets/js/util.js"></script>
   <script src="assets/js/main.js"></script>

</body>
</html>