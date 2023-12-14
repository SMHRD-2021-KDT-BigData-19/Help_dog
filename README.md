# Help_dog
대시보드를 활용한 반려동물 건강 관리 서비스

</br>

## 1. 제작 기간 & 참여 인원
- 2023년 11월 15일 ~ 12월 12일
- 팀 프로젝트
- 참여인원 : 5명

</br>

## 2. 사용 기술
#### `Back-end`
  - Java
  - Apache Tomcat
  - Python
  - JDBC
  - Oracle
  
#### `Front-end`
  - Css
  - Js
  - Chart.js
  - Full Calendar

#### `IDE`
  - Visual Studio Code
  - eclipse

#### `Collaboration`
  - GitHub
  - Notion

</br>

## 3. ERD 설계

![erd](https://github.com/SMHRD-2021-KDT-BigData-19/Help_dog/assets/151595288/d566c282-01e4-4de9-9379-da8313de80b1)

## 4. 핵심 기능
이 서비스의 핵심 기능은 크롤링, Chart.js, FullCalendar API를 이용한 일정관리기능입니다.
사용자는 단지 게시물을 클릭하거나 날짜를 선택하고, 정보만 입력하면 끝입니다.

<details>
<summary><b>핵심 기능 설명 펼치기</b></summary>
<div markdown="1">

### 4.1. 전체 흐름

![image](https://github.com/SMHRD-2021-KDT-BigData-19/Help_dog/assets/151595288/1c705b76-6dd1-4315-8cb7-4b9f47672382)

### 4.2. 사용자 요청
![image](https://github.com/SMHRD-2021-KDT-BigData-19/Help_dog/assets/151595288/0f767b30-c142-4d70-8380-cf2daf31ce78)

- **URL 정규식 체크** :pushpin: [코드 확인](https://github.com/SMHRD-2021-KDT-BigData-19/Help_dog/blob/da0dc858eb640dae01fc50eb8660fa3252a90848/helpdog/src/main/webapp/Calendar.jsp#L7)
  - Vue.js로 렌더링된 화면단에서, 사용자가 등록을 시도한 URL의 모양새를 정규식으로 확인합니다.
  - URL의 모양새가 아닌 경우, 에러 메세지를 띄웁니다.

- **Axios 비동기 요청** :pushpin: [코드 확인]()
  - URL의 모양새인 경우, 컨텐츠를 등록하는 POST 요청을 비동기로 날립니다.

### 4.3. Controller

![](https://zuminternet.github.io/images/portal/post/2019-04-22-ZUM-Pilot-integer/flow_controller.png)

- **요청 처리** :pushpin: [코드 확인](https://github.com/JungHyung2/gitio.io/blob/d35d29b64c0e8b9653862bdcc1e6b997d2436ec9/index.html#L57C1-L57C202)
  - Controller에서는 요청을 화면단에서 넘어온 요청을 받고, Service 계층에 로직 처리를 위임합니다.

- **결과 응답** :pushpin: [코드 확인]()
  - Service 계층에서 넘어온 로직 처리 결과(메세지)를 화면단에 응답해줍니다.

### 4.4. Service

![](https://zuminternet.github.io/images/portal/post/2019-04-22-ZUM-Pilot-integer/flow_service1.png)

- **Http 프로토콜 추가 및 trim()** :pushpin: [코드 확인]()
  - 사용자가 URL 입력 시 Http 프로토콜을 생략하거나 공백을 넣은 경우,  
  올바른 URL이 될 수 있도록 Http 프로토콜을 추가해주고, 공백을 제거해줍니다.

- **URL 접속 확인** :pushpin: [코드 확인]()
  - 화면단에서 모양새만 확인한 URL이 실제 리소스로 연결되는지 HttpUrlConnection으로 테스트합니다.
  - 이 때, 빠른 응답을 위해 Request Method를 GET이 아닌 HEAD를 사용했습니다.
  - (HEAD 메소드는 GET 메소드의 응답 결과의 Body는 가져오지 않고, Header만 확인하기 때문에 GET 메소드에 비해 응답속도가 빠릅니다.)

  ![](https://zuminternet.github.io/images/portal/post/2019-04-22-ZUM-Pilot-integer/flow_service2.png)

- **Jsoup 이미지, 제목 파싱** :pushpin: [코드 확인]()
  - URL 접속 확인결과 유효하면 Jsoup을 사용해서 입력된 URL의 이미지와 제목을 파싱합니다.
  - 이미지는 Open Graphic Tag를 우선적으로 파싱하고, 없을 경우 첫 번째 이미지와 제목을 파싱합니다.
  - 컨텐츠에 이미지가 없을 경우, 미리 설정해둔 기본 이미지를 사용하고, 제목이 없을 경우 생략합니다.


### 4.5. Repository

![](https://zuminternet.github.io/images/portal/post/2019-04-22-ZUM-Pilot-integer/flow_repo.png)

- **컨텐츠 저장** :pushpin: [코드 확인]()
  - URL 유효성 체크와 이미지, 제목 파싱이 끝난 컨텐츠는 DB에 저장합니다.
  - 저장된 컨텐츠는 다시 Repository - Service - Controller를 거쳐 화면단에 송출됩니다.

</div>
</details>

</br>

## 5. 핵심 트러블 슈팅
### 5.1. 회원가입 실패시 회원가입 페이지로 재접속되는 문제
- 회원가입 실패시 해당 페이지에서 팝업창이 발생하도록 수정

<details>
<summary><b>기존 코드</b></summary>
<div markdown="1">

~~~java
/**
 * 회원가입 실패시 해당 페이지로 재접속 
 */
if (cnt>0){ response.sendRedirect("joinSuccess.jsp"); } else{ response.sendRedirect("join.jsp"); }

/**
~~~

</div>
</details>

- 이 때 카테고리(tag)로 게시물을 필터링 하는 경우,  
각 게시물은 최대 3개까지의 카테고리(tag)를 가질 수 있어 해당 카테고리를 포함하는 모든 게시물을 질의해야 했기 때문에  
- 아래 **개선된 코드**와 같이 QueryDSL을 사용하여 다소 복잡한 Query를 작성하면서도 페이징 처리를 할 수 있었습니다.

<details>
<summary><b>개선된 코드</b></summary>
<div markdown="1">

~~~java
/**
 * 팝업창이 나오도록 수정
 */
 if (cnt > 0) {
          // Display popup upon successful registration
          response.setContentType("text/html;charset=UTF-8");
          PrintWriter out = response.getWriter();
          out.println("<script>alert('회원가입이 완료되었습니다!'); window.location.href='login.jsp';</script>");
       } else {
          // Display popup upon registration failure
          response.setContentType("text/html;charset=UTF-8");
          PrintWriter out = response.getWriter();
          out.println("<script>alert('회원가입에 실패했습니다!'); window.location.href='회원가입.jsp';</script>");
       }
    }
 }
}
~~~

</div>
</details>

</br>

### 5.2. 마이페이지에서 사용자의 반려동물의 이름을 DB에서 불러오지 못하는 문제
- 사용자가 로그인을 하게 되면 session에 user_id를 저장받고 user_id를 통해 db에서 pet_info 테이블로 접근하여 사용자의 반려동물 이름을 불러오도록 수정
<details>
<summary><b>수정된 코드</b></summary>
<div markdown="1">

  ~~~ java
// 세션에 저장되어있는 회원의 정보 가져오기
    member_web loginMember = (member_web)session.getAttribute("loginMember");

    // JDBC 연결 설정
    String driver = "oracle.jdbc.driver.OracleDriver";
    String url = "jdbc:oracle:thin:@project-db-campus.smhrd.com:1523:XE";
    String username = "sc_21K_bigdata_hacksim_2";
    String password = "smhrd2";

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    String petNameResult = "";

    try {
        // JDBC 드라이버 로드
        Class.forName(driver);

        // 데이터베이스 연결
        conn = DriverManager.getConnection(url, username, password);

        // 특정 petName 값으로 pet_info 테이블 검색
        String query = "SELECT * FROM pet_info WHERE user_id = ?";
        pstmt = conn.prepareStatement(query);
        pstmt.setString(1, loginMember.getId());
~~~
</div>
</details>

</br>

## 6. 회고 / 느낀점
![image](https://github.com/SMHRD-2021-KDT-BigData-19/Help_dog/assets/151595288/373dd9f4-63d1-47fd-be9a-f776916d0244)

