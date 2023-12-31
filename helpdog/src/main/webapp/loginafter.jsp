<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.smhrd.domain.MemberDAO"%>
<%@page import="com.smhrd.domain.member_web"%>
<%@page import="com.smhrd.domain.petMember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding ="UTF-8"  isELIgnored ="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <title>도와줄개</title>
    <link rel="stylesheet" href="assets/css/main.css" />
      <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
    <style>
      
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
        #score{
            margin-left: 17%;
            font-size: 50px;
            color: rgb(207, 25, 25);
        }
        h1{
            margin-left: 8%;
            font-size: 50px;
        }
    </style>
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
                <li id="dog"><a href="mypage.jsp">마이페이지</a></li>
                <li><a href="loginbefore.jsp">로그아웃</a></li>
            </ul>
        </nav>
    </div>
    <div>
    <section class="page-wrapper">
        <div class="container">
            <div class="col-8 col-12-narrower">
                <div id="content">
                    <!-- Content -->
                    <article>
                        <header></header>
                        <div style="text-align: left;">
                        <br>
                            <span class="image featured" style="border-radius: 50%; overflow: hidden; display: inline-block;">
                                <img id="profile-image" src="images/멍멍멍이.png" alt="" style="max-width: 300px; height: 300px; cursor: pointer;" onclick="openFileInput('profile-image')" />
                            </span>
                        </div></section></article>
                        <h1 id="score">46점</h1>
                      <%

    member_web loginMember = (member_web)session.getAttribute("loginMember");


    String driver = "oracle.jdbc.driver.OracleDriver";
    String url = "jdbc:oracle:thin:@project-db-campus.smhrd.com:1523:XE";
    String username = "sc_21K_bigdata_hacksim_2";
    String password = "smhrd2";

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    String petNameResult = "";

    try {
        
        Class.forName(driver);


        conn = DriverManager.getConnection(url, username, password);

        String query = "SELECT * FROM pet_info WHERE user_id = ?";
        pstmt = conn.prepareStatement(query);
        pstmt.setString(1, loginMember.getId());

        rs = pstmt.executeQuery();
        
        if (rs.next()) {
        	petNameResult = rs.getString("pet_name");

           
            %><%  %>
<div style="text-align: center; margin-right: 50px; font-size: 35px; font-weight: bold;">
    <h1 style="text-align:left"><%= petNameResult %>의 건강상태</h1>
</div>

<%
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>
        
            <div id = "loginChart" >
            <canvas id="login" width="500" height="300"></canvas>
            </div>    
        
           <div id = "loginChart2" >
            <canvas id="login2" width="500" height="300"></canvas>
            </div>
           
    </div>
    
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.dropotron.min.js"></script>
<script src="assets/js/browser.min.js"></script>
<script src="assets/js/breakpoints.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>
<script src="assets/js/chartModule.js"></script>  
<script src="assets/js/chartModule2.js"></script> 
</body>
</html>