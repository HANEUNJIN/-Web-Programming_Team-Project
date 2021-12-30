<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>데이트 가쉴? | 나의 데이트 유형은?!</title>
<link rel="icon" href="Bannericon.ico">
</head>

<style>
@import "Psychological_TestCSS.css";
</style>

<body>
   <%-- 결과 출력하기
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
   <h2 class="title">나의 데이트 유형은?!</h2><br>
   <div class="text">10개 항목 중 
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
   out.println(result);%> 개 선택하셨습니다.<br><br></div>
   
   
   <% if(result <= 3){
	   {
	   %>
	   <center><div class="endreport"><div class="text"><br>0 ~ 3개</div><br>  <Strong class="text"><u>"비글급 산책 데이트 유형"</u></Strong> <br><br>
	   <img class="endimg" src="dog.PNG"><br>
	   <p class="text">비글처럼 밖에서 움직이고 산책하는 게 좋아!<br><br></p></div></center>
	   <%
	   }
	   }
   else if(result <= 6){
	   {
	   %>
	   <center><div class="endreport"><div class="text"><br>4 ~ 6개</div><br> <Strong class="text"><u>"토끼급 꽁냥꽁냥 데이트 유형"</u></Strong> <br><br>
	   <img class="endimg" src="rabbit.PNG"><br>
	   <p class="text">뭣이 중헌디! 둘이 서로 꽁냥꽁냥하면 된거지!<br><br></p></div></center>
	   <%
         }
	   }
   else if(result <= 10){
	   {
	   %>
	   <center><div class="endreport"><div class="text"><br>7 ~ 10개</div><br> <Strong class="text"><u>"판다급 집콕 데이트 유형"</u></Strong> <br><br>
	   <img class="endimg" src="panda.PNG"><br>
	   <p class="text">판다급 집콕 데이트 유형입니다.<br><br></p></div></center>
	   <%
	   }
	   } 
	   %>
	   <br><hr>
   <button class="inputbttn" type="button" onclick="location.href='Mainhome.html'"><!-- 누르면 홈페이지로 이동하는 버튼 -->
	홈페이지로
   </button>
</body>
</html>