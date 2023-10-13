<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>submenu.jsp</title>
<link rel="stylesheet" href="/css/cube.css">
<style type="text/css">
	.menu{
	
	}
	
	.menu-item{
	
	}
	
	.menu-title{
	
	}
	
	.sub-menu{
	
	}
	
	.sub-menu-item{
	
	}
</style>
</head>
<body>
<h1>Sub Menu 만들기</h1>
<hr>
<nav>
  <ul class="menu">
    <li class="menu-item">
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