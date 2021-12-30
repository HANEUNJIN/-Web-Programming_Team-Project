<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
    <!-- LoginBean불러와서 LoginBean안에 있는 tryId, tryPwd 메소드를 사용하겠다는 뜻-->
    <jsp:useBean id="login" class="membership.LoginBean" scope="session"/>
    <jsp:setProperty name="login" property="tryId"/>
    <jsp:setProperty name="login" property="tryPwd"/>
    
<!DOCTYPE html>
<html>
<head>

<style>
	@import "MemberCSS.css";
</style>

<meta charset="EUC-KR">
<title>데이트 가쉴? | 로그인</title>
<link rel="icon" href="Bannericon.ico">
</head>
<body>

<div class="div">
<h2 class="title" align="center">로그인</h2>
<hr><br>
<div class="logintext" align="center">
<%
//LoginBean 안에있는 checkUser함수를 통해 로그인 정보가 맞는지 확인
	if(!login.checkUser()){
		out.println("로그인을 하지 못했습니다");
%>
<br>아이디 또는 비밀번호를 다시 확인해 주세요.
<br><br>
<button class="inputbttn" type="button" onclick="location.href='Login.html'">
로그인
</button>
<%
	}else{
		out.println("로그인 되었습니다!");
%>
<br><br>
<button class="inputbttn" type="button" onclick="location.href='Afterloginhome.html'">
홈페이지로
</button>

<button class="inputbttn" type="button" onclick="location.href='Mypage.jsp'">
마이페이지
</button>
<br>
<%
	}
%>
</div>
</div>

</body>
</html>