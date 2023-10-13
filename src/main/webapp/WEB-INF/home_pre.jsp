<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home.jsp</title>
<style type="text/css">
body{
	margin-top:150px;
}

ul{
  border:1px solid red;
  list-style:none;
  padding:0px;
  font-size: 20pt;
  height:100px;
  
  display: flex;
  position:fixed;
  top:0px;
  left:0px;
  
}


li{
  border: 1px solid red;
  width:100px;
  padding:1em;
/*   height:15px; */
  text-align: center;
  
  flex-shrink:0;
/*   display:inline;  인라인의 의미가 없다.. ul의 flex속성에 의해서*/
  
}

li:hover{
  text-shadow:10px 10px 5px;
  text-decoration: overline;
}

a{
  color: purple;
  text-decoration: none;
}

iframe{
  border: 1px solid red;
}

.perspective{
/*  border:10px solid green; */
 display:inline-block; 
 margin:0px 0px 0px 10px;
 
 perspective:500px;          /* 3d를 위한 것 관찰자시각 */
}

.cube{
/*   border:10px solid blue; */
  display:inline-block;
/*   transform:rotateX(45deg);  */
  
  animation: rotate 20s infinite linear;
  transform-style:preserve-3d; /* 3d를 위한 것 */
}
.base{
/*   border:10px solid red; */
  width:40px;
  height:40px;
  font-size:0.5em;
  text-align: center;
  line-height: 40px;
}  
 
.front, .back, .left, .right, .top, .bottom{ 
  position: absolute;
  top:0px;
  left:0px;
  opacity: 1;
  
  box-shadow: 0px 0px 30px 10px hotpink;
}

.front{
  transform: translateZ(20px);
  background:red;
}

.back{
  transform: rotateY(180deg) translateZ(20px);
  background:blue;
}

.left{
  transform: rotateY(-90deg) translateZ(20px);
  background:green;
}

.right{
  transform: rotateY(90deg) translateZ(20px);
  background:purple;
}

.top{
  transform: rotateX(90deg) translateZ(20px);
  background:yellow;
}

.bottom{
  transform: rotateX(-90deg) translateZ(20px);
  background:orange;
}

@keyframes rotate{
  from{
    transform:rotateX(0deg) rotateY(360deg) rotateZ(0deg);
  }
  to{
    transform:rotateX(360deg) rotateY(0deg) rotateZ(360deg);
  }
}	
</style>

<script type="text/javascript">
function resize(){
	let iframe = document.querySelector('iframe');
	iframe.style.height = getComputedStyle(iframe.contentDocument.documentElement).height;
}
window.onload = function(){
	setInterval(resize, 100);
}
</script>

</head>
<body>

<hr>
<ul>
<!--   <li><img width="50" style="border: 1px solid blue;" src="/media/alpha.png"></li> -->
  <li>
  <section class="perspective">
  <article class="cube">
    <div class="base">Base</div>
    <div class="base front">Front</div>
    <div class="base back">Back</div>
    <div class="base left">Left</div>
    <div class="base right">Right</div>
    <div class="base top">Top</div>
    <div class="base bottom">Bottom</div>
  </article>
  </section>
  </li>
  <li><a target="content" href="/alpha/fill">fill</a></li>
  <li><a target="content" href="/alpha/cross">cross</a></li>
  <li><a target="content" href="/alpha/race">race</a></li>
  <li><a target="content" href="/alpha/zigzag">zigzag</a></li>
  <li><a target="content" href="/dept/list">dept</a></li>
  <li><a target="content" href="/emp/list">emp</a></li>
</ul>
<hr>
<iframe src="/alpha/fill" 
        name="content" 
        width="100%"
        scrolling="no"
        frameborder="0"
        sendbox="allow-same-origin"  
        onload = "resize()"
        >
iframe태그를 지원하지 않는 브라우저는 이 글이 보인다
</iframe>
</body>
</html>