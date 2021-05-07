<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<title>animation</title>
</head>
<body>
	<div id="contentsArea"></div>
	<div>
		<input type="button" id="btn1" value="1번 페이지" /> 
		<input type="button" id="btn2" value="2번 페이지" />
	</div>
</body>

</html>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>

$('#btn1').bind('click', function(event) {
	fn_getPage('./sample12_1.jsp');
});
$('#btn2').bind('click', function(event) {
	fn_getPage('./sample12_2.jsp');
});

function fn_getPage(url) {
	$.ajax({
		url : url,
		type : 'post', //get, post
		data : {
			test : '1',
			test2 : '2'
		}, //get-> sample11_1.jsp&test=1
		dataType : 'html', //html(페이지에 보여지는 것 그대로 가져옴), json, xml 요즘은 json 많이 사용(배열을 스트링으로 쭉 뿌렸다고 생각하면 된다)
		beforeSend : function() {
			//url을 호출하기 전에 어떤 명령을 실행할 것인지
			//로딩............show()
		},
		success : function(data) { //html, json 위 타입에서 설정한 값이 data인자로 들어온다
			alert(data);
			$('#contentsArea').html(data);
		},
		error : function() {
			//alert('오류가 발생했습니다.');
		},
		complete : function() {
			//............hide()
		}
	});
};
</script>