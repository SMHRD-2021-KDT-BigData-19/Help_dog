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
               </li>
            </ul>
         </nav>
      </div>


    <!-- Main -->
    <div id="aaa" style="float: left; margin-left: 100px; width: 30%; margin-top: 100px;">
        <div class="menulist">
            <td><b>일정 선택하기</b></td>
            <br>
            <td>
                <select>
                    <option>주사맞는날!!</option>
                    <option>건강검진하는날!!</option>
                    <option>병원예약</option>
                </select>
            </td>
        </div>
        <br>
        <br>
        <div class="check">
            <div>      
                <label><b>예방접종/진료 체크 여부:</b></label>
                <br>
                <input type="radio" name="contact" value="email" checked />
                <span>완료</span>
                <input type="radio" name="contact" value="phone" />
                <span>아직</span>
            </div>
        </div>
        <br>
        <br>
        <td><b>예방접종/진료 종류</b></td>
        <br>
        <textarea placeholder="입력해주세요" style="width: 280px; height: 30px;"></textarea>
        <br>
        <tr>
        </tr>
        <br>
        <br>
        <tr class="nomalTr">
            <td colspan ="2">
                <input type="submit">  
                <input type="reset">
            </td>
        </tr>
    </div>

    <div id='calendar' style="width: 700px; height: auto;  margin-left: 500px; margin-top: 50px;">
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var calendarEl = document.getElementById('calendar');

            var calendar = new FullCalendar.Calendar(calendarEl, {
                headerToolbar: {
                    left: 'prev next',
                    center: 'title',
                    right: 'dayGridMonth today'
                },
                initialDate: '2023-01-12',
                navLinks: true,
                selectable: true,
                selectMirror: true,
                select: function(arg) {
                    var title = prompt('Event Title:');
                    if (title) {
                        calendar.addEvent({
                            title: title,
                            start: arg.start,
                            end: arg.end,
                            allDay: arg.allDay
                        })
                    }
                    calendar.unselect()
                },
                eventClick: function(arg) {
                    if (confirm('Are you sure you want to delete this event?')) {
                        arg.event.remove()
                    }
                },
                editable: true,
                dayMaxEvents: true,
                events: [
                    {
                        title: 'All Day Event',
                        start: '2023-01-01'
                    },
                    {
                        title: 'Long Event',
                        start: '2023-01-07',
                        end: '2023-01-10'
                    },
                    {
                        groupId: 999,
                        title: 'Repeating Event',
                        start: '2023-01-09T16:00:00'
                    },
                    {
                        groupId: 999,
                        title: 'Repeating Event',
                        start: '2023-01-16T16:00:00'
                    },
                    {
                        title: 'Conference',
                        start: '2023-01-11',
                        end: '2023-01-13'
                    },
                    {
                        title: 'Meeting',
                        start: '2023-01-12T10:30:00',
                        end: '2023-01-12T12:30:00'
                    },
                    {
                        title: 'Lunch',
                        start: '2023-01-12T12:00:00'
                    },
                    {
                        title: 'Meeting',
                        start: '2023-01-12T14:30:00'
                    },
                    {
                        title: 'Happy Hour',
                        start: '2023-01-12T17:30:00'
                    },
                    {
                        title: 'Dinner',
                        start: '2023-01-12T20:00:00'
                    },
                    {
                        title: 'Birthday Party',
                        start: '2023-01-13T07:00:00'
                    },
                    {
                        title: 'Click for Google',
                        url: 'http://google.com/',
                        start: '2023-01-28'
                    }
                ]
            });

            calendar.render();
        });
    </script>

    
    <!-- Scripts -->
   <script src="assets/js/jquery.min.js"></script>
   <script src="assets/js/jquery.dropotron.min.js"></script>
   <script src="assets/js/browser.min.js"></script>
   <script src="assets/js/breakpoints.min.js"></script>
   <script src="assets/js/util.js"></script>
   <script src="assets/js/main.js"></script>
</body>
</html>
