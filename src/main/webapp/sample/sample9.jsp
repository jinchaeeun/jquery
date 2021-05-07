<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<html>
<head>
<title>animation</title>
</head>
<body>
	<div>
		<div id= "div1" style="width:100px; height:100px; background-color:yellow;"> </div>
		<input type="button" id="btn1_1" value="hide">
		<input type="button" id="btn1_2" value="show">
		<input type="button" id="btn1_3" value="toggle"> 
	</div>
	
	<div>
		<div id= "div2" style="width:100px; height:100px; background-color:red;"> </div>
		<input type="button" id="btn2_1" value="fadeOut">
		<input type="button" id="btn2_2" value="fadeIn">
		<input type="button" id="btn2_3" value="fadeToggle"> 
	</div>
	
	<div>
		<div id= "div3" style="width:100px; height:100px; background-color:blue;"> </div>
		<input type="button" id="btn3_1" value="slideUp">
		<input type="button" id="btn3_2" value="slideDown">
		<input type="button" id="btn3_3" value="slideToggle"> 
	</div>
	
	<!-- fade의 opacity 속성 0~1, 위에 쓴 요소들은 누르면 영역을 0,0 으로 만드는데 fadeTo는 투명도만 조절하기 때문에 0으로 설정하더라도 영역이 그대로 잡혀있음.-->
	<div>
		<div id= "div4" style="width:100px; height:100px; background-color:green;"> </div>
		<input type="button" id="btn4" value="fadeTo">		 
	</div>
	
	<div>
		<div id= "div5" style="width:100px; height:100px; background-color:orange;"> </div>
		<input type="button" id="btn5" value="시작">		 
	</div>	
	
	<div>
		<div id= "div6" style="width:100px; height:100px; background-color:purple;"> </div>
		<input type="button" id="btn6_1" value="늘어남">
		<input type="button" id="btn6_2" value="줄어듦">		 
	</div>
	
	<div>
		<div id= "div7" style="width:100px; height:100px; background-color:black;"> </div>
		<input type="button" id="btn7_1" value="좌">
		<input type="button" id="btn7_2" value="우">
		<input type="button" id="btn7_3" value="상">
		<input type="button" id="btn7_4" value="하">		 
	</div>
</body>

</html>

<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

<script>
	$('#btn1_1').bind('click', function(){
		$('#div1').hide(1000);
	});
	$('#btn1_2').bind('click', function(){
		$('#div1').show(2000);
	});
	$('#btn1_3').bind('click', function(){
		$('#div1').toggle(500);
	});
	
	$('#btn2_1').bind('click', function(){
		$('#div2').fadeOut(1000);
	});
	$('#btn2_2').bind('click', function(){
		$('#div2').fadeIn(2000);
	});
	$('#btn2_3').bind('click', function(){
		$('#div2').fadeToggle(500);
	});
	
	$('#btn3_1').bind('click', function(){
		$('#div3').slideUp(1000);
	});
	$('#btn3_2').bind('click', function(){
		$('#div3').slideDown(2000);
	});
	$('#btn3_3').bind('click', function(){
		$('#div3').slideToggle(500);
	});
	
	$('#btn4').bind('click', function(){
		$('#div4').fadeTo(1000, 0.5, function(){
			alert("완료되었습니다.");
		});
	});
	
	$('#btn5').bind('click', function(){
		fn_hide();
	})
	
	
	function fn_hide(){
		$('#div5').fadeTo(500, 0, function(){
			fn_show();
		});
	}
	
	function fn_show(){
		$('#div5').fadeTo(500, 1, function(){
			fn_hide();
		});
	}
	
	$('#btn6_1').bind('click', function(){
		$('#div6').animate({width:'1000px'}, 1000, 'linear', function(){
			
		});
	});
	$('#btn6_2').bind('click', function(){
		$('#div6').animate({width:'100px'}, 1000, 'linear', function(){
			
		});
	});
	
	
	var marginL = 0;
	$('#btn7_1').bind('click', function(){
		marginL = marginL -100;
		$('#div7').animate({marginLeft: marginL + 'px'}, 100, 'linear', function(){
			
		});
	});
	
	$('#btn7_2').bind('click', function(){
		marginL = marginL + 100;
		$('#div7').animate({marginLeft: marginL + 'px'}, 100, 'linear', function(){
			
		});
	});
	
	var marginT = 0;
	$('#btn7_3').bind('click', function(){
		marginT = marginT -100;
		$('#div7').animate({marginTop: marginT + 'px'}, 100, 'linear', function(){
			
		});
	});
	
	$('#btn7_4').bind('click', function(){
		marginT = marginT + 100;
		$('#div7').animate({marginTop: marginT + 'px'}, 100, 'linear', function(){
			
		});
	});
	
	
	
</script>