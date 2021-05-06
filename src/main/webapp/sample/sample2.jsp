<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
<title>경고문, 페이지 이동</title>
</head>

<body>

</body>

</html>

<script>
function fn_message(msg){
alert(msg);
}
//fn_message("안녕하세요.");

function fn_message2(msg1, msg2){
var result = confirm("처음 오신건가요?");


if(result){
	alert(msg1);
}else{
	alert(msg2);
}


}
//fn_message2("처음 뵙겠습니다.", "간만이군요.");

function fn_message3(){
	var msg = prompt("이름을 입력해주세요.");
	
	alert("당신의 이름은 " + msg + "입니다." );
}
//fn_message3();

function fn_link(url){
location.href= url;
}

//fn_link('[https://www.naver.com](https://www.naver.com/)');

/* 예제 prompt 에서 이동하실 URL을 입력하세요. 메시지와 함께 url을 입력받아 예를 클릭 시 URL로 이동하는 스크립트를 작성해보세요.*/

function fn_exam1(){
	var msg = prompt("이동하실 URL을 입력하세요.");
	
	if(msg == null || msg == ''){
		alert('url을 입력해주세요!');
		document.write("새로고침 후 URL을 입력하여 주십시오.");
	}else{
		var result = confirm(msg + "로 이동하시겠습니까?");
		if(result){
			location.href= msg;	
		}else{
			alert('이동하지 않습니다.');
			fn_exam1();
		}
		
	}
	
}

fn_exam1();

</script>