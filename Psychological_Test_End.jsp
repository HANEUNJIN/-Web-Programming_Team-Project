<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����Ʈ ����? | ���� ����Ʈ ������?!</title>
<link rel="icon" href="Bannericon.ico">
</head>

<style>
@import "Psychological_TestCSS.css";
</style>

<body>
   <%-- ��� ����ϱ�
   01. <%= request.getParameter("question01")%><br>
   02. <%= request.getParameter("question02")%><br>
   03. <%= request.getParameter("question03")%><br>
   04. <%= request.getParameter("question04")%><br>
   05. <%= request.getParameter("question05")%><br>
   06. <%= request.getParameter("question06")%><br>
   07. <%= request.getParameter("question07")%><br>
   08. <%= request.getParameter("question08")%><br>
   09. <%= request.getParameter("question09")%><br>
   10. <%= request.getParameter("question10")%><br>
   --%>
   <br>
   <h2 class="title">���� ����Ʈ ������?!</h2><br>
   <div class="text">10�� �׸� �� 
   <% int result = 0;
   result = 
   Integer.parseInt(request.getParameter("question01"))+
   Integer.parseInt(request.getParameter("question02"))+
   Integer.parseInt(request.getParameter("question03"))+
   Integer.parseInt(request.getParameter("question04"))+
   Integer.parseInt(request.getParameter("question05"))+
   Integer.parseInt(request.getParameter("question06"))+
   Integer.parseInt(request.getParameter("question07"))+
   Integer.parseInt(request.getParameter("question08"))+
   Integer.parseInt(request.getParameter("question09"))+
   Integer.parseInt(request.getParameter("question10"));
   out.println(result);%> �� �����ϼ̽��ϴ�.<br><br></div>
   
   
   <% if(result <= 3){
	   {
	   %>
	   <center><div class="endreport"><div class="text"><br>0 ~ 3��</div><br>  <Strong class="text"><u>"��۱� ��å ����Ʈ ����"</u></Strong> <br><br>
	   <img class="endimg" src="dog.PNG"><br>
	   <p class="text">���ó�� �ۿ��� �����̰� ��å�ϴ� �� ����!<br><br></p></div></center>
	   <%
	   }
	   }
   else if(result <= 6){
	   {
	   %>
	   <center><div class="endreport"><div class="text"><br>4 ~ 6��</div><br> <Strong class="text"><u>"�䳢�� �ǳɲǳ� ����Ʈ ����"</u></Strong> <br><br>
	   <img class="endimg" src="rabbit.PNG"><br>
	   <p class="text">���� �����! ���� ���� �ǳɲǳ��ϸ� �Ȱ���!<br><br></p></div></center>
	   <%
         }
	   }
   else if(result <= 10){
	   {
	   %>
	   <center><div class="endreport"><div class="text"><br>7 ~ 10��</div><br> <Strong class="text"><u>"�Ǵٱ� ���� ����Ʈ ����"</u></Strong> <br><br>
	   <img class="endimg" src="panda.PNG"><br>
	   <p class="text">�Ǵٱ� ���� ����Ʈ �����Դϴ�.<br><br></p></div></center>
	   <%
	   }
	   } 
	   %>
	   <br><hr>
   <button class="inputbttn" type="button" onclick="location.href='Mainhome.html'"><!-- ������ Ȩ�������� �̵��ϴ� ��ư -->
	Ȩ��������
   </button>
</body>
</html>