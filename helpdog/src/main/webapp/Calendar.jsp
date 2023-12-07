<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang='en'>

<head>
    <title>오래살개</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="assets/css/main.css" />
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar/index.global.min.js'></script>

    <style>
         	/* 캘린더 크기 조정 */
        #calendar {
            width: 70%;
            height: 70%;
            overflow : hidden;
        }
		  .fc-scrollgrid {
		    overflow: hidden !important;
		  }
		
		  .fc-view-harness {
		    overflow: hidden !important;
		  }
        #yrModal {
            position: fixed;
            width: 100%;
            height: 100%;
            background-color: rgb(255, 238, 230, 0.7);
            display: none;
            z-index: 1000;
        }
        
		/*일정 입력란 배경*/
        #cont {
            margin: 50px auto;
            width: 30%;
            height: 70%;
            background-color: rgb(255, 179, 179);
            color: white;
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
         </nav>
      </div>
    <!-- 모달은 메인 영역 밖으로 빼어 놓는게 좋음-->
    <div id="yrModal">
        <div id="cont" style="text-align: center;">
            <br>
            <h1>일정을 입력해주세요</h1>
            시작일 <br>
            <input type="text" id="schStart" value=""><br>
            종료일<br>
             <input type="text" id="schEnd" value=""><br>
            예방접종/진료종류<br>
            <input type="text" id="schTitle" value=""><br>
            예방접종/진료 체크 여부: <br>
             완료<input type="radio"  id="schYes" value="Y"  name="check" checked />
             아직<input type="radio" id="schNo" value="N" name="check" /><br>
            배경색<input type="color" id="schBColor" value="">
            글자색<input type="color" id="schFColor" value=""><br>
            <button onclick="fCalAdd()">추가</button>
            <button onclick="fMClose()">닫기</button>
        </div>
    </div>
    <!-- 실제 화면을 담을 영역 -->
      <div id="Wrapper">
       <div id='calendar' style="text-align:center; width:50%; height: 50%; margin: 0 auto;"></div>
    </div>
      <script>
        const YrModal = document.querySelector("#yrModal");
        const calendarEl = document.querySelector('#calendar');
        const mySchStart = document.querySelector("#schStart");
        const mySchEnd = document.querySelector("#schEnd");
        const mySchTitle = document.querySelector("#schTitle");
        const mySchYes = document.querySelector("#schYes");
        const mySchNo = document.querySelector("#schNo");
        const mySchAllday = document.querySelector("#allDay");
        const mySchBColor = document.querySelector("#schBColor");
        const mySchFColor = document.querySelector("#schFColor");

        //캘린더 헤더 옵션
        const headerToolbar = {
        		 left: 'prevYear,prev,next,nextYear today',
                 center: 'title',
                 right: 'dayGridMonth,dayGridWeek,timeGridDay'
        }

        // 캘린더 생성 옵션(참공)
        const calendarOption = {
            height: '700px', // calendar 높이 설정
            expandRows: true, // 화면에 맞게 높이 재설정
            slotMinTime: '09:00', // Day 캘린더 시작 시간
            slotMaxTime: '18:00', // Day 캘린더 종료 시간
            // 맨 위 헤더 지정
           // headerToolbar: headerToolbar,
            initialView: 'dayGridMonth',  // default: dayGridMonth 'dayGridWeek', 'timeGridDay', 'listWeek'
            locale: 'kr',        // 언어 설정
            selectable: true,    // 영역 선택
            selectMirror: false,  // 오직 TimeGrid view에만 적용됨, default false
            navLinks: false,      // 날짜,WeekNumber 클릭 여부, default false
            weekNumbers: false,   // WeekNumber 출력여부, default false
            editable: true,      // event(일정) 
            /* 시작일 및 기간 수정가능여부
            eventStartEditable: false,
            eventDurationEditable: true,
            */
            dayMaxEventRows: true,  // Row 높이보다 많으면 +숫자 more 링크 보임!
            /*
            views: {
                dayGridMonth: {
                    dayMaxEventRows: 3
                }
            },
            */
            nowIndicator: true,
            //events:[],
   
        }

        // 캘린더 생성
        const calendar = new FullCalendar.Calendar(calendarEl, calendarOption);
        // 캘린더 그리기
        calendar.render();

        // 캘린더 이벤트 등록
        calendar.on("eventAdd", info => console.log("Add:", info));
        calendar.on("eventChange", info => console.log("Change:", info));
        calendar.on("eventRemove", info => console.log("Remove:", info));
        calendar.on("eventClick", info => {
            console.log("eClick:", info);
            console.log('Event: ', info.event.extendedProps);
            console.log('Coordinates: ', info.jsEvent);
            console.log('View: ', info.view);
            // 재미로 그냥 보더색 바꾸깅
            info.el.style.borderColor = 'red';
        });
        calendar.on("eventMouseEnter", info => console.log("eEnter:", info));
        calendar.on("eventMouseLeave", info => console.log("eLeave:", info));
        calendar.on("dateClick", info => console.log("dateClick:", info));
        calendar.on("select", info => {
            console.log("체크", info);

            mySchStart.value = info.startStr;
            mySchEnd.value = info.endStr;

            YrModal.style.display = "block";
        });

        // 일정(이벤트) 추가하깅
        function fCalAdd() {
            if (!mySchTitle.value) {
                alert("*예방접종/진료종류 입력해주세요*")
                mySchTitle.focus();
                return;
            }
            let bColor = mySchBColor.value;
            let fColor = mySchFColor.value;
            if (fColor == bColor) {
                bColor = "black";
                fColor = "yellow";
            }

            let event = {
                start: mySchStart.value,
                end: mySchEnd.value,
                title: mySchTitle.value,
                allDay: mySchAllday.checked,
                backgroundColor: bColor,
                textColor: fColor
            };

            calendar.addEvent(event);
            fMClose();
        }

        // 모달 닫기
        function fMClose() {
            YrModal.style.display = "none";
        }
       
    </script>
</body>

</html>