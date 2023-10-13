<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>submenu4.jsp</title>
<link rel="stylesheet" href="/css/cube.css">
<style type="text/css">
/*
nav{
  border:1px solid black;
}

ul{
   border:1px solid red;   */
/*    margin:0px; */
/*}

ol{
   border:1px solid blue;
}

li{
   border:1px solid green;
}

li>div, li>a{
   border:5px solid purple;
} */

	.menu{
	  display:flex;
	  list-style: none;
	  
	  align-items:flex-start;
	  position:fixed;
	  width:90%;
	  top:10px;
	  left:10px;
	}
	
	.menu-item{
/* 	  float:left; 예전 메뉴 가로 배치 방법 */
/*      min-width:150px;   하위메뉴로 메뉴의 폭이 유동적인 것을 막아줌*/
       width:150px;
       flex-shrink: 0;   /*하위메뉴로 메뉴의 폭이 유동적인 것을 막아줌 위와 동일 */
       background:orange;
       
	}
	
	.menu-item:hover > .sub-menu{
	  display:block;
	}
	
	.menu-item:hover > .menu-title{
	  text-shadow:10px 10px 5px red;
	}
	
	.menu-item:last-child{
	  margin-left:auto;
	  margin-right:10px;
	}
	
	.menu-title{
	   padding:10px;
	   font-size:15px;
	}
	
	.sub-menu{
	   display:none;
	   list-style: none;
	}
	
	.sub-menu-item{
	   
	}
	
	.sub-menu-item > a{
	    display:block;
	    padding:10px;
	    font-size:12px;
	    text-decoration: none;
	    color:black;
	    
	}
	
	.sub-menu-item:hover > a{
	    background:red;
	}
	
	iframe{
	   width:1000px;
	   height:1000px;
	}
</style>
</head>
<body>
<h1>Sub Menu 만들기</h1>
<hr>
<nav>
  <ul class="menu">
    <li style="padding: 0px 20px;">
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
    <li class="menu-item">
      <div class="menu-title">Alpha</div>
      <ol class="sub-menu">
        <li class="sub-menu-item"><a target="content" href="/alpha/fill">fill</a></li>
        <li class="sub-menu-item"><a target="content" href="/alpha/cross">cross</a></li>
        <li class="sub-menu-item"><a target="content" href="/alpha/race">race</a></li>
        <li class="sub-menu-item"><a target="content" href="/alpha/zigzag">zigzag</a></li>
        <li class="sub-menu-item"><a target="content" href="/alpha/earthworm">earthworm</a></li>
      </ol>
    </li>
    <li class="menu-item">
      <div class="menu-title">Animation</div>
      <ol class="sub-menu">
        <li class="sub-menu-item"><a target="content" href="/ani/fill">fill</a></li>
        <li class="sub-menu-item"><a target="content" href="/ani/cross">cross</a></li>
        <li class="sub-menu-item"><a target="content" href="/ani/race">race</a></li>
        <li class="sub-menu-item"><a target="content" href="/ani/cube">cube</a></li>
     
      </ol>
    </li>
    <li class="menu-item">
      <div class="menu-title">React</div>
      <ol class="sub-menu">
        <li class="sub-menu-item"><a target="content" href="/react/fill">fill</a></li>
        <li class="sub-menu-item"><a target="content" href="/react/cross">cross</a></li>
        <li class="sub-menu-item"><a target="content" href="/react/race">race</a></li>
    
      </ol>
    </li>
    <li class="menu-item">
      <div class="menu-title">Employee</div>
      <ol class="sub-menu">
        <li class="sub-menu-item"><a target="content" href="/dept/list">dept</a></li>
        <li class="sub-menu-item"><a target="content" href="/emp/list">emp</a></li>
        <li class="sub-menu-item"><a target="content" href="/salgrade/list">salgrade</a></li>
    
      </ol>
    </li>
    <li class="menu-item">
      <div class="menu-title">City</div>
      <ol class="sub-menu">
        <li class="sub-menu-item"><a target="content" href="/city/list">city</a></li>
        <li class="sub-menu-item"><a target="content" href="/country/list">country</a></li>
        <li class="sub-menu-item"><a target="content" href="/language/list">language</a></li>
        <li class="sub-menu-item"><a target="content" href="/search">search</a></li>
      </ol>
    </li>
    <li class="menu-item">
      <div class="menu-title">Login</div>
    </li>
  </ul>
</nav>
<hr>
<iframe name="content" sendbox="allow-same-origin">

</iframe>
</body>
</html>