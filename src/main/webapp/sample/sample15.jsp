<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
<title>계산기</title>
</head>
<body>
	<table>
		<tr>
			<td colspan="4">
				<input type="text" id="calc" />
			</td>
		</tr>
		<tr>
			<td colspan="4">
				<input type="text" id="monitor" />
			</td>
		</tr>
		<tr>
			<td><input type="button" value="7" class="num" /></td>
			<td><input type="button" value="8" class="num" /></td>
			<td><input type="button" value="9" class="num" /></td>
			<td><input type="button" value="+" class="calc" /></td>
		</tr>
		<tr>
			<td><input type="button" value="4" class="num" /></td>
			<td><input type="button" value="5" class="num" /></td>
			<td><input type="button" value="6" class="num" /></td>
			<td><input type="button" value="-" class="calc" /></td>
		</tr>
		<tr>
			<td><input type="button" value="1" class="num" /></td>
			<td><input type="button" value="2" class="num" /></td>
			<td><input type="button" value="3" class="num" /></td>
			<td><input type="button" value="*" class="calc" /></td>
		</tr>
		<tr>
			<td><input type="button" value="0" class="num" /></td>
			<td><input type="button" value="C" class="clear" /></td>
			<td><input type="button" value="=" class="result" /></td>
			<td><input type="button" value="/" class="calc" /></td>
		</tr>
	</table>
</body>
</html>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
/*
 * 예제) 계산기를 만들어보세요.
 */
$(document).ready(function(){
	//document.write(eval("1+2"));
	
});
 
 var calc = "";
 var flag = "";
 $('.num').bind('click', function(){
	 flag = "num";
	var monitor = $('#monitor').val();
	$('#monitor').val(monitor + $(this).val());
 });
 
 $('.calc').bind('click', function(){
	 if(flag == "calc"){
		 alert("연속으로 연산자가 입력되었습니다.");
	 }else if("" == calc + $('#monitor').val()){
		 alert("처음에 연산자가 입력되었습니다.");
	  }else{
		 
		 flag = "calc";
		 calc = calc + $('#monitor').val() + $(this).val();
		 
		 $('#calc').val(calc);
		 $('#monitor').val("");
	 }
	
 });
 
 $('.clear').bind('click', function(){
	 calc = "";
	 $('#calc').val("");
	 $('#monitor').val("");
 });
 
 $('.result').bind('click', function(){
	 if(flag == "calc"){
		 alert("마지막에 연산자가 입력되었습니다.");
	 }else{
		calc = calc + $('#monitor').val();
		$('#calc').val(calc);
		$('#monitor').val(eval(calc));
		calc = "";
	 }
 });

</script>