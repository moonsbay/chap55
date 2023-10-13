<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="/js/jquery-3.7.1.js">

</script>
<title>jquery2.jsp</title>
<script type="text/javascript">
$(document).ready(function() {
	console.log("ready...");
	$('div').css('border', '10px solid red');
	
	$('div').css({
		width : 100,
		height : 100,
		backgroundColor : 'blue',
		margin : 10
	});
});
</script>
</head>
<body>
<div>box1</div>
<div>box2</div>
<div>box3</div>
</body>
</html>