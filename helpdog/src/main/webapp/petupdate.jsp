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
	            <li><a href="loginbefore.jsp">로그아웃</a></li>
	               
	            </li>
	
	           </ul>
	       </nav>
	   </div>
	    <form action="petUpdateCon" method="post">
	   <div id="centersidebar" style="text-align: center;">
	    		<a href="userupdate.jsp">
                    <button type="button">사용자 정보수정</button>
                </a>
                <a href="petupdate.jsp">
                    <button type="button">반려동물 정보수정</button>
                </a>
               
	    
	    <br>
	    <br>
	    <div class="menulist">
	      <b>이름</b>
	
	    <br>
	    <textarea placeholder="이름을 입력해주세요" style="width: 100%; height: 60px;" name="pet_name"></textarea>
	    <br>
	    
	       <b>동물 종류</b>
	       <br>      
	       <select style="width: 100%;" name="pet_type">
	         
	 		 <option>개</option>
	          <option>고양이</option>

	 	</select>
	    </div>
	    <br>
	    
	    
	 <b>성별</b>
	    
	  
	 <br>      
	    <select style="width: 100%;" name="pet_gubun">
	       <option>암컷</option>
	 	   <option>수컷</option>
	    </select>
	    <br>
	    <br>
	    <b>중성화 여부</b>
	    <br>   
	    <select style="width: 100%;" name="pet_jungsung">
	       <option>중성화완료</option>
	       
	     
	 		<option>중성화안함</option>
	    
	    </select>
	
	    <br>
	    <br>
	    <b>입양날짜(출생일)</b>
	   
	 <br>
	 <input type="date" style="width: 100%;" name="pet_date">
	    <br>
	    <br>
	    <b>특이사항</b>
	 <br>
	    <textarea placeholder="특이사항을 입력해주세요" style="width: 100%; height: 60px;" name="pet_etc"></textarea>
	    <br>
	    
	    
	 <br>
	    
	    <button type="submit" name="sub" value="저장하기">저장하기</button>
	 </div>
	 </form>
      <!-- Scripts -->
         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/jquery.scrolly.min.js"></script>
         <script src="assets/js/jquery.scrollex.min.js"></script>
         <script src="assets/js/skel.min.js"></script>
         <script src="assets/js/util.js"></script>
         <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
         <script src="assets/js/main.js"></script>
         <script>
   /*  $(document).ready(function () {
        $('form').submit(function () {
            // 여기에 폼 제출 로직을 추가하세요 (필요한 경우)

            // 폼 제출 후 mypage.jsp로 리다이렉트
            window.location.href = 'mypage.jsp';
            
            // 기본 폼 제출을 막습니다 (예: AJAX를 사용하여 처리하는 경우) 
            return false;
        });
    }); */
</script>
   </body>
</html>
