<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <!-- 한글깨짐 방지 -->
    <% request.setCharacterEncoding("euc-kr"); %>
    
    <!-- RegistBean과 LoginBean 정보 가져오기. -->
    <jsp:useBean id="memberbean" class="membership.RegistBean" scope="session"/>
    <jsp:useBean id="login" class="membership.LoginBean" scope="session"/>
    
<!DOCTYPE html>
<html>
<head>

<style>
	@import "MemberCSS.css";
</style>

<meta charset="EUC-KR">
<title>데이트 가쉴? | 마이페이지</title>
<link rel="icon" href="Bannericon.ico">
</head>
<body>

<%
//먼저 로그인을 했는지 확인
	if(!login.checkUser()){
%>

<!-- 로그인을 안했을 경우 -->
<div class="div">
<h2 class="title" align="center">마이페이지</h2>
<hr><br>
<div class="logintext" align="center">
로그인이 필요한 서비스입니다.
<br><br>

<button class="inputbttn" type="button" onclick="location.href='Login.html'">
로그인
</button>

<button class="inputbttn" type="button" onclick="location.href='Registration.html'">
회원가입
</button>

<button class="inputbttn" type="button" onclick="location.href='Mainhome.html'">
홈페이지로
</button>

</div>
</div>

<!-- 로그인을 한 경우 -->
<%
	}else{
%>
<div class="div">
<h2 class="title" align="center"><jsp:getProperty property="username" name="memberbean"/>님의<br>정보입니다.</h2>
<hr><br>

	<table class="table" width="450" align="center" border=1 bordercolor="#e5d0dc" cellspacing="0" cellpadding="10">
	
	
	<!-- getProperty를 통해서 memberbean안에 있는 메소드 정보들 출력 -->
	<tr>
		<td>아이디</td>
		<td><jsp:getProperty property="userid" name="memberbean"/></td>
	</tr>
	
	<tr>
		<td>이름</td>
		<td><jsp:getProperty property="username" name="memberbean"/></td>
	</tr>
	
	<tr>
		<td>생년월일</td>
		<td><jsp:getProperty property="birthday" name="memberbean"/></td>
	</tr>
	
	<tr>
		<td>전화번호</td>
		<td><jsp:getProperty property="tel" name="memberbean"/></td>
	</tr>
	
	<tr>
		<td>이메일</td>
		<td><jsp:getProperty property="email" name="memberbean"/></td>
	</tr>
	
	<tr>
		<td>성별</td>
		<td><jsp:getProperty property="gender" name="memberbean"/></td>
	</tr>
	
	<tr>
		<td colspan=2 align=center>
		
		<button class="inputbttn" type="button" onclick="location.href='Afterloginhome.html'">
		확인
		</button>
		
		<button class="inputbttn" type="button" onclick="location.href='Registration.html'">
		다시 가입하기
		</button>
		
		</td>
	</tr>

</table>
</div>
<%
	} 
%>
</body>
</html>