<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<title>ajax</title>
</head>
<body>
	
	<div>
		<input type="button" id="btn1" class="btn" value="tab1" num="1"/>
		<input type="button" id="btn2" class="btn" value="tab2" num="2"/>
		<input type="button" id="btn3" class="btn" value="tab3" num="3"/>

	</div>
	<div id="contentsArea1" class="contentsArea" ></div>
	<div id="contentsArea2" class="contentsArea" ></div>
	<div id="contentsArea3" class="contentsArea" ></div>
</body>

</html>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
/*
 * 예제) 페이지 로딩 시 해당 탭의 페이지를 contentsArea 안에 넣고, 1번째 페이지만 보이도록 만들어보세요.
 	탭을 클릭하면 해당 탭의 내용만 보여지게 하세요.
 	탭별로 sample13_1.jsp, sample13_3.jsp, sample13_3.jsp 파일을 만들어서 사용
 */

 
 $(document).ready(function(){
	fn_getPage("./sample13_1.jsp", "1");
	fn_getPage("./sample13_2.jsp", "2"); 
	fn_getPage("./sample13_3.jsp", "3"); 
	fn_tabView(1);
 });
 
function fn_getPage(url, num) {
	$.ajax({
		url : url,
		type : 'post', //get, post
		dataType : 'html', //html(페이지에 보여지는 것 그대로 가져옴), json, xml 요즘은 json 많이 사용(배열을 스트링으로 쭉 뿌렸다고 생각하면 된다)
		
		success : function(data) {
			$('#contentsArea' + num).html(data);
		},
		error : function() {
			alert('오류가 발생했습니다.');
		}
	});
};

function fn_tabView(num){
	/*
	$('#contentsArea1').hide();
	$('#contentsArea2').hide();
	$('#contentsArea3').hide();
	*/
	$('.contentsArea').hide();
	$('#contentsArea' + num).show();
}

$('.btn').bind('click', function(){
	fn_tabView($(this).attr('num'));
});

/*
$('#btn1').bind('click', function() {
	fn_tabView(1);
});
$('#btn2').bind('click', function() {
	fn_tabView(2);
});
$('#btn3').bind('click', function() {
	fn_tabView(3);
});
*/

</script>