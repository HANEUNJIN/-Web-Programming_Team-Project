<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
    <!-- LoginBean�ҷ��ͼ� LoginBean�ȿ� �ִ� tryId, tryPwd �޼ҵ带 ����ϰڴٴ� ��-->
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
<title>����Ʈ ����? | �α���</title>
<link rel="icon" href="Bannericon.ico">
</head>
<body>

<div class="div">
<h2 class="title" align="center">�α���</h2>
<hr><br>
<div class="logintext" align="center">
<%
//LoginBean �ȿ��ִ� checkUser�Լ��� ���� �α��� ������ �´��� Ȯ��
	if(!login.checkUser()){
		out.println("�α����� ���� ���߽��ϴ�");
%>
<br>���̵� �Ǵ� ��й�ȣ�� �ٽ� Ȯ���� �ּ���.
<br><br>
<button class="inputbttn" type="button" onclick="location.href='Login.html'">
�α���
</button>
<%
	}else{
		out.println("�α��� �Ǿ����ϴ�!");
%>
<br><br>
<button class="inputbttn" type="button" onclick="location.href='Afterloginhome.html'">
Ȩ��������
</button>

<button class="inputbttn" type="button" onclick="location.href='Mypage.jsp'">
����������
</button>
<br>
<%
	}
%>
</div>
</div>

</body>
</html>