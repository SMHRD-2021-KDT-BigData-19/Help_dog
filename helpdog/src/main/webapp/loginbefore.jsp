<%@page import="com.smhrd.domain.member_web"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding ="UTF-8"  isELIgnored ="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
		//세션에 저장되어있는 회원의 정보 가져오기
		member_web loginMember = (member_web)session.getAttribute("loginMember");
%>

<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <title>도와줄개</title>
    <link rel="stylesheet" href="assets/css/main.css" />
    <style>
      #foot {
            background-color: black;
            height: 100px;
            width: 100%;
            position: fixed;
            bottom: 0;
            left: 0;
            text-align: center;
            color: white;
        }
        ul>li {
            color: black;
        }

      #banner {
            display: flex;
            flex-direction: column; 
            align-items: center; 
            text-align: center; 
            margin-bottom: 1em;
         margin-top: 5em;
         margin-right: 24em;
        }

      #banner>h1 {
         font-size: 35px;
            color: black;
            margin-bottom: 0;
           
         margin-right: 500px;
        }


        #banner2 {
            display: flex;
            flex-direction: column;
            justify-content: flex-end;
            align-items: flex-end;
            flex-wrap: wrap;
            padding: 1em;
            flex: 1;
            margin-top: -20em;
         margin-right: 12em;
        }



        #banner h2 {
            flex: 1;
            margin-right: 18px;
            font-size: 30px;
            color: black;
            font-weight: normal;
        }

        #footer {
            text-align: center;
            padding: 15px;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column-reverse;
            align-items: center;
        }

        #footer a {
            margin: 10px 0;
        }

        #footer a.button {
            margin-right: 30px;
        }
        
                        #nav ul li:hover > ul {
            display: flex;
            flex-direction: column;
            position: absolute;
            background-color: #333; /* Background color for sub-menu */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        #nav ul ul {
    display: none;
    position: absolute;
    background-color: #37c0fb; /* Background color for sub-menu */
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    width: 100%;
    list-style: none;
        margin: 0; /* 변경된 부분: 여백을 없애기 위해 margin을 0으로 설정 */
    padding: 0; /* 변경된 부분: 여백을 없애기 위해 padding을 0으로 설정 */
}


        #nav ul ul li {
            margin-right: 0; 
        }

#nav ul ul li a {
    font-size: 16px;
    text-decoration: none;
    color: #000000;
    font-weight: bold;
    text-align: left; /* 변경된 부분: 가운데 정렬 */
}
    </style>
</head>

<body class="is-preload">
    <div id="page-wrapper">
        <nav id="nav">
            <ul>
                <li><a href="loginbefore.jsp" id="logo"> 🐶오래살개🐱</a></li>
                <li>
                    <a href="#">메뉴(Menu)</a>
                    <ul>
                        <li><a href="login.jsp">건강 체크</a></li>
                        <li><a href="login.jsp">식사량</a></li>
                        <li><a href="login.jsp">운동량</a></li>
                        <li><a href="login.jsp">영양제 체크</a></li>
                    </ul>
                </li>
                <li><a href="login.jsp">캘린더(Calendar)</a></li>
                <li><a href="팁LoginX.jsp">팁(Tip)</a></li>

             <!--    <li>
                    <a href="mypage.jsp">마이페이지</a>
                   
                </li> -->


            </ul>
        </nav>
    </div>

    <section id="#" style="width:100%; height:100%; text-align:left; margin-left: 10%">
        <h1 style="text-align: left; font-size:30px; margin-top:3%">오래살개</h1><br>
        <h2 style="text-align: left; width: 50%">대시보드를&nbsp; 이용한&nbsp; 반려동물&nbsp; 관련&nbsp; 웹사이트로<br>   
            반려동물의&nbsp; 운동량&nbsp; /&nbsp; 식사량&nbsp; /&nbsp; 건강&nbsp; 정보에&nbsp; 대한<br>
            시각화&nbsp; 정보를&nbsp; 제공하며,<br>
            반려동물의&nbsp; 건강&nbsp; 관련&nbsp; 일정을&nbsp; 관리할&nbsp; 수&nbsp; 있는<br>
            서비스를&nbsp; 제공합니다.
        </h2>
    </section>

    <section2 id="banner2">
        <div id="page-wrapper">
            <a href="login.jsp" class="button" style="margin-top:50%;">로그인</a>
            <br><br>
            <a href="회원가입.jsp" class="button">회원가입</a>
        </div>
    </section2>
</div>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.dropotron.min.js"></script>
<script src="assets/js/browser.min.js"></script>
<script src="assets/js/breakpoints.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>
   
</body>
<div id="foot" style="background-color:rgb(248, 187, 74); height:10%; width:100%;">
	<a style="text-align:center; color: black;" href="#">
	<br>
	<b>이용약관</b>
	<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
	</a>	
	<a style="text-align:center; color: black;" href="#">
	<b>개인정보처리방침</b>
	<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b>
	</a>	
		<a style="text-align:center; color: black;" href="#">
	<b>고객센터</b>
	</a>	
</div>

</html>