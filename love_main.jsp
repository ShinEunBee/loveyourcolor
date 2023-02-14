<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Love your Color!</title>
</head>
<style>
	*{margin:0;padding:0;}
	ul,lii{list-style:none;}
	#slide{height:400px; width: 1185px; position:relative; overflow:hidden; margin-left: auto; margin-right: auto; align:center; }
	#slide ul{width:400%;height:100%;transition:1s;}
	#slide ul:after{content:"";display:block;clear:both;}
	#slide lii{float:left;width:25%;height:100%;}
	#slide lii:nth-child(1){background:url(image/winterdeep.jpg); background-size : 100%;}
	#slide lii:nth-child(2){background:url(image/autumnmute.jpg); background-size : 100%;}
	#slide lii:nth-child(3){background:#fffFfF;}
	#slide lii:nth-child(4){background:#FFFFFF;}
	#slide input{display:none;}
	#slide label{display:inline-block;vertical-align:middle;width:10px;height:10px; background:#D5D5D5;transition:0.3s;border-radius:50%;cursor:pointer;}
	#slide .pos{text-align:center;position:absolute;bottom:10px;left:0;width:100%;}
	#pos1:checked~ul{margin-left:0%;}
	#pos2:checked~ul{margin-left:-100%;}
	#pos3:checked~ul{margin-left:-200%;}
	#pos4:checked~ul{margin-left:-300%;}
	#pos1:checked~.pos>label:nth-child(1){background:#F5989D;}
	#pos2:checked~.pos>label:nth-child(2){background:#F5989D;}
	#pos3:checked~.pos>label:nth-child(3){background:#F5989D;}
	#pos4:checked~.pos>label:nth-child(4){background:#F5989D;}
</style>
<style>

li {list-style:none;}
a{text-decoration: none;}

.menu{position: relative; width:100%; margin-left: auto; margin-right: auto; align:center;}
.menu a{ line-height:40px; color:gray; padding: 0 18px; display:block;}


</style>

<body>

<table style="margin-left: auto; margin-right: auto; align:center;" >
		<tr>
			<td>
				<img src = "image/love_logo.png" height = "120px" OnClick="window.location.href='main.jsp'" style = cursor:pointer;>
			</td>
		</tr>
</table>


<ul class = "menu">
<hr width = 100% color = "#D5D5D5" align = "center" size = "1"/>
<table style="margin-left: auto; margin-right: auto; align:center;">
	<tr>
		<td><li><a href="about.jsp">About</a></li></td>
		<td><li><a href="yourcolor.jsp">Your color</a></li></td>
		<td><li><a href="withcolor.jsp">With color</a></li></td>
		<td><li><a href="list.jsp">Board</a></li></td>
		<td width = "60px"></td>
	</tr>
</table>
<hr width = 100% color = "#D5D5D5" align = "center" size = "1"/>
</ul>
<table>
<tr height = 3px;>
</tr>
</table>

<table style="margin-left: auto; margin-right: auto; align:center;">
<div id="slide">
	<input type="radio" name="pos" id="pos1" checked>
	<input type="radio" name="pos" id="pos2">
	<input type="radio" name="pos" id="pos3">
	<input type="radio" name="pos" id="pos4">
	<ul>
		<lii></lii>
		<lii></lii>
		<lii></lii>
		<lii></lii>
	</ul>
	<p class="pos">
		<label for="pos1"></label>
		<label for="pos2"></label>
		<label for="pos3"></label>
		<label for="pos4"></label>
	</p>
</div>
</table>
<table  style="margin-left: auto; margin-right: auto; align:center;">
	<tr>
		<td><img src="image/copy.png" height = 300px></td>
	</tr>
</table>
</body>
</html>