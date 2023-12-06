<%@page import="com.smhrd.domain.member_web"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding ="UTF-8"  isELIgnored ="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>

    <link rel="stylesheet" href="assets/css/main.css" />

    <style>
        #nav {
    position: fixed;
    top: 0;
    left: 0; /* 좌측에 고정합니다. 다른 값을 사용하여 원하는 위치에 고정할 수 있습니다. */
    width: 100%;
}

#nav ul {
    list-style: none;
    margin: 0;
    padding: 0;
    display: flex;
}

#nav ul li {
    margin-right: 20px; /* 각 메뉴 아이템 간의 간격을 조절합니다. */
}

#nav ul li a {
    text-decoration: none;
    color: #333333;
    font-weight: bold;
    font-size: 20px;
}

#nav ul ul {
    display: none;
    position: absolute;
    top: 100%; /* 메뉴 아이템 아래에 위치하도록 설정합니다. */
    left: 0;
}
    .id-number-input {
      display: flex;
      align-items: center;
      margin-right: 5px;
    }
    .pw-number-input {
      display: flex;
      align-items: center;
      margin-right: 5px;
    }
    
    .id-number-input img {
      margin-right: 10px;
      margin-bottom: 20px;
      width: 50px;
      height: 50px;
    }
    .pw-number-input img {
      margin-right: 10px;
      margin-bottom: 20px;
      width: 50px;
      height: 50px;
    }

        form {
            text-align: center;
        }
        
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .content {
            text-align: center;
        }

        .registration-form {
            background-color: #fddbb4;
            padding: 100px;
            border-radius: 120px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            margin: 0 auto;
        }
        
        h1 {
            font-size: 2.5em; /* 글자 크기를 조절하세요 */
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 0px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
        }

        button {
            background-color: orange;
            color: #ffffff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>
<body class="is-preload">
    <div id="page-wrapper">

            

            <nav id="nav">
                <ul>
                    <li><a href="로그인 전.jsp" id="logo"> 🐶오래살개🐱</a></li>
                    <li>
                        
                        <a href="#">메뉴(Menu)</a>
                        <ul>
                            <li></li>
                            <li><a href="건강체크.jsp">건강 체크</a></li>
                            <li><a href="식사량.jsp">식사량</a></li>
                            <li><a href="운동량.jsp">운동량</a></li>
                            <li><a href="영양제 체크.jsp">영양제 체크</a></li>
                        </ul>
                    </li>
                    <li><a href="캘린더.jsp">캘린더(Calendar)</a></li>
                    <li><a href="팁.jsp">팁(Tip)</a></li>
                    <li><a href="login.jsp">로그인</a></li>
                    <li>
                        <a href="mypage.jsp">마이페이지</a>
                       
                    </li>
    
                </ul>
            </nav>
        <br>
        <div class="content">
        </div>

        <div class="registration-form">
            <form action="loginCon">
                <h1>로그인</h1>

                <div class="id-number-input">
                    <img src="images/아이디 아이콘.png" alt="아이디 아이콘">
                    <input type="text" id="userID" name="user_id" placeholder="ID" required>
                </div>
                
                <div class="pw-number-input">
                    <img src="images/비밀번호 아이콘.png" alt="비밀번호 아이콘">
                    <input type="password" id="userPassword" name="user_pw" placeholder="PW" required>
                </div>
               
                <br>
                <button type="submit">로그인</button>
                <button type="submit">회원가입</button>
            </form>
        </div>

    </div>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/jquery.dropotron.min.js"></script>
    <script src="assets/js/browser.min.js"></script>
    <script src="assets/js/breakpoints.min.js"></script>
    <script src="assets/js/util.js"></script>
    <script src="assets/js/main.js"></script>
</body>
</html>