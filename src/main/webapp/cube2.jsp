<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cube2.jsp</title>
<style type="text/css">

.perspective{
 border:10px solid green;
 display:inline-block; 
 margin:100px 0px 0px 100px;
 
 perspective:500px;          /* 3d를 위한 것 관찰자시각 */
}

.cube{
  border:10px solid blue;
  display:inline-block;
/*   transform:rotateX(45deg);  */
  animation: rotate 5s infinite linear;
  transform-style:preserve-3d; /* 3d를 위한 것 */
}
.base{
  border:10px solid red;
  width:200px;
  height:200px;
  font-size:2em;
  text-align: center;
  line-height: 200px;
}

@keyframes rotate{
  from{
    transform:rotateX(0deg);
  }
  to{
    transform:rotateX(360deg);
  }
}

</style>
</head>
<body>
<h1>CSS 3D 응용큐브만들기</h1>
<hr>
<section class="perspective">
  <article class="cube">
    <div class="base">Base</div>
  </article>
</section>
</body>
</html>