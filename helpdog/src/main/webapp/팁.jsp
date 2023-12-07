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
               <li><a href="캘린더.jsp">캘린더(Calendar)</a></li>
               <li><a href="팁.jsp">팁(Tip)</a></li>
               <li>
                  <a href="mypage.jsp">마이페이지</a>
                  <li><a href="loginbefore.jsp">로그아웃</a></li>
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
            { title: '강아지 건강검진 해야 하는 이유 – 주기, 항목, 비용 알아보기', content: 'https://mypetlife.co.kr/133737/' },
            { title: '강아지 감기 증상 및 관리법', content: 'https://mypetlife.co.kr/35175/' },
            { title: '강아지 생식 식단의 탄생, 이점과 위험성 알아보기', content: 'https://mypetlife.co.kr/15262/' },
            { title: '강아지 팥 먹어도 되나요? 주의사항 알아보기', content: 'https://mypetlife.co.kr/134094/' },
            { title: '대형견 옷 추천 제품 14가지 – 어떻게 골라야 할까?', content: 'https://mypetlife.co.kr/137683/' },
            { title: '강아지 재생성 빈혈 증상 및 진단', content: 'https://mypetlife.co.kr/11163/' },
            { title: '강아지 배 먹어도 되나요? 주의사항은?', content: 'https://mypetlife.co.kr/107193/' },
            { title: '강아지 죽기 전 행동, 증상 및 대처법', content: 'https://mypetlife.co.kr/75068/' },
            { title: '따가운 강아지 시선! 강아지가 쳐다보는 이유 5가지', content: 'https://mypetlife.co.kr/135535/' },
            { title: '강아지 털갈이 시기 및 관리법', content: 'https://mypetlife.co.kr/42331/' },
            // 크롤링한 실제 데이터를 여기에 넣어주세요.
        ];

        
    // 데이터를 HTML에 삽입하는 함수
    function displayData() {
        const container = document.getElementById('data-container');

        crawledData.forEach(item => {
            const card = document.createElement('div');
            // 각 데이터를 링크로 감싸고, 클릭 시 해당 링크로 이동하도록 처리
            card.innerHTML = `<a href="${item.content}" target="_blank"><h2>${item.title}</h2></a>`;
            container.appendChild(card);
        });
    }

    // 페이지 로드 시 데이터 표시
    window.onload = displayData;
</script>
      
   </body>
</html>