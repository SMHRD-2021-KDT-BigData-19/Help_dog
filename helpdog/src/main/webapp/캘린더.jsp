<%@page import="com.smhrd.domain.member_web"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding ="UTF-8"  isELIgnored ="false" %>
<!DOCTYPE HTML>
<!--
	Arcana by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
    <title>오래살개 🐶 </title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="assets/css/main.css" />

    <!-- FullCalendar 스크립트 및 스타일 추가 -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.10.2/fullcalendar.min.js"></script>
    <script src="index.global.js"></script>
    <style>
      
        ul>li {
            color: black;
        }

      #banner {
            display: flex;
            flex-direction: column; 
            align-items: center; 
            text-align: center; 
            margin-bottom: 1em;
         margin-top: 5em;
         margin-right: 24em;
        }

      #banner>h1 {
         font-size: 35px;
            color: black;
            margin-bottom: 0;
           
         margin-right: 500px;
        }


        #banner2 {
            display: flex;
            flex-direction: column;
            justify-content: flex-end;
            align-items: flex-end;
            flex-wrap: wrap;
            padding: 1em;
            flex: 1;
            margin-top: -20em;
         margin-right: 12em;
        }



        #banner h2 {
            flex: 1;
            margin-right: 18px;
            font-size: 30px;
            color: black;
            font-weight: normal;
        }

        #footer {
            text-align: center;
            padding: 15px;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column-reverse;
            align-items: center;
        }

        #footer a {
            margin: 10px 0;
        }

        #footer a.button {
            margin-right: 30px;
        }
		
    </style>
</head>
<body class="is-preload">
    <div id="page-wrapper">
        <nav id="nav">
            <ul>
                <li><a href="로그인 전.jsp" id="logo"> 🐶오래살개🐱</a></li>
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
                <li id="dog"><a href="마이페이지.jsp">마이페이지</a></li>
                <li><a href="로그인 전.jsp">로그아웃</a></li>
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

    <style>
        body {
            margin: 40px 10px;
            padding: 0;
            font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
            font-size: 14px;
        }

        #calendar {
            max-width: 1100px;
            margin: 0 auto;
        }

        .fc-toolbar {
            width: 700px;
        }
    </style>
</body>
</html>
