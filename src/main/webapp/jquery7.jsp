<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <script type="text/javascript" src="/js/jquery-3.7.1.js"></script> -->
<!-- <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script> -->
<script type="text/javascript"  src="/webjars/jquery/jquery.js"></script>
<title>jquery7.jsp</title>
<style type="text/css">
.box{
  
  width: 100px;
  height: 100px;
}

.red{
  border: 5px solid yellow;
  background: red;
}
.blue{
  border: 5px solid yellow;
  background: blue;
}
.green{
  border: 5px solid yellow;
  background: green;
}

</style>
<script type="text/javascript">
$(document).ready(function(){
	$('div:nth-of-type(2)').addClass("box").addClass("blue");
	});
	
</script>
</head>
<body>
<div class="box red">box1</div>
<div>box2</div>
<div>box3</div>

</body>
</html>