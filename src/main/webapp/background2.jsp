<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>background2.jsp</title>
<style type="text/css">
  body{
    background-image: url('/media/alpha.png'), url('/img/BackgroundFront.png'), url('/img/BackgroundBack.png');
    background-repeat: no-repeat;
    background-size: 200px, 100%, 100%;  /*이미지에 각각의 크기를 줬다*/
    background-attachment: fixed, local, local; /*이미지에 각각의 속성을 줬다*/
    background-position: top left, bottom, 50%;
/*  background-attachment: local; */
  }
   div{
     border:1px solid red;
     height:2000px;
     background:linear-gradient(red, blue);
     opacity: 0.5;
   }    
</style>
</head>
<body>
<h1>백그라운드이미지 contain/cover 이해</h1>
<hr>
<div>box1</div>
<hr>

</body>
</html>