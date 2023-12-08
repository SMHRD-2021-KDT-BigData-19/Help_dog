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
  .cola,
  .cyder {
    width: 45%; /* Adjust the width as needed */
    height: 300px;
    background-color: rgba(244, 205, 142, 0.929);
    margin: 20px;
    display: inline-block;
    vertical-align: top; /* Align to the top */
    box-sizing: border-box; /* Include padding and border in the width */
  

  .cola,
  .cyder {
    width: 45%;
    height: 300px;
    background-color: rgba(244, 205, 142, 0.929);
    margin: 20px;
    display: inline-block;
    vertical-align: top; /* Align to the top */
    box-sizing: border-box; /* Include padding and border in the width */
    text-align: center; /* 가운데 정렬 추가 */
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
               <li><a href="캘린더.jsp">캘린더(Calendar)</a></li>
               <li><a href="팁.jsp">팁(Tip)</a></li>
               <li>
                  <a href="mypage.jsp">마이페이지</a>
               </li>
                   <li><a href="loginbefore.jsp">로그아웃</a></li>
                  </ul>
               </li>
   
            </ul>
         </nav>
      </div>

         
            <section class="wrapper style1" style="background-color: #f4f4f4">
                        <div id="content">
                              <h2 style="margin-left: 100px">건강 체크 - Daily Check</h2>
                        </div>
                                     <article class="cyder" style="width: 45%; height: 300px; background-color:rgba(178, 235, 167, 0.929); text-align:center">   
                                       <div class="check">
                                       <br>
                                       <b style="font-size: 25px;">반려동물의 건강을 체크해주세요!</b><br>
                                       <br>
                                       <b>
                                       </b>
                                       <b>
                                       반려동물이 아프다며 주인에게 신호를 보내고 있더라도 
                                       <br>
                                       알아차리지 못하는 경우가 많아요.
                                       <br>
                                       설문들을 읽고 체크해가며 소중한 반려동물의 
                                       <br>
                                       건강을 확인해보는 것은 어떨까요?
                                       <br><br>
                                       *문항 중 하나라도 체크가 된다면 가까운 동물병원에서 진료를
                                       <br>
                                       받아보는 것을 권장합니다!*
                                       </b>
									  </div>
									  </article>
                              <article class="cola" style="width: 45%; height: 300px; background-color:rgba(244, 205, 142, 0.929);">   
                              <div class="check" style="text-align:center">
								<br>
                                       <b style="font-size: 25px;">밥은 잘 먹나요?</b>
                                       <br>
                                       <b>[질환 의심 증상 - 섭식]</b>
                                       <br><br>
                                 <label for="check"><b>사료를 남기지 않고 먹었나요?     <input type="checkbox"></b> </label>
									<br><br>
                                 <label for="check"><b>대소변의 상태는 괜찮나요?     <input type="checkbox"></b> </label>
                                </div>
 								</article>
                                 <article class="cyder" style="width: 45%; height: 300px; background-color:rgba(244, 205, 142, 0.929); text-align:center">   
                                    <div class="check">
                                    <br>
                                       <b style="font-size: 25px;">얼굴을 자세히 살펴봤나요?</b><br>
                                       <b>[질환 의심 증상 - 귀]</b>
										<br><br>
                                       <label for="check"><b>귀에서 냄새는 안나나요?<input type="checkbox"></b> </label><br><br>
                                       <label for="check"><b>가려워하며 귀를 긁지는 않나요?<input type="checkbox"></b> </label><br><br>
                                       <label for="check"><b>귀지의 상태가 평소와 다르지는 않나요?<input type="checkbox"></b> </label>

                                      </div>
                                    </article>
   
   


                                    
                                 <article class="cola" style="width: 45%; height: 300px; background-color:rgba(244, 205, 142, 0.929); text-align:center">   
                                    <div class="check">
                                    <br>
                                       <b style="font-size: 25px;">얼굴을 자세히 살펴봤나요?</b><br>
                                       <b>[질환 의심 증상 - 눈]<br>
                                 
                                       </b><br>
                                       <label for="check"><b>눈이 충혈되지는 않았나요?<input type="checkbox"></b> </label><br><br>
                                       <label for="check"><b>눈을 과도하게 깜빡이지는 않나요?<input type="checkbox"></b> </label><br><br>
                                       <label for="check"><b>분비물(눈물, 눈곱)이 나오지는 않나요?<input type="checkbox"></b> </label>

                                      </div>
                                    </article>

                                    <article class="cyder" style="width: 45%; height: 300px; background-color:rgba(244, 205, 142, 0.929); text-align:center">   
                                       <div class="check">
                                       <br>
                                          <b style="font-size: 25px;">얼굴을 자세히 살펴봤나요?</b><br>
                                          <b>[질환 의심 증상 - 코]<br>
                                    
                                          </b><br>
                                          <label for="check"><b>재채기를 하지는 않나요?<input type="checkbox"></b> </label><br><br>
                                          <label for="check"><b>분비물(콧물, 코피)이 나오지는 않나요?<input type="checkbox"></b> </label><br><br>
                                         </div>
                                       </article>
                                       
                                       <article class="cola" style="width: 45%; height: 300px; background-color:rgba(244, 205, 142, 0.929); text-align:center">   
                                          <div class="check">
                                          <br>
                                             <b style="font-size: 25px;">입안까지 자세히 살펴봤나요?</b><br>
                                    
                                       
                                             </b><br>
                                             <label for="check"><b>입냄새가 나지는 않나요?<input type="checkbox"></b> </label><br><br>
                                             <label for="check"><b>염증이 생겼거나 피가 나지는 않나요?<input type="checkbox"></b> </label><br><br>
                                            </div>
                                          </article>

            </section>

		
         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/jquery.dropotron.min.js"></script>
         <script src="assets/js/browser.min.js"></script>
         <script src="assets/js/breakpoints.min.js"></script>
         <script src="assets/js/util.js"></script>
         <script src="assets/js/main.js"></script>

   </body>
</html>