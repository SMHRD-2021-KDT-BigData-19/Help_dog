<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
   <head>
      <title>오래살개</title>
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
               <li><a href="Calendar.jsp">캘린더(Calendar)</a></li>
               <li><a href="팁.jsp">팁(Tip)</a></li>
               <li>
                  <a href="mypage.jsp">마이페이지</a>
               </li>
            </ul>
         </nav>
      </div>

      <div id="data-container">
        <!-- 크롤링한 데이터가 여기에 표시될 것입니다. -->
      </div>

      <script src="assets/js/jquery.min.js"></script>
      <script src="assets/js/jquery.dropotron.min.js"></script>
      <script src="assets/js/browser.min.js"></script>
      <script src="assets/js/breakpoints.min.js"></script>
      <script src="assets/js/util.js"></script>
      <script src="assets/js/main.js"></script>

      <script>
        // 가상으로 크롤링한 데이터
        const crawledData = [
            { title: '제목 1', content: '내용 1' },
            { title: '제목 2', content: '내용 2' },
            // 크롤링한 실제 데이터를 여기에 넣어주세요.
            // ...
        ];

        // 데이터를 HTML에 삽입하는 함수
        function displayData() {
            const container = document.getElementById('data-container');

            crawledData.forEach(item => {
                const card = document.createElement('div');
                card.innerHTML = `<h2>${item.title}</h2><p>${item.content}</p>`;
                container.appendChild(card);
            });
        }

        // 페이지 로드 시 데이터 표시
        window.onload = displayData;
      </script>
   </body>
</html>