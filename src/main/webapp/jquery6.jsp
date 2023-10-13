<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <script type="text/javascript" src="/js/jquery-3.7.1.js"></script> -->
<!-- <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script> -->
<script type="text/javascript"  src="/webjars/jquery/jquery.js"></script>
<title>jquery6.jsp</title>
<script type="text/javascript">
$(document).ready(function(){
	for(let i=0; i<256; i++)
		$('body').append('<div></div>')
	$('div').css({
		height:2,
		backgroundColor: function(i){
			return `rgb(\${i}, \${i}, \${i})`
		}
	});
	$('h1:nth-of-type(1)').html("<i>그라데이션</i>");
	$('h1:nth-of-type(2)').text("<i>그라데이션</i>");
	
	let text1 =$('h1:nth-of-type(1)').text();
	let text2 =$('h1:nth-of-type(2)').text();
	console.log(text1);
	console.log(text2);
	
	console.log(document.querySelector('h1:nth-of-type(1)').innerText);
	console.log(document.querySelector('h1:nth-of-type(2)').innerText);
});
</script>
</head>
<body>
<h1></h1>
<h1></h1>
</body>
</html>