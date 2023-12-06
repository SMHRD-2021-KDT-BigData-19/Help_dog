<%@page import="com.smhrd.domain.member_web"%>
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
        /* Added styles for better positioning */
        .profile-edit-container {
            text-align: center;
        }

        .text-input {
            width: 600px;
            margin: auto;
        }

        .status-message {
            width: 600px;
            margin: auto;
        }

        .save-button {
            margin-right: 32%;
         margin-top: 10px;
            float: right; /* Aligns the button to the right */
        }

		.edit-buttons {
		    text-align: center; /* 가운데 정렬 */
		    margin-right: 50px; /* 왼쪽으로 10px 이동 (원하는 크기로 조절) */
		}
		
		.edit-buttons button {
		    font-size: 16px; /* 원하는 크기로 조절하세요 */
		    padding: 10px 20px; /* 버튼 패딩 조절 (상하좌우) */
		}


		
		.left-button {
		    float: left;
		    margin: 225px 10px 20px 0; /* Adjusted margin for spacing */
		}
		
		.right-button {
		    float: right;
		    margin: 225px 0 20px 10px; /* Adjusted margin for spacing */
		}
		
		
      .button-image {
         max-width: 100px;
      }

    </style>
   <script>
      function openFileInput() {
         // 프로필 이미지를 클릭했을 때 파일 선택 창 열기
         document.getElementById('file-input').click();
      }
   
      function displayImage(input) {
         // 파일 선택 창에서 이미지를 선택한 경우 프로필 이미지 변경
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
                        <li><a href="캘린더.jsp">캘린더(Calendar)</a></li>
                        <li><a href="팁.jsp">팁(Tip)</a></li>
                        
                        <li>
                            <a href="mypage.jsp">마이페이지</a>
                        
                        </li>
                        <li><a href="loginbefore.jsp">로그아웃</a></li>
            </ul>
        </nav>

       </div>

				        <!-- Main -->
				        <section class="page-wrapper">
				            <div class="container">
				                <div class="col-8 col-12-narrower">
				                    <div id="content">
				                        <!-- Content -->
				                        <article>
				                            <header></header>
				<div style="text-align: center;">
				    <!-- Left button (image) -->
				    <a href="왼쪽.jsp" class="left-button">
				        <img src="images/왼쪽.png" alt="왼쪽 버튼" class="button-image">
				    </a>
				
				    <!-- Large profile image -->
				    <span class="image featured" style="border-radius: 50%; overflow: hidden; display: inline-block;">
				        <img id="profile-image" src="images/프로필.png" alt="" style="max-width: 450px; height: 450px; cursor: pointer;" onclick="openFileInput('profile-image')" />
				    </span>
				
				    <!-- Small image next to the profile image -->
				    <span class="image featured" style="overflow: hidden; display: inline-block; margin-left: 10px;">
				        <img id="small-image" src="images/다운로드.png" alt="" style="max-width: 50px; height: 50px; margin-top: 300px; cursor: pointer;" onclick="openFileInput('profile-image')" />
				    </span>
				
				    <!-- Right button (image) -->
				    <a href="오른쪽.jsp" class="right-button">
				        <img src="images/오른쪽.png" alt="오른쪽 버튼" class="button-image">
				    </a>
				</div>



                            <!-- Edit Buttons ... -->
                            <div class="edit-buttons">
                              <a href="userupdate.jsp">  <button>사용자 / 반려동물<br>정보수정</button></a>
                              <a href="petinsert.jsp">  <button>반려동물 추가하기</button></a>
                              
                            </div>
                        </article>
                    </div>
                </div>
            </div>
        </section>

        <!-- Footer ... -->

    </div>
<script>
    function openFileInput(targetId) {
        // 파일 선택 창을 여는 함수
        document.getElementById('file-input').addEventListener('change', function () {
            displayImage(this, targetId);
        });

        // 파일 선택 창 열기
        document.getElementById('file-input').click();
    }

    function displayImage(input, targetId) {
        // 파일 선택 창에서 이미지를 선택한 경우 프로필 이미지 변경
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