<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
<title>이벤트</title>
</head>
<body>
	<div style="width:100px; height:100px; background-color:black;" id="contentsArea">
	</div>
	
	<input type="button" class="btn" value= "yellow" w="200px" h="300px" />
	<input type="button" class="btn" value= "red" w="150px" h="200px" />
	<input type="button" class="btn" value= "blue" w="500px" h="1000px" />
	
	<br/><br/><br/><br/>
	<div>
		<select id="select" name="select">
			<option value="">===사이트를 선택하세요.====</option>
			<option value="https://www.naver.com">네이버</option>
			<option value="https://www.daum.net">다음</option>
			<option value="https://www.google.com">구글</option>
		</select>
	</div>
	
	<div style="width:100px; height:100px; background-color:black;" id="contentsArea2"> </div>
	
	
	<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
</body>

</html>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<script>
//이벤트들
//click
//change
//hover
//mousedown
//mouseup
//mouseenter
//mouseleave
//mousemove
//scroll
//keypress
//keydown
//keyup
 $('.btn').bind('click', function(){
	 $('#contentsArea').css('background-color', $(this).val());
	 $('#contentsArea').css('width', $(this).attr('w'));
	 $('#contentsArea').css('height', $(this).attr('h'));
	 
 });
 
 //select에 onchange바로 넣어도 되지만 다음처럼도 한다.
 $('#select').bind('change', function(){
	 //alert($(this).val());
	 location.href=$(this).val(); //해당 페이지로 이동
 })
 
 $(document).bind('scroll', function(){
	 $('#contentsArea2').css('background-color', 'yellow');
	 $('#contentsArea2').css('width', '50px');
	 $('#contentsArea2').css('height', '60px');
	 
 });
 
  $('#contentsArea2').bind('mouseover', function(){
	 $('#contentsArea2').css('background-color', 'red');
	 
 });
 $('#contentsArea2').bind('mouseleave', function(){
	 $('#contentsArea2').css('background-color', 'blue');
	 $('#contentsArea2').attr('class','aa'); //클래스 이름 넣기
	 
 });
 
 
</script>