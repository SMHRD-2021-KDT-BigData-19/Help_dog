<%@page import="com.smhrd.domain.member_web"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding ="UTF-8"  isELIgnored ="false" %>
<!DOCTYPE HTML>

<html>
   <head>
      <title>오래살개</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="assets/css/main.css" />
      
      <style>
         .speech-bubble {
            position: relative;
            max-width:500px; /* Adjust the width as needed */
            padding: 15px;
            background-color: #f1f1f1;
            border-radius: 10px;
            margin: 20px;
         }
   
         .speech-bubble::before {
            content: '';
            position: absolute;
            top: 100%;
            left: 50%;
            margin-left: -15px;
            border-width: 15px;
            border-style: solid;
            border-color: #f1f1f1 transparent transparent transparent;
         }
      </style>




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
                  </ul>
               </li>
   
            </ul>
         </nav>
      </div>

         
            <section class="wrapper style1" style="background-color: #f4f4f4">
               <div class="container">
                  <div class="row gtr-200">
                     <div class="col-8 col-12-narrower">
                        <div id="content">
                              <h2> &nbsp; &nbsp; 건강 체크 - Daily Check</h2>

                              <article style="width: 100%; background-color:rgba(244, 205, 142, 0.929)">   
                              <div class="check" style="text-align:center">
                                 <br><br>
                                 <label for="check"><b>사료를 남기지 않고 먹었나요?     <input type="checkbox"></b> </label>
                                </div>
                                 <div class="check" style="text-align:center">
                                    <label for="check"><b>대소변의 상태는 괜찮나요?     <input type="checkbox"></b> </label>
                                  </div>
                                  <br><br>
                                 <br><br>
                              </article>
   
   

                                 <article class = "speech-bubble">   
                                    <div class="check">
                                       <b>얼굴을 자세히 살펴봤나요?</b><br>
                                       <b>[질환 의심 증상 - 귀]<br>
                                 
                                       </b><br>
                                       <label for="check"><b>귀에서 냄새가 나나요?<input type="checkbox"></b> </label><br><br>
                                       <label for="check"><b>가려워하며 귀를 긁나요?<input type="checkbox"></b> </label><br><br>
                                       <label for="check"><b>귀지의 상태가 평소와 다른가요?<input type="checkbox"></b> </label>

                                      </div>
                                    </article>

                                    
                                 <article class = "speech-bubble">   
                                    <div class="check">
                                       <b>얼굴을 자세히 살펴봤나요?</b><br>
                                       <b>[질환 의심 증상 - 눈]<br>
                                 
                                       </b><br>
                                       <label for="check"><b>눈이 충혈됐나요?<input type="checkbox"></b> </label><br><br>
                                       <label for="check"><b>눈을 과도하게 깜빡이나요?<input type="checkbox"></b> </label><br><br>
                                       <label for="check"><b>분비물(눈물, 눈곱)이 나오나요?<input type="checkbox"></b> </label>

                                      </div>
                                    </article>

                                    <article class = "speech-bubble">   
                                       <div class="check">
                                          <b>얼굴을 자세히 살펴봤나요?</b><br>
                                          <b>[질환 의심 증상 - 코]<br>
                                    
                                          </b><br>
                                          <label for="check"><b>재채기를 하나요?<input type="checkbox"></b> </label><br><br>
                                          <label for="check"><b>분비물(콧물, 코피)이 나오나요?<input type="checkbox"></b> </label><br><br>
                                         </div>
                                       </article>
                                       
                                       <article class = "speech-bubble">   
                                          <div class="check">
                                             <b>입안까지 자세히 살펴봤나요?</b><br>
                                    
                                       
                                             </b><br>
                                             <label for="check"><b>입냄새가 나나요?<input type="checkbox"></b> </label><br><br>
                                             <label for="check"><b>염증이 생겼거나 피가 나나요?<input type="checkbox"></b> </label><br><br>
                                            </div>
                                            
                                          </article>
                                          <br>
         <input type="submit" value="저장하기">
         </div>
                                            
                        </div>
                     </div>
                     <div class="col-4 col-12-narrower">
                        <div id="sidebar">
                        
                        </div>
                     </div>
                  </div>
               </div>
            </section>

         


               
            </div>

      </div>
      <div>
		
         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/jquery.dropotron.min.js"></script>
         <script src="assets/js/browser.min.js"></script>
         <script src="assets/js/breakpoints.min.js"></script>
         <script src="assets/js/util.js"></script>
         <script src="assets/js/main.js"></script>

   </body>
</html>