<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>drawbar.jsp</title>
<style type="text/css">

  body{
     height:1000px;
     background:blue;
  
  }

  div{
     box-sizing:border-box;
     border:5px solid yellow;
     width:100%;
     height:100px;
     position:fixed;
     background:yellow;
     bottom:-100px;
     transition:bottom 1s;  
  }
  span{
    box-sizing:border-box;
    width:100px;
    border:1px solid blue;
    position:absolute;
    top:-30px;
    left:0px;
    text-align: center;
  
  }
</style>
<script type="text/javascript">
  window.onload = () =>{
	  let drawer = document.querySelector('div');
	  let handle = document.querySelector('span');
	  
	  let isOpen = false;
	  
	  handle.onclick = e => {
		  if(!isOpen)
		    drawer.style.bottom ="0px";
		  else
			  drawer.style.bottom ="-100px";  
		  
		  isOpen = !isOpen;
	  }
  }
</script>
</head>
<body>
<h1>Drawer 만들기</h1>
<hr>
<div>
  box1
  <span>손잡이</span>
</div>

<hr>

</body>
</html>