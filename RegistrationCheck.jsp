<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <!-- 한글깨짐 방지 -->
    <% request.setCharacterEncoding("euc-kr"); %>
    
    
    <!-- 기입한 정보를 한번 더 보여주기 위해 RegistBean 불러오기 -->
    <jsp:useBean id="memberbean" class="membership.RegistBean" scope="session"/>
    <jsp:setProperty property="*" name="memberbean"/>
    
    <!-- 가입한 아이디와 비밀번호를 저장하고, 로그인할 때 입력값을 비교하기 위해 
    LoginBean 불러오고 property도 아이디랑 패스워드만 불러옴 -->
    <jsp:useBean id="login" class="membership.LoginBean" scope="session"/>
    <jsp:setProperty property="loginid" name="login"/>
    <jsp:setProperty property="loginpassword" name="login"/>
    
    
    
<!DOCTYPE html>
<html>
<head>

<style>
	@import "MemberCSS.css";
</style>

<meta charset="EUC-KR">
<title>데이트 가쉴? | 회원가입</title>
<link rel="icon" href="Bannericon.ico">
</head>
<body>

<!-- 회원가입할 때 입력한 아이디와 패스워드를 LoginBean의 loginid와 loginpassword에 넣는 코드 -->
<%
login.setLoginid(memberbean.getUserid()); 
login.setLoginpassword(memberbean.getPassword());
%>

<div class="div">
<h2 class="title" align="center">입력하신 정보대로<br>회원가입 되셨습니다.</h2>
<hr><br>

	<table class="table" width="450" align="center" border=1 bordercolor="#e5d0dc" cellspacing="0" cellpadding="10">
	
	<!-- getProperty로 RegistBean에 저장된 값들을 출력하는 중 -->
	<tr>
		<td>아이디</td>
		<td><jsp:getProperty property="userid" name="memberbean"/></td>
	</tr>
	
	<tr>
		<td>비밀번호</td>
		<td><jsp:getProperty property="password" name="memberbean"/></td>
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
		
		<button class="inputbttn" type="button" onclick="location.href='Login.html'">
		로그인하기
		</button>
		
		<button class="inputbttn" type="button" onclick="location.href='Registration.html'">
		다시입력하기
		</button>
		
		<button class="inputbttn" type="button" onclick="location.href='Mainhome.html'">
		홈페이지로
		</button>
		
		</td>
	</tr>

	
	</table>
</div>

</body>
</html>