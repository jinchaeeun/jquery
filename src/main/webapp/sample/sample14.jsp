<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<title>ajax</title>
</head>
<body>
	
	<div id="interval"> </div>
	<div id="clock"> </div>
	
</body>

</html>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>

$(document).ready(function(){
	//fn_interval();
	fn_clock();
});
var cnt=0;
function fn_interval(){ //interver이란 특정 시간마다 이 함수를 실행해라
	var intver = setInterval(function(){
		cnt++;
		if(cnt==10){
			clearInterval(intver); //실행 멈춤	
		}
		$('#interval').append("안녕하세요!!");
	}, 1000);
}

function fn_clock(){
	var dt = new Date();
	var hour = dt.getHours();
	var minute = dt.getMinutes();
	var second=dt.getSeconds();
	
	if(hour<10) hour = "0" + hour;
	if(minute<10) minute = "0" + minute;
	if(second<10) second = "0" + second;
	
	$('#clock').html(hour + ":" + minute + ":" + second);
}
</script>