# JSP 게시판 만들기 강좌 (JSP Advanced Development Tutorial)

ref. https://www.youtube.com/playlist?list=PLRx0vPvlEmdAZv_okJzox5wj2gG_fNh_6

## 1강 - Hello World! (JSP Advanced Development Tutorial #1)

- 자신의 OS에 맞게 JDK 다운로드
- 시스템 속성에서 JDK 환경 변수 path 설정하기
- cmd에 javac 입력하여 제대로 적용 되었나 확인
- 자신의 OS에 맞는 tomcat 다운로드
- tomcat 서버 내부에 있는 startup.bat 실행
- 이클립스 Java EE Developers 다운로드
- - -

## 2강 - 로그인 페이지 디자인 (JSP Advanced Development Tutorial #2)

- 인코딩을 UTF-8로 전부 바꾸고, HTML5 사용
- bootstrap(3.7.7) 다운로드 후 webContent 밑에 복사
- index.jsp 에서 바로 login.jsp 이동 스크립트 작성
- login.jsp
  - viewport 반응형 웹을 위한 해상도 처리
  - bootstrap, JQuery 연결
  - 하나의 웹사이트에 전반적인 구성을 보여주는 네비게이션 추가(맨 위 상단바)
  - 로그인화면(아이디, 비밀번호 입력, 로그인 버튼) 구성화면 추가
- - -

## 3강 - 회원 데이터베이스 구축하기 (JSP Advanced Development Tutorial #3)

- mysql installer 다운로드 및 설치
- mysql에서 BBS DB 생성
- 스키마 생성 userid, userpassword, username, usergender, useremail
- user 패키지 만들고 USer.java 파일 안에 멤버 변수 선언해주고 자바 빈즈 만들기
- - -

## 4강 - 로그인 기능 구현하기 (JSP Advanced Development Tutorial #4)

- 데이터 베이스에 접근할 수 있는 UserDAO 만들어주기
  - 데이터베이스 연결 위해 생성자에 작성해주기
  - 데이터 베이스와 연결하여 로그인 기능 구현
- loginAction.jsp에서 데이터베이스 연결 후 처리
- mysql jdbc 드라이버 lib에 추가
- index.jsp -> login.jsp -> 로그인 버튼 -> loginAction.jsp -> userDAO.login(UserDAO.java) -> 응답 결과 loginAction.jsp에서 처리
- - -

## 5강 - 회원가입 페이지 디자인 (JSP Advanced Development Tutorial #5)

- 회원가입 화면 만들기
- - -

## 6강 - 회원가입 기능 구현하기 (JSP Advanced Development Tutorial #6)

- 회원가입 기능 구현
- userDAO에 join 메서드 추가
- DB에 기본키를 userID로 해줬기에 중복된 아이디 가입 불가능
- 회원가입 시 입력하지 않은 값이 있으면 aler창 띄움
- - -

## 7강 - 접속한 회원 세션 관리하기 (JSP Advanced Development Tutorial #7)

- 로그인, 회원가입 액션에서 회원 세션 처리해주기
- 메인 화면에서 로그인 되어있을 때와 안되어 있을 때 나눠서 구현하기
- - -

## 8강 - 게시판 메인 페이지 디자인 (JSP Advanced Development Tutorial #8)

- 게시판(테이블 구조) 디자인 구현하기
- 번호, 제목, 작성자, 작성일
- - -

## 9강 - 게시판 데이터베이스 구축하기 (JSP Advanced Development Tutorial #9)

- 게시판 데이터베이스 테이블 만들기
- 데이터 베이스에 접근하는 자바 빈즈 만들기
- mysql 계정 비밀번호 변경
- - -

## 10강 - 글쓰기 기능 구현하기 (JSP Advanced Development Tutorial #10)

- 게시판 DB 생성
- select now() 현재 시간 가져오는 mysql 문장
- 함수별로 데이터 베이스 접근에 마찰이 일어나지 않도록 PreparedStatement는 함수별로 따로 선언해주기
- main.jsp 게시판에서 글쓰기 버튼 -> write.jsp에서 제목, 내용 입력 후 글쓰기 버튼 -> writeAction.jsp -> BbsDAO.jsp(write 함수) -> 성공 했으면 bbs.jsp
- - -

## 11강 - 게시판 글 목록 기능 구현하기 (JSP Advanced Development Tutorial #11)

- BbsDAO 에서 테이블 값 10개씩 가져오는 getList() 구현
- BbsDAO 에서 페이징 처리를 위해 nextPage() 구현
- bbs.jsp 에서 데이터 베이스 값 가져와서 뿌려주기, 페이징 처리 
- - -

## 12강 - 게시글 보기 기능 구현하기 (JSP Advanced Development Tutorial #12)

- 게시글 하나 상세보기 구현
- 내가 쓴 글만 수정, 삭제 버튼 보이게 
- 게시판 글 내용에 특수문자 입력 가능
-  크로스 사이트 스크립트 공격 -> 스크립트 문장을 제목이나 글 내용에 입력하여 공격하는 방식! 스크립트를 치환해 줌으로써 예방한다. replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll("\n","<br>")
- - -

