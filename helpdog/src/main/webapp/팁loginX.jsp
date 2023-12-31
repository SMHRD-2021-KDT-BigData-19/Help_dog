<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE HTML> 
<html>
   <head>
      <title>오래살개</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="assets/css/main.css" />
   </head>
   
   <style>
      #image-container,
      #image-container1,
      #image-container2,
      #image-container3,
      #image-container4,
      #image-container5,
      #image-container6,
      #image-container7,
      #image-container8 {
         display: inline-block;
         width: 30%;
         margin: 0 22px;
         margin-top:50px;
         object-fit: cover;
      }
      
      #image-container6,
      #image-container7,
      #image-container8 {
         margin-bottom:50px;
      }

      #image-container img,
      #image-container1 img,
      #image-container2 img,
      #image-container3 img,
      #image-container4 img,
      #image-container5 img,
      #image-container6 img,
      #image-container7 img,
      #image-container8 img {
         max-width: 100%;
         height: 300px;
         display: block;
      }

      #image-container figcaption,
      #image-container1 figcaption,
      #image-container2 figcaption,
      #image-container3 figcaption,
      #image-container4 figcaption,
      #image-container5 figcaption,
      #image-container6 figcaption,
      #image-container7 figcaption,
      #image-container8 figcaption{
         font-weight: bold;
         text-align: center;
         margin-top: 10px;
      }
      .container {
         text-align: center;
         margin-top: 20px;
      }

      .search-form {
         display: flex;
         justify-content: center;
         align-items: center;
         
      }

      .search-form input,
      .search-form button {
         margin-bottom: 0;
      }
      
      .search-form button {
   padding: 7px 7px;
   font-size: 12px;
}

      .search-form input {
   width: 500px;
   padding: 10px;
   font-size: 16px;
}
</style>
   </style>
      
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
               <li><a href="팁loginX.jsp">팁(Tip)</a></li>
               <li><a href="login.jsp">마이페이지</a></li>
               <li><a href="login.jsp">로그인</a></li>
            </ul>
         </nav>
      </div>
<div class="container">
         <div class="row">
            <form method="post" name="search" action="searchbbs.jsp" class="search-form">
               <input type="text" class="form-control" placeholder="제목을 입력하세요." name="searchText" maxlength="100">
               <button type="submit" class="btn btn-success">검색</button>
            </form>
         </div>
      </div>

      <div id="image-container" onclick="window.location.href='https://mypetlife.co.kr/133737/'">
         <figure>
            <a href="#" ID="crawlImage">
               <img src="https://src.hidoc.co.kr/image/lib/2023/3/23/1679549589831_0.jpg">
            </a>
            <figcaption>강아지 건강검진 해야 하는 이유!</figcaption>
         </figure>
      </div>
         
      <div id="image-container1" onclick="window.location.href='https://mypetlife.co.kr/15262/'">
         <figure>
            <a href="#" ID="crawlImage1">
               <img src="https://i.imgur.com/ZCiKB92.jpg">
            </a>
            <figcaption>강아지 생식 식단 알아보기</figcaption>
         </figure>
      </div>
      
      <div id="image-container2" onclick="window.location.href='https://mypetlife.co.kr/135535/'">
         <figure>
            <a href="#" ID="crawlImage2">
               <img  src="//img.sbs.co.kr/newimg/news/20190408/201300590_1280.jpg">
            </a>
            <figcaption>따가운 강아지의 시선!</figcaption>
         </figure>
      </div>
      
      <div id="image-container3" onclick="window.location.href='https://mypetlife.co.kr/35175/'">
         <figure>
            <a href="#" ID="crawlImage3">
               <img src="https://mblogthumb-phinf.pstatic.net/MjAxODEyMDZfMjU3/MDAxNTQ0MDk4MjEwMTgy.gsHcRGmy1L56GWpWhZ6gectArX1G9dqi0sSrIH6wV6cg.HhF96yLMQ5g-aaKzd3m0hTl6ToO8peUAgL40qpXtmzMg.JPEG.drdnc/ScreenHunter_2191_Dec._06_21.03.jpg?type=w800">
               
            </a>
            <figcaption>강아지가 감기에 걸렸어요!</figcaption>
         </figure>
      </div>
      
      <div id="image-container4" onclick="window.location.href='https://mypetlife.co.kr/134094/'">
         <figure>
            <a href="#" ID="crawlImage4">
               <img src="https://mblogthumb-phinf.pstatic.net/MjAxOTEyMDlfMTkg/MDAxNTc1ODczMTg2MTA5.bCcizSwoly6vrbfjRtDXHreDqhyhkFuy1u5ZzFtMyXMg.DbprWG798lnT27iEawiiamMY0jj0GhCoteoPpERrYxwg.PNG.edu-pma/20191209153115.png?type=w800"">
            </a>
            <figcaption>강아지 팥 먹어도 되나요?</figcaption>
         </figure>
      </div>
      
      <div id="image-container5" onclick="window.location.href='https://mypetlife.co.kr/137683/'">
         <figure>
            <a href="#" ID="crawlImage5">
               <img src="https://images.mypetlife.co.kr/content/uploads/2022/11/08115315/8y51Z-2B8zxf44z6lMngHrHVgKD4IKt5aUWgrlSk5F_JE6.png">
            </a>
            <figcaption>대형견 옷 추천 제품 14가지</figcaption>
         </figure>
      </div>
      
      <div id="image-container6" onclick="window.location.href='https://mypetlife.co.kr/11163/'">
         <figure>
            <a href="#" ID="crawlImage6">
               <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1WZk-lnLa2DKykTKHZ0FfF5PFPvu68ehNiA&amp;usqp=CAU">
            </a>
            <figcaption>강아지 재생성 빈혈 증상 및 진단</figcaption>
         </figure>
      </div>
      
      <div id="image-container7" onclick="window.location.href='https://mypetlife.co.kr/107193/'">
         <figure>
            <a href="#" ID="crawlImage7">
               <img src="https://petrico.site/wp-content/uploads/2022/03/20220311_085304.jpg">
            </a>
            <figcaption>강아지 배 먹어도 되나요?</figcaption>
         </figure>
      </div>
      
      <div id="image-container8" onclick="window.location.href='https://mypetlife.co.kr/42331/'">
         <figure>
            <a href="#" ID="crawlImage8">
               <img src="https://i.ytimg.com/vi/MuVIvaHgd9A/maxresdefault.jpg">
            </a>
            <figcaption>강아지 털갈이 시기 및 관리법</figcaption>
         </figure>
      </div>

      <div id="data-container" style="display:none;"></div>
    
      <script src="assets/js/jquery.min.js"></script>
       <script src="assets/js/jquery.dropotron.min.js"></script>
       <script src="assets/js/browser.min.js"></script>
       <script src="assets/js/breakpoints.min.js"></script>
       <script src="assets/js/util.js"></script>
       <script src="assets/js/main.js"></script>
      <script>
        const crawledData = [
            { title: '강아지 건강검진 해야 하는 이유 – 주기, 항목, 비용 알아보기', content: 'https://mypetlife.co.kr/133737/' },
            { title: '강아지 생식 식단의 탄생, 이점과 위험성 알아보기', content: 'https://mypetlife.co.kr/15262/' },
            { title: '따가운 강아지 시선! 강아지가 쳐다보는 이유 5가지', content: 'https://mypetlife.co.kr/135535/' },
            { title: '강아지 감기 증상 및 관리법', content: 'https://mypetlife.co.kr/35175/' },
            { title: '강아지 팥 먹어도 되나요? 주의사항 알아보기', content: 'https://mypetlife.co.kr/134094/' },
            { title: '대형견 옷 추천 제품 14가지 – 어떻게 골라야 할까?', content: 'https://mypetlife.co.kr/137683/' },
            { title: '강아지 재생성 빈혈 증상 및 진단', content: 'https://mypetlife.co.kr/11163/' },
            { title: '강아지 배 먹어도 되나요? 주의사항은?', content: 'https://mypetlife.co.kr/107193/' },
            { title: '강아지 털갈이 시기 및 관리법', content: 'https://mypetlife.co.kr/42331/' },
        ];
        function displayData(index) {
            const container = document.getElementById('data-container');
            container.innerHTML = '';

            const item = crawledData[index];
            const card = document.createElement('div');
            card.innerHTML = `<a href="${item.content}" target="_blank"><h2>${item.title}</h2></a>`;
            container.appendChild(card);
            container.style.display = 'block';
        }
        document.getElementById('crawlImage').addEventListener('click', function () {
            document.querySelector('#image-container fig)
         </script>
   </body>
</html>