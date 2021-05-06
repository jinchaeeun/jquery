<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
<title>이벤트</title>
</head>
<body>
	<div>
		<input type="text" id="txt" class="cls_txt" name="txt" placeholder="입력란" />
		<input type="text" id="txt2" class="cls_txt" name="txt2" placeholder="입력란2" />
		<input type="text" id="txt3" class="cls_txt" name="txt3" placeholder="입력란3" /> 
		<input type="button" value= "입력체크" onclick="fn_check();" />
		<input type="button" value= "값 출력" onclick="fn_print();" />
	</div>
	<br/><br/><br/><br/>
	<div>
		<div id="contentsArea">
			콘텐츠 영역입니다.
		</div>
		<input type="button" value="변경" onclick="fn_change();" /> 
		<input type="button" value="추가" onclick="fn_add();" /> 
	</div>
</body>

</html>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
function fn_check(){
	//document.getElementById('txt').value;
	//alert($('#txt').val());	//제이쿼리 사용 시 간단해짐
	//$('#txt').val("testtest!!!");	//값 넣기
	//$('.cls_txt').val("클래스 테스트");
	//$('input').val("태그네임 selector"); //input 태그에 몽땅
	//$('input[name="txt"]').val("txt입니다");
	
	//alert($('#txt').attr("type")); //요소 type에 적혀있는 값을 가져나와라
	$('#txt').attr("type", "button"); //버튼으로 바꿔라
	$('#txt').val('입력체크2'); //버튼으로 바꿔라
	$('#txt').attr('onclick', 'fn_check2();');
	
}

function fn_chec2k(){
	alert("버튼으로 변경되었습니다.");
}

function fn_change(){
	$('#contentsArea').html("<a href='https://www.naver.com'>네이버</a>");
}

function fn_add(){
	$('#contentsArea').append("추가된 내용입니다.");
}

function fn_print(){
	   var cnt = 0;
	   $('.cls_txt').each(function (){
	      if($(this).attr("id") == "txt3"){
	         //$(this).val("바꼈음");
	         alert("값이 바뀌었네요.");
	         $(this).attr("id","txt4");
	      }
	   });
}

//페이지 로드될 때
$(document).ready(function(){
	
})
</script>

