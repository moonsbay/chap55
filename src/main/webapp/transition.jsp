<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>transition.jsp</title>
<style type="text/css">
div{
  border:1px solid red;
  width:100px;
  height:100px;
  position:relative;     /*좌상단을 0,0으로인식*/
  
  top:0px;
  left:0px;
  
  transition:all 2s;  
}
input:nth-of-type(1):checked + div{
  background: blue;
  border-radius: 100%;
  left:400px;
  transition-timing-function:linear;	
}
input:nth-of-type(2):checked + div{
  background: blue;
  border-radius: 100%;
  left:400px;
  transition-timing-function:ease;	
}
input:nth-of-type(3):checked + div{
  background: blue;
  border-radius: 100%;
  left:400px;
  transition-timing-function:cubic-bezier(.91,1.78,0,1.42);	
}
input:nth-of-type(4):checked + div{
  background: green;
  border-radius: 100%;
  left:400px;
  transition-timing-function:cubic-bezier(.45,3.38,.22,-0.86);	
}
	
</style>
</head>
<body>
<h1>transition 이해</h1>
<hr>
<input type="checkbox">
<div id="box1">box1</div>
<input type="checkbox">
<div id="box2">box2</div>
<input type="checkbox">
<div id="box3">box3</div>
<input type="checkbox">
<div id="box4">box4</div>
<hr>
</body>
</html>