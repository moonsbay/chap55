<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>overflow.jsp</title>
<style type="text/css">
article{
 border:1px solid blue;
 height:150px;
 overflow:auto;
}
div{
 border:1px solid red;
 font-size: 2em;
 line-height: 100px;
}
body{
 border:10px solid green;
}
</style>
</head>
<body>
<article>
<div>box1</div>
<div>box2</div>
<div>box3</div>
<div>box4</div>
</article>
<h1>Overflow 이해</h1>
</body>
</html>