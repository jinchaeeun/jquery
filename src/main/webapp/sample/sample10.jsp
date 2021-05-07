<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<html>
<head>
<title>animation</title>
</head>
<body>
	<div>
		<div>
			<input type="text" id="pageX" value="" placeholder="x 좌표" />
			<input type="text" id="pageY" value="" placeholder="y 좌표" />
		</div>
		
		<div id= "contentsArea" style="width:1000px; height:800px; border: 1px solid;">
			<div id= "div1" style="width:100px; height:100px; background-color: yellow; position:absolute; left: 50px; top:50px;"></div>
		</div>
		
	</div>
</body>

</html>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<script>

$('#contentsArea').bind('click', function(event){
	console.log(event);
	
	$('#pageX').val(event.pageX);
	$('#pageY').val(event.pageY);
})



/*
 * 예제) 마우스 커서를 찍으면 그 방향으로 네모박스가 이동되도록 구현해보세요.
 */
$('#contentsArea').bind('click', function(event){
	$('#div1').animate({left:event.pageX + 'px', top:event.pageY + 'px'}, 1000, 'linear', function(){
		
	});
})
 
</script>