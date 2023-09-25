<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>



<!-- /* -->
<!--  *작성자:정문섭 -->
<!--  *작성일:2023/09/18 -->
<!--  *능력단위 : 웹표준  -->
<!-- */ -->




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax.jsp</title>
<style type="text/css">
h1::after{
	content:url('/media/favicon_small.png');
}
table{
    background:url('/media/favicon.png');
}
</style>
<script type="text/javascript">
 
window.onload = function(){
    function sync(){
	var forcount = 0;
   	for(var i=0; i<800; i++){
///	    do{
		let xhr = new XMLHttpRequest();
		xhr.open('GET', '/alpha', false);  //false는 동기기동
		xhr.send();
		let alpha = JSON.parse(xhr.responseText); //JSON문자열을 javascript객체 알파로 변환
		let td = surface.rows[alpha.line-1].cells[alpha.column-1];
		
		td.style.color = alpha.fg;
		td.style.background = alpha.bg;
		td.innerText = alpha.ch;
		forcount++;
		opacity: 0.5;		

//	    }while(
//	    for(var i=0; i<20; i++){
//			for(var j=0; j<40; j++)
//				surface.rows[i].cells[j].innerText==" ";
//	    })
//		{
//	    	break;
	    }
					
		// JSON(Javascript Object Notation)
	  
   	}   	  
	
    
/*	btn2.onclick = function(){
		let xhr = new XMLHttpRequest();
		xhr.open('GET', '/alpha', false);  //false는 동기기동
		xhr.send();
		let alpha = JSON.parse(xhr.responseText);
		let td = surface.rows[alpha.line-1].cells[alpha.column-1];
		td.style.color = alpha.fg;
		td.style.background = alpha.bg;
		td.innerText = alpha.ch;
		// JSON(Javascript Object Notation)
	}*/
	
	function async(){
//		    btn.disabled = true;
		  for(var i=0; i<800; i++){  
		    let xhr = new XMLHttpRequest();
//		    xhr.onload = function(e){
			let alpha = JSON.parse(xhr.responseText); //JSON문자열을 javascript객체 알파로 변환
			let td = surface.rows[alpha.line-1].cells[alpha.column-1];
			td.style.color = alpha.fg;
			td.style.background = alpha.bg;
			td.innerText = alpha.ch;
//			btn.disabled = false;
//		    }
		    let aa = cforcount.innerText
		    cforcount.innerText = aa++;

		xhr.open('GET', '/alpha');
		xhr.send();
		   
	   }	
     }
    
	
//	btn.onclick = async;
    btn.onclick = sync;
	
//	setInterval(function(){
//		let cnt = no.innerText;
//		no.innerText = ++cnt;
//	}, 500);
}

</script>

</head>
<body>
<h1>Alpha Generator </h1>
<hr>
<table border=1px id="count">
<tr>
 <td>forcount</td>
 <td>count</td>
 <td>second</td>
</tr>
<tr>
 <td><span id="cforcount">0</span></td>
 <td><span id="ccount">0</span></td>
 <td><span id="csecond">0</span></td>
</tr>
</table>
<button id="btn">start</button>
<!-- <span id="no">0</span> -->
<button id="btn2">clear</button>
<table id="surface" >
 <tbody>
  <c:forEach var="row" items="${surface}">
    <tr>
    <c:forEach var="a" items="${row}">
     <td style="color:white; ">${a.ch}</td>
    </c:forEach>
    </tr>
  </c:forEach>
 </tbody>

</table>

</body>
</html>