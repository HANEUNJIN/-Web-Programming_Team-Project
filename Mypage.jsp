<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    <!-- �ѱ۱��� ���� -->
    <% request.setCharacterEncoding("euc-kr"); %>
    
    <!-- RegistBean�� LoginBean ���� ��������. -->
    <jsp:useBean id="memberbean" class="membership.RegistBean" scope="session"/>
    <jsp:useBean id="login" class="membership.LoginBean" scope="session"/>
    
<!DOCTYPE html>
<html>
<head>

<style>
	@import "MemberCSS.css";
</style>

<meta charset="EUC-KR">
<title>����Ʈ ����? | ����������</title>
<link rel="icon" href="Bannericon.ico">
</head>
<body>

<%
//���� �α����� �ߴ��� Ȯ��
	if(!login.checkUser()){
%>

<!-- �α����� ������ ��� -->
<div class="div">
<h2 class="title" align="center">����������</h2>
<hr><br>
<div class="logintext" align="center">
�α����� �ʿ��� �����Դϴ�.
<br><br>

<button class="inputbttn" type="button" onclick="location.href='Login.html'">
�α���
</button>

<button class="inputbttn" type="button" onclick="location.href='Registration.html'">
ȸ������
</button>

<button class="inputbttn" type="button" onclick="location.href='Mainhome.html'">
Ȩ��������
</button>

</div>
</div>

<!-- �α����� �� ��� -->
<%
	}else{
%>
<div class="div">
<h2 class="title" align="center"><jsp:getProperty property="username" name="memberbean"/>����<br>�����Դϴ�.</h2>
<hr><br>

	<table class="table" width="450" align="center" border=1 bordercolor="#e5d0dc" cellspacing="0" cellpadding="10">
	
	
	<!-- getProperty�� ���ؼ� memberbean�ȿ� �ִ� �޼ҵ� ������ ��� -->
	<tr>
		<td>���̵�</td>
		<td><jsp:getProperty property="userid" name="memberbean"/></td>
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
		
		<button class="inputbttn" type="button" onclick="location.href='Afterloginhome.html'">
		Ȯ��
		</button>
		
		<button class="inputbttn" type="button" onclick="location.href='Registration.html'">
		�ٽ� �����ϱ�
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