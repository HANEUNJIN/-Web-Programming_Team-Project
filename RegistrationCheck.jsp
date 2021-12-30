<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <!-- �ѱ۱��� ���� -->
    <% request.setCharacterEncoding("euc-kr"); %>
    
    
    <!-- ������ ������ �ѹ� �� �����ֱ� ���� RegistBean �ҷ����� -->
    <jsp:useBean id="memberbean" class="membership.RegistBean" scope="session"/>
    <jsp:setProperty property="*" name="memberbean"/>
    
    <!-- ������ ���̵�� ��й�ȣ�� �����ϰ�, �α����� �� �Է°��� ���ϱ� ���� 
    LoginBean �ҷ����� property�� ���̵�� �н����常 �ҷ��� -->
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
<title>����Ʈ ����? | ȸ������</title>
<link rel="icon" href="Bannericon.ico">
</head>
<body>

<!-- ȸ�������� �� �Է��� ���̵�� �н����带 LoginBean�� loginid�� loginpassword�� �ִ� �ڵ� -->
<%
login.setLoginid(memberbean.getUserid()); 
login.setLoginpassword(memberbean.getPassword());
%>

<div class="div">
<h2 class="title" align="center">�Է��Ͻ� �������<br>ȸ������ �Ǽ̽��ϴ�.</h2>
<hr><br>

	<table class="table" width="450" align="center" border=1 bordercolor="#e5d0dc" cellspacing="0" cellpadding="10">
	
	<!-- getProperty�� RegistBean�� ����� ������ ����ϴ� �� -->
	<tr>
		<td>���̵�</td>
		<td><jsp:getProperty property="userid" name="memberbean"/></td>
	</tr>
	
	<tr>
		<td>��й�ȣ</td>
		<td><jsp:getProperty property="password" name="memberbean"/></td>
	</tr>
	
	<tr>
		<td>�̸�</td>
		<td><jsp:getProperty property="username" name="memberbean"/></td>
	</tr>
	
	<tr>
		<td>�������</td>
		<td><jsp:getProperty property="birthday" name="memberbean"/></td>
	</tr>
	
	<tr>
		<td>��ȭ��ȣ</td>
		<td><jsp:getProperty property="tel" name="memberbean"/></td>
	</tr>
	
	<tr>
		<td>�̸���</td>
		<td><jsp:getProperty property="email" name="memberbean"/></td>
	</tr>
	
	<tr>
		<td>����</td>
		<td><jsp:getProperty property="gender" name="memberbean"/></td>
	</tr>
	
	<tr>
		<td colspan=2 align=center>
		
		<button class="inputbttn" type="button" onclick="location.href='Login.html'">
		�α����ϱ�
		</button>
		
		<button class="inputbttn" type="button" onclick="location.href='Registration.html'">
		�ٽ��Է��ϱ�
		</button>
		
		<button class="inputbttn" type="button" onclick="location.href='Mainhome.html'">
		Ȩ��������
		</button>
		
		</td>
	</tr>

	
	</table>
</div>

</body>
</html>