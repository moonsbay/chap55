<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cross.jsp</title>
<style type="text/css">
body{
   background-image:url('/media/alpha.png'), url('/media/favicon_small.png');
}

#surface{
  border-collapse: collapse;
  font-family: monospace;
  font-size: 150%;
  
  border: 20px outset black;  /*outset, inset*/
}

#surface td{
  opacity: 0.9;
}

</style>
<script type="text/javascript">
  window.onload = () => {
	  createBtn.onclick = function(){
// 		  for(let i=0; i<10; i++){
// 			 console.log(i); 
// 		  }
// 		  let i = 0; 
// 		  let tid = setInterval(()=>{      //위의 for문은 for문이 끝날 때까지 자바스크립트가 다른 작업 안함? 그래서?
// 			  console.log(i++);
// 		      if(i==10)
// 		    	  clearInterval(tid);
// 		  }, 1000);

      let i = 0;
      setTimeout(function inc(){
    	  console.log(i++);
    	  if(i < 10){
    	    setTimeout(inc, 1000);
    	  }                             //이러한 반복문들을 async/await방식으로 하면 for문같이 직관적으로 만들 수 있다
       }, 1000);
      
	  }
  }

</script>
</head>
<body>
<h1>async/await + class</h1>
<hr>
<button id="createBtn">Create</button>
<hr>
<table id="surface" onmousedown="event.preventDefault();" oncontextmenu="event.preventDefault();">
 <tbody>
  
  <c:forEach var="i" begin="0" end="${surface.size()-1}"> 
   <tr>
    <c:forEach var="alpha" items="${surface[i]}">
      <td style="color: black; background: black;">${alpha.ch}</td>
      
    </c:forEach>
   </tr>
<%--    ${surface[i]}<br>    --%>
<%--   <c:forEach var="list" items="${surface}"> --%>
<%--    ${list}<br>     이것도 위의  ${surface[i]}<br>과 같은 결과가 나온다--%>
  </c:forEach> 
 </tbody>
</table>
</body>
</html>