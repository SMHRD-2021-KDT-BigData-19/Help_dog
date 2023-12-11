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


   
</head>
<body class="is-preload">
   <!-- 파일 선택 input을 감추고, JavaScript에서 조작하기 위해 ID 부여 -->
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
            			<div style="text-align: center;">
                    	<br><br>
                    <a href="userupdate.jsp">
                    <button type="button"  style="font-size: 20px;">사용자 정보수정</button> 
                    </a>
                    <a href="petupdate.jsp">
                    <button type="button"  style="font-size: 20px; ">반려동물 정보수정</button>
                    </a>
            			</div>
            			<%
    // URL 파라미터에서 user_id와 pet_name 값을 가져옴
    String user_id = request.getParameter("user_id");

%>
                <br>
                <br>
                    <form action="petUpdateCon" method="post">
                <div class="menulist" style="text-align:center">
                    <b>이름</b>
                    <br>
                    <textarea placeholder="이름을 입력해주세요" style="width: 30%; height: 60px ; text-align:center;" name="pet_name"></textarea>
                    <br>
                    <br>
                    <b>동물 종류</b>
                    <br>      
                    <select style="width: 30%; height: 60px; text-align:center;" name="pet_type" >
                        <option>개</option>
                        <option>고양이</option>
                    </select>
                </div>
                <br>
                <div style="text-align:center;">
                <b>성별</b>
                <br>      
                <select style="width: 30%; height: 60px; text-align:center;" name="pet_gubun" >
                    <option>암컷</option>
                    <option>수컷</option>
                </select>
                </div>
                <br>
                <div style="text-align:center;">
                <b>중성화 여부</b>
                <br>   
                <select style="width: 30%; height: 60px; text-align:center;" name="pet_jungsung">
                    <option>중성화완료</option>
                    <option>중성화안함</option>
                </select>
                </div>
                <br>
                <div style="text-align:center">
                <b>입양날짜(출생일)</b>
                <br>
                <input type="date" style="width: 30%; height: 60px; text-align:center;" name="pet_date">
                </div>
                <br>
                <div style="text-align:center">
                <b>특이사항</b>
                <br>
                <textarea placeholder="특이사항을 입력해주세요" style="width: 30%; height: 60px; text-align:center;" name="pet_etc"></textarea>
                </div>
                <br>
                <div style="text-align:center">
                <button type="submit" name="sub" value="저장하기" style="font-size: 20px;">저장하기</button>
                </div>
            			
                 </form>
                    </section>
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