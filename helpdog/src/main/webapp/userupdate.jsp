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
                
            <li><a href="loginafter.jsp" id="logo"> 🐶오래살개🐱</a></li>
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
                    <a href="mypage.html">마이페이지</a>
                </li>
                <li><a href="loginbefore.jsp">로그아웃</a></li>
                
            </ul>
        </nav>
        <form action="userUpdateCon" method="post">
            <div id="centersidebar" style="text-align: center; margin-left: 150px">
                <a href="userupdate.jsp">
                    <button type="button">사용자 정보수정</button>
                </a>
                <a href="petupdate.jsp">
                    <button type="button">반려동물 정보수정</button>
                </a>
                
                <br>
                <br>
                <br>
                <div class="menulist">
                    <div style="position: relative;" >
                        <img src="images/이름 아이콘.png" alt="Icon" style="position: absolute; left: 10px; top: 10px; width: 30px; height: 20px;">
                        <textarea placeholder="변경할 이름을 입력해주세요" name="user_name"  style="width: 360px; height: 40px; padding-left: 40px;"></textarea>
                    </div>
                    <br>
                    <br>
                    <div style="position: relative;">
                        <img src="images/비밀번호 아이콘.png" alt="Icon" style="position: absolute; left: 10px; top: 10px; width: 30px; height: 20px;">
                        <input type="password" id="userPassword" name="user_pw" placeholder="숫자로만 된 비밀번호를 입력해주세요" style="width: 360px; height: 40px; padding-left: 40px;" required>
                    </div>
                    <br>
                    <br>
                    <div style="position: relative;">
                        <img src="images/핸드폰 아이콘 .png" alt="Icon" style="position: absolute; left: 10px; top: 10px; width: 30px; height: 20px;">
                        <textarea placeholder="변경할 핸드폰번호를 입력해주세요"  name="user_hp"  style="width: 360px; height: 40px; padding-left: 40px;"></textarea>
                    </div>
                    <br>
                    <br>
                    <div style="position: relative;">
                        <img src="images/이메일 아이콘.png" alt="Icon" style="position: absolute; left: 10px; top: 10px; width: 30px; height: 20px;">
                        <textarea placeholder="변경할 이메일을 입력해주세요"  value=" ${loginMember.mail}" name="user_mail" style="width: 360px; height: 40px; padding-left: 40px;"></textarea>
                    </div>
                    <br>
                    <br>
                    <input type="submit" value="저장하기">
                </div>
            </div>
        </form>
        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/jquery.dropotron.min.js"></script>
        <script src="assets/js/browser.min.js"></script>
        <script src="assets/js/breakpoints.min.js"></script>
        <script src="assets/js/util.js"></script>
        <script src="assets/js/main.js"></script>
    </div>
    <script>
    $(document).ready(function () {
        $('form').submit(function () {
            // 여기에 폼 제출 로직을 추가하세요 (필요한 경우)

            // 폼 제출 후 mypage.html로 리다이렉트
            window.location.href = 'mypage.html';
            
            // 기본 폼 제출을 막습니다 (예: AJAX를 사용하여 처리하는 경우)
            return false;
        });
    });
</script>
</body>
</html>
