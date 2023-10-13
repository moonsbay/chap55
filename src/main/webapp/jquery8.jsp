<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <script type="text/javascript" src="/js/jquery-3.7.1.js"></script> -->
<!-- <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script> -->
<script type="text/javascript"  src="/webjars/jquery/jquery.js"></script>
<title>jquery7.jsp</title>
<style type="text/css">
.box{
  
  width: 100px;
  height: 100px;
}

.red{
  border: 5px solid yellow;
  background: red;
}
.blue{
  border: 5px solid yellow;
  background: blue;
}
.green{
  border: 5px solid yellow;
  background: green;
}
.circle{
  border-radius: 100%;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
 	$('div') 
// 	.on('mouseenter', function(){        
// 		$(this).addClass('circle');
// 	})
// 	.on('mouseleave', function(){
// 		$(this).removeClass('circle');
// 	})
// 	.on('click', function(){
// 		$(this).toggleClass('box');
// 	});
//   }); //메서드 체인방식의 코드
  
//     .click(function(e){
//     	$(this).toggleClass('box');
//     })
//     .mouseenter(function(e){
//     	$(this).addClass('circle');
//     })
//     .mouseleave(function(e){
//     	$(this).removeClass('circle');
//     })

//        .hover(function(e){
//     	   $(this).addClass('circle');
//        }, function(e){
//     	   $(this).removeClass('circle');
//        })

      .on({
    	  click: function(){
    		  $(this).toggleClass('box');
    	  },
    	  mouseenter:function(){
    		  $(this).addClass('circle');
    	  },
    	  mouseleave:function(){
    		  $(this).removeClass('circle');
    	  },
    	  contextmenu:function(e){
    		  e.preventDefault();       //기본기능 막는 것.. 마우스우측기능 막음
    	  }
      });


  });
    
	
</script>
</head>
<body>
<div class="box red">box1</div>
<div class="box blue">box2</div>
<div class="box green">box3</div>

</body>
</html>