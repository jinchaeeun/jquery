<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<html>
<head>
<title>animation</title>
</head>
<body>
	<div id= "contentsArea" style="width:1000px; height:500px; border: 1px solid;">
			<div id= "div1" style="width:100px; height:100px; background-color: red; position:absolute; left: 50px; top:50px;">
			</div>
	</div>
	<input type="button" id="btn1" value="시작" /><br/>
	<textarea id="xy" style="width:1000px; height:300px;"></textarea>
</body>

</html>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
/*
 * contentsArea에 마우스를 찍으면 textArea에 좌표가 입력되고 (여러개찍을수있도록), 시작 버튼을 누르면 좌표를 누른 위치로 순차적으로 이동 후 역순으로 제자리로 돌아오게 구현하세요.
 */
 var array = [];
 $('#contentsArea').bind('click', function(event){
	 console.log(event.pageX, event.pageY);
	 
	 array.push(event.pageX);
	 array.push(event.pageY);
	 
	 var temp='';
	 for (var i = 0; i < array.length; i+=2) {
		    var x = array[i];
		    var y = array[i+1];
		    
		    var pos = "x = "+ x +", y = " + y+'\n';
		    
		    temp += pos;
		    $('#xy').val(temp);
	} 
 });
 
 $('#btn1').bind('click', function(event){
	 
	 for (var i = 0; i < array.length; i+=2) {
	    var x = array[i];
	    var y = array[i+1];
	    
	    $('#div1').animate({left: x + 'px', top: y + 'px'}, 1000, 'linear', function(){
			 
		 });
	}
	
	 $('#div1').animate({left: 50 + 'px', top: 50 + 'px'}, 500, 'linear', function(){
		 
	 });
	 
 });
 
</script>