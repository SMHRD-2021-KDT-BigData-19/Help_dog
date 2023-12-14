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
<!DOCTYPE HTML>
<html lang="ko">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <title>마이페이지</title>
    <link rel="stylesheet" href="assets/css/main.css" />

    <style>
        .profile-edit-container {
            text-align: center;
        }

        .save-button {
            margin-right: 32%;
         margin-top: 10px;
            float: right;
        }

      .edit-buttons {
          text-align: center;
          margin-right: 50px;
      }
      
      .edit-buttons button {
          font-size: 16px;
          padding: 10px 20px;
          width: 300px;
      }


      
      .left-button {
          float: left;
          margin: 225px 10px 20px 0;
      }
      
      .right-button {
          float: right;
          margin: 225px 0 20px 10px;
      }
      
      
      .button-image {
         max-width: 100px;
      }

    </style>
   <script>
      function openFileInput() {
         document.getElementById('file-input').click();
      }
   
      function displayImage(input) {
         if (input.files && input.files[0]) {
            var reader = new FileReader();
   
            reader.onload = function (e) {
               document.getElementById('profile-image').src = e.target.result;
            };
   
            reader.readAsDataURL(input.files[0]);
         }
      }
   </script>
   
</head>
<body class="is-preload">
<input type="file" id="file-input" style="display: none;" onchange="displayImage(this)" />

    <div id="page-wrapper">
	 <nav id="nav">
            <ul>
                <li><a href="loginafter.jsp" id="logo"> 🐶오래살개🐱</a></li>
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
                        <li><a href="Calendar.jsp">캘린더(Calendar)</a></li>
                        <li><a href="팁.jsp">팁(Tip)</a></li>                    
                        <li>
                            <a href="mypage.jsp">마이페이지</a>
                        
                        </li>
                        <li><a href="loginbefore.jsp">로그아웃</a></li>
            </ul>
        </nav>

       </div>

            <div>
                    <section class="page-wrapper">
                        <div class="container">
                            <div class="col-8 col-12-narrower">
                                <div id="content">
                                    <article>
                                        <header></header>
                                        <br>
            <div style="text-align: center;">

                <span class="image featured" style="border-radius: 50%; overflow: hidden; display: inline-block;">
                    <img id="profile-image" src="images/프로필.png" alt="" style="max-width: 450px; height: 450px; cursor: pointer;" onclick="openFileInput('profile-image')" />
                </span>
                <span class="image featured" style="overflow: hidden; display: inline-block; margin-left: 10px;">
                    <img id="small-image" src="images/다운로드.png" alt="" style="max-width: 50px; height: 50px; margin-top: 300px; cursor: pointer;" onclick="openFileInput('profile-image')" />
                </span>

                </a>
            </div>
            </div>
<%@ page import="java.sql.*" %>
<%@ page import="com.smhrd.domain.member_web" %>

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

            %>
<div style="text-align: center; margin-right:50px; font-size: 35px; font-weight: bold;">
    <%= petNameResult %>
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

							<br><br>
							<div class="edit-buttons">
							    <a href="userupdate.jsp?user_id=<%= loginMember.getId() %>">
							        <button>사용자 / 반려동물정보수정</button>
							    </a>
							
							    <a href="petinsert.jsp?user_id=<%= loginMember.getId() %>">
							        <button>반려동물 추가하기</button>
							    </a>
							</div>
							<br><br>
					</div>
                        </article>
                    </div>
                </div>
            </div>
        </section>

    </div>
<script>
    function openFileInput(targetId) {
        document.getElementById('file-input').addEventListener('change', function () {
            displayImage(this, targetId);
        });
        document.getElementById('file-input').click();
    }

    function displayImage(input, targetId) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                document.getElementById(targetId).src = e.target.result;
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
</script>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.dropotron.min.js"></script>
<script src="assets/js/browser.min.js"></script>
<script src="assets/js/breakpoints.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>

</body>
</html>