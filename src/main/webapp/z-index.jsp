<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>z-index.jsp</title>
<style type="text/css">
  div{
     border:1px solid red;
     width:100px;
     height:100px;
     position:relative;
   }
  
  div:nth-of-type(1) {
     background:red;
     z-index:100;
	
}
  div:nth-of-type(2) {
     background:blue;
     top:-50px;
     z-index:10;
}
       
</style>
</head>
<body>
<h1>body태그이해</h1>
<hr>
<div>box1</div>
<div>box2</div>
<hr>

</body>
</html>