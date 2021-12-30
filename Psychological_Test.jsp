<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>데이트 가쉴? | 나의 데이트 유형은?!</title>
<link rel="icon" href="Bannericon.ico">
</head>

<style>
	@import "Psychological_TestCSS.css";
</style>

<body>

<h2 class="title">나의 데이트 유형은?!<img class="heart" src="mainheart.png" width="40" height="40"></h2><br>

	<center><div class="text"><form action="Psychological_Test_End.jsp" method="post">
		<div class="report"><br>
		01. <u>데이트 할 생각에 기대가 되면서도 은근히 나가기 귀찮다.</u> <br>
			<input type="radio" name="question01" value="1">예
			<input type="radio" name="question01" value="0">아니요<br><br><br>
		
        02. <u>여가 일과 중 집에 있는 시간이 가장 길다.</u> <br>
			<input type="radio" name="question02" value="1">예
			<input type="radio" name="question02" value="0">아니요<br><br><br>
        
        03. <u>멋지고 화려한 곳보다는 편한 곳이 좋다.</u> <br>
			<input type="radio" name="question03" value="1">예
			<input type="radio" name="question03" value="0">아니요<br><br><br>
        
        04. <u>사람이 많은 핫 플레이스보다는 한적한 나만의 장소가 더 좋다.</u> <br>
			<input type="radio" name="question04" value="1">예
			<input type="radio" name="question04" value="0">아니요<br><br><br>
        
        05. <u>색다른 곳보다는 익숙한 곳이 더 좋다.</u> <br>
			<input type="radio" name="question05" value="1">예
			<input type="radio" name="question05" value="0">아니요<br><br><br>
        
        06. <u>놀러 나가는 것보다는 뭔가 만드는 활동이 더 좋다.</u> <br>
			<input type="radio" name="question06" value="1">예
			<input type="radio" name="question06" value="0">아니요<br><br><br>
        
        07. <u>데이트하러 어디로 갈지는 보통 상대방이 정한다.</u> <br>
			<input type="radio" name="question07" value="1">예
			<input type="radio" name="question07" value="0">아니요<br><br><br>
     
        08. <u>평소 친구들과의 약속이 많지 않다.</u> <br>
			<input type="radio" name="question08" value="1">예
			<input type="radio" name="question08" value="0">아니요<br><br><br>

        09. <u>먼 곳보다는 가까운 곳이 더 좋다.</u> <br>
			<input type="radio" name="question09" value="1">예
			<input type="radio" name="question09" value="0">아니요<br><br><br>

        10. <u>데이트 도중 불현듯 집에 가고 싶다는 생각이 든 적이 있다.</u> <br>
			<input type="radio" name="question10" value="1">예
			<input type="radio" name="question10" value="0">아니요<br><br>
           </div></center><br>
        <hr>
        <input class=inputbttn type="submit" value="검사 종료">        
	</form></div>
</body>
</html>