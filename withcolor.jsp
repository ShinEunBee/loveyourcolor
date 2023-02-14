<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="java.sql.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>With Color!</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>




<style media="screen">
      *{
        margin: 0; padding: 0;
      }
      .slide{
        width: 800px;
        height: 150px;
        overflow: hidden;
        position: relative;
        margin: 0 auto;

      }
      .slide ul{
        width: 5000px;
        position: absolute;
        left:0;
        font-size: 0;
      }
      .slide ul li{
        display: inline-block;
      }
      #back{
        position: absolute;
        left: 0;
        top:15px;
        cursor: pointer;
        z-index: 1;
      }
      #next{
        position: absolute;
        right: 0;
        top:15px;
        cursor: pointer;
        z-index: 1;
      }
</style>



<script type="text/javascript">

    $(document).ready(function(){
      var imgs;
      var img_count;
      var img_position = 1;
      var idx = 0;

      imgs = $(".slide ul");
      img_count = imgs.children().length;

      //버튼을 클릭했을 때 함수 실행
      $('#back').click(function () {
        back();
      });
      $('#next').click(function () {
        next();
      });
      
      $('#img1').click(function () {
    	  var img = document.getElementById('img0');
    	  img.src = "image/img1.jpg"
		idx = 1;
      });
        
      $('#img2').click(function () {
    	  var img = document.getElementById('img0');
    	  img.src = "image/img2.jpg"
    			idx = 2;
      });
      
      $('#img3').click(function () {
    	  var img = document.getElementById('img0');
    	  img.src = "image/img3.jpg"
    			idx = 3;
      });
        
      
      $('#img4').click(function () {
    	  var img = document.getElementById('img0');
    	  img.src = "image/img4.jpg"
    			idx = 4;
      });
      
      $('#img5').click(function () {
    	  var img = document.getElementById('img0');
    	  img.src = "image/img5.jpg"
    			idx = 5;
      });
        
      $('#img6').click(function () {
    	  var img = document.getElementById('img0');
    	  img.src = "image/img6.jpg"
    			idx = 6;
      });
      
      $('#img7').click(function () {
    	  var img = document.getElementById('img0');
    	  img.src = "image/img7.jpg"
    			idx = 7;
      });
        
      $('#img8').click(function () {
    	  var img = document.getElementById('img0');
    	  img.src = "image/img8.jpg"
    			idx = 8;
      });
      
      $('#img0').click(function () {
    	  if(idx != 0){
    		  window.open('color.jsp?idx='+idx);
    	  }
    	  
      });

      
      function back() {
        if(1<img_position){
          imgs.animate({
            left:'+=800px'
          });
          img_position--;
        }
      }
      function next() {
        if(img_count>img_position){
          imgs.animate({
            left:'-=800px'
          });
          img_position++;
        }
      }
    });
    

  </script>



</head>







<style>
	*{margin:0;padding:0;}
	lii {list-style:none;}
	a{text-decoration: none;}
	
	.menu{position: relative; width:100%; margin-left: auto; margin-right: auto; align:center;}
	.menu a{ line-height:40px; color:gray; padding: 0 18px; display:block;}

</style>





<body>


<!-- 로고 -->
<table style="margin-left: auto; margin-right: auto; align:center;" >
		<tr>
			<td>
			
				<img src = "image/love_logo.png" height = "120px" OnClick="window.location.href='main.jsp'" style = cursor:pointer;>
			</td>
		</tr>
</table>








<!-- 카테고리 -->
<ul class = "menu">
<hr width = 100% color = "#D5D5D5" align = "center" size = "1"/>
<table style="margin-left: auto; margin-right: auto; align:center;">

	<tr>
		<td><lii><a href="about.jsp">About</a></lii></td>
		<td><lii><a href="yourcolor.jsp">Your color</a></lii></td>
		<td><lii><a href="withcolor.jsp">With color</a></lii></td>
		<td ><lii ><a href="list.jsp">Board</a></lii></td>
		<td width = "60px"></td>
	</tr>
</table>
<hr width = 100% color = "#D5D5D5" align = "center" size = "1"/>
</ul>







<!-- 슬라이드 전체 위에 설명 이미지 -->
<table  style="margin-left: auto; margin-right: auto; align:center;">
	<tr>
		<td>
			<img src = "image/read.png" width = 800px height = 300px>
		</td>
	</tr>
</table>







<!-- 슬라이드 위에 큰 이미지 -->
<table style="margin-left: auto; margin-right: auto; align:center;">
	<tr>
		<td>
			<img src = "image/img0.jpg" id="img0" height="350" width="800" style=cursor:pointer;>
		</td>
	</tr>
</table>







<div class="slide">
      <img id="back" src="image/left.png" alt="" width="30">
      <ul>
        <li><img src="image/img1.jpg" id="img1" alt="" width="200" style = cursor:pointer;></li>
        <li><img src="image/img2.jpg" id="img2" alt="" width="200" style = cursor:pointer;></li>
        <li><img src="image/img3.jpg" id="img3" alt="" width="200" style = cursor:pointer;></li>
        <li><img src="image/img4.jpg" id="img4" alt="" width="200" style = cursor:pointer;></li>
        <li><img src="image/img5.jpg" id="img5" alt="" width="200" style = cursor:pointer;></li>
        <li><img src="image/img6.jpg" id="img6" alt="" width="200" style = cursor:pointer;></li>
        <li><img src="image/img7.jpg" id="img7" alt="" width="200" style = cursor:pointer;></li>
        <li><img src="image/img8.jpg" id="img8" alt="" width="200" style = cursor:pointer;></li>
      </ul>
      <img id="next" src="image/right.png" alt="" width="30">
</div>


</body>

</html>