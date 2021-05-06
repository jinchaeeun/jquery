<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
<title>제어문(if, for, while, switch case, do while)</title>
</head>
<body>

</body>

</html>

<script>
function fn_sample1(money){
	var money = prompt("지갑에 있는 돈을 알려주세요.");
	
	if(money>5000){
		alert("엄청 부자시네요.");
	}else if(money>3000){
		alert("조금 부자시네요.");
	}
	//걸리는 조건에 없으면 그냥 끝남
}

//fn_sample1();

function fn_sample2(){
	
	for(var i = 1; i <= 10; i++){
		document.write(i + "<br/>");
	}	
}

//fn_sample2();

function fn_sample3(){

	for(var i = 1; i <= 10; i++){
		if(i==4){
			continue;
		}
		if(i == 8){
			break;
		}
		document.write(i + "<br/>");
	}	
}

//fn_sample3();


/*
 * 예제 구구단 출력
 */
function fn_exam(){

	for(var i = 2; i <= 9; i++){
		for(var j = 1; j <= 9; j++){
			document.write(i + " X " + j + " = " + i*j +"<br/>");
		}
		document.write("<br/>");
	}	
}

//fn_exam();

// 입력받은 단수의 구구단 출력
function fn_exam2(){
	var i = prompt("출력할 구구단의 단수를 입력해주세요.");
	
	for(var j = 1; j <= 9; j++){
		document.write(i + " X " + j + " = " + i*j +"<br/>");
	}
	document.write("<br/>");
}

//fn_exam2();

function fn_sample7(grade){
	switch(grade){
	case "1":
		alert("1학년이시네요.");
		break;

	case "2":
		alert("2학년이시네요.");
		break;

	case "3":
		alert("3학년이시네요.");
		break;

	default:
		alert("모르겠어요.");
		break;
	}
	document.write("<br/>");
}

//fn_sample7("2");

// 네이버, 다음, 구글 중 즐겨쓰는 포털사이트는? prompt에서 값을 입력 받아 해당되는 사이트로 이동시켜주세요.
function fn_exam2(){
	var site_name = prompt("네이버, 다음, 구글 중 즐겨쓰는 포털사이트는? ");
	
	switch(site_name){
	case "네이버":
		location.href= 'https://www.naver.com';
		break;

	case "다음":
		location.href= 'https://www.daum.net';
		break;

	case "구글":
		location.href= 'https://www.google.com';
		break;

	default:
		alert("잘못된 입력입니다.");
		break;
	}
	document.write("<br/>");
}

fn_exam2();
</script>