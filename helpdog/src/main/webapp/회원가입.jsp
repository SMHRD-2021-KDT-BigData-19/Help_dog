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
    left: 0;
    width: 100%;
}

#nav ul {
    list-style: none;
    margin: 0;
    padding: 0;
    display: flex;
}

#nav ul li {
    margin-right: 20px;
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
    top: 100%;
    left: 0;
}

#nav ul li:hover > ul {
    display: flex;
    flex-direction: column;
}
  .name-number-input {
      display: flex;
      align-items: center;
      margin-right: 5px;
    }
    .phone-number-input {
      display: flex;
      align-items: center;
      margin-right: 5px;
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
    .email-number-input {
      display: flex;
      align-items: center;
      margin-right: 5px;
    }
   .name-number-input img {
      margin-right: 10px;
      width: 50px;
      height: 50px;
    }
    .phone-number-input img {
      margin-right: 10px;
      width: 50px;
      height: 50px;
    }
    .id-number-input img {
      margin-right: 10px;
      width: 50px;
      height: 50px;
    }
    .pw-number-input img {
      margin-right: 10px;
      width: 50px;
      height: 50px;
    }
    .email-number-input img {
      margin-right: 10px;
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
            padding: 60px;
            border-radius: 120px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 150%;
            margin: 0 auto;
        }
        
        h1 {
            font-size: 2.5em;
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
    <div id="page-wrapper" style="margin-right: 200px; margin-top: 100px;">
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
                    <li><a href="팁.jsp">팁(Tip)</a></li>
                    <li><a href="팁loginX.jsp">로그인</a></li>
                    <li><a href="login.jsp">마이페이지</a></li>
                </ul>
            </nav>
        <br>
        <div class="content">
        </div>
        
        <div class="registration-form">
            <form action="joinCon">
                
                <h1>회원가입</h1>
                
                <div class="name-number-input">
                    <img src="images/이름 아이콘.png" alt="이름 아이콘"></i>
                    <input type="name" id="userName" name="user_name" placeholder="이름" required>
                </div>
                
                <div class="phone-number-input">
                    <img src="images/핸드폰 아이콘 .png" alt="핸드폰 아이콘"></i>
                    <input type="tel" id="phoneNumber" name="user_hp" placeholder="핸드폰 번호" required>
                </div>
                
                <div class="id-number-input">
                    <img src="images/아이디 아이콘.png" alt="아이디 아이콘"></i>
                <input type="text" id="userID" name="user_id" placeholder="ID" required>
                </div>

                <div class="pw-number-input">
                    <img src="images/비밀번호 아이콘.png" alt="비밀번호 아이콘"></i>
                <input type="password" id="userPassword" name="user_pw" placeholder="PW" required>
                </div>

                <div class="email-number-input">
                    <img src="images/이메일 아이콘.png" alt="이메일 아이콘"></i>
                <input type="email" id="userEmail" name="user_mail" placeholder="E-mail" required>
                </div>
                
                <br>
                <button type="submit">가입하기</button>
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