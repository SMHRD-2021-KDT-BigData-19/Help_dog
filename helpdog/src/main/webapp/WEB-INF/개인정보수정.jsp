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
               
            <li><a href="로그인 전.html" id="logo"> 🐶오래살개🐱</a></li>
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
            <li><a href="로그인 전.html">로그아웃</a></li>
               
            </li>

           </ul>
       </nav>
       <div id="centersidebar" style="text-align: center;">
        <input type="button" value="사용자 정보 수정">
        <br>
        <br>
        <br>
        <div class="menulist">
            <div style="position: relative;">
                <img src="images/비밀번호 아이콘.png" alt="Icon" style="position: absolute; left: 10px; top: 10px; width: 20px; height: 20px;">
                <textarea placeholder="변경할 비밀번호를 입력해주세요" style="width: 340px; height: 40px; padding-left: 40px;"></textarea>
            
            </div>
            <br>
            <br>
            <div style="position: relative;">
                <img src="images/핸드폰 아이콘 .png" alt="Icon" style="position: absolute; left: 10px; top: 10px; width: 20px; height: 20px;">
                <textarea placeholder="변경할 핸드폰번호를 입력해주세요" style="width: 340px; height: 40px; padding-left: 40px;"></textarea>
            </div>
            <br>
            <br>
            <div style="position: relative;">
                <img src="images/이메일 아이콘.png" alt="Icon" style="position: absolute; left: 10px; top: 10px; width: 20px; height: 20px;">
                <textarea placeholder="변경할 이메일을 입력해주세요" style="width: 340px; height: 40px; padding-left: 40px;"></textarea>
            </div>
            <br>
            <br>
            <input type="submit" value="제출하기">
        </div>
    </div>
   <!-- Scripts -->
   <script src="assets/js/jquery.min.js"></script>
   <script src="assets/js/jquery.dropotron.min.js"></script>
   <script src="assets/js/browser.min.js"></script>
   <script src="assets/js/breakpoints.min.js"></script>
   <script src="assets/js/util.js"></script>
   <script src="assets/js/main.js"></script>
</div>
</body>
</html>