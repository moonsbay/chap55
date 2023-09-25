<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>radius.jsp</title>
<style type="text/css">
	.box{
	  margin:50px;
	  border:50px solid red;
	  padding:50px;
	  
	  width:200px;
	  height:200px;
	}
	#box1{
	  box-sizing: content-box;
	  border-radius:50px 100px 10px 30px;
	 
	}
	#box2{
	  box-sizing: border-box;
	  border-radius: 30px 5px;
	}
</style>
</head>
<body>
<h1>Box모델 이해</h1>
<hr>
<div id="box1" class="box">content-box</div>
<hr>
<div id="box2" class="box">border-box</div>
</body>
</html>