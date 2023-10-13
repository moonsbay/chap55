<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>float.jsp</title>
<style type="text/css">
  img{
    float:left;
    margin: 10px;
  }
  div{
    border:10px solid red;
    width:100px;
    height:100px;
    margin:10px;
    float:right;
    
    background: linear-gradient(to bottom, rgba(122,188,255,1) 0%,rgba(96,171,248,1) 44%,rgba(64,150,238,1) 100%);
  }
  
  section{
    display:flex;                /*일자정렬*/
    justify-content: flex-end;   /*우측정렬, center는 가운데 정렬, float은 센터정렬없음 */
                                 /* space-between, space-around등 다양한 옵션이 있음 */
  }
  
  article{
    border:10px solid red;
    width:100px;
    height:100px;
    margin:10px;
    flex-shrink:0;   /*화면크기를 조정해도 줄어들지 않는다, 오버플로우된다*/
  }
</style>
</head>
<body>
<h1>float속성 이해</h1>
<hr>
<img alt="" src="http://via.placeholder.com/200x100">

<p>
CSS는 Cascading Style Sheets의 약자입니다.
CSS는 HTML 요소들이 각종 미디어에서 어떻게 보이는가를 정의하는 데 사용되는 스타일 시트 언어입니다.
HTML4 부터는 이러한 모든 서식 설정을 HTML 문서로부터 따로 분리하는 것이 가능해졌습니다.
오늘날 대부분의 웹 브라우저들은 모두 CSS를 지원하고 있습니다.
CSS는 HTML 요소들이 각종 미디어에서 어떻게 보이는가를 정의하는 데 사용되는 스타일 시트 언어입니다.
HTML4 부터는 이러한 모든 서식 설정을 HTML 문서로부터 따로 분리하는 것이 가능해졌습니다.
오늘날 대부분의 웹 브라우저들은 모두 CSS를 지원하고 있습니다.
HTML4 부터는 이러한 모든 서식 설정을 HTML 문서로부터 따로 분리하는 것이 가능해졌습니다.
오늘날 대부분의 웹 브라우저들은 모두 CSS를 지원하고 있습니다.
CSS는 HTML 요소들이 각종 미디어에서 어떻게 보이는가를 정의하는 데 사용되는 스타일 시트 언어입니다.
HTML4 부터는 이러한 모든 서식 설정을 HTML 문서로부터 따로 분리하는 것이 가능해졌습니다.
오늘날 대부분의 웹 브라우저들은 모두 CSS를 지원하고 있습니다.
</p>
<hr>
<div>box1</div>
<div>box2</div>
<div>box3</div>
<hr style="clear:both;">   <!--  이 옵션이 없은면 hr도 float되버림  -->
<section>
<article>box4</article>
<article>box5</article>
<article>box6</article>
</section>
<hr>
</body>
</html>