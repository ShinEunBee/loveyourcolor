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
				<img src = "image/love_logo.png" height = "120px" OnClick="window.location.href='love_main.jsp'" style = cursor:pointer;>
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
<tr>
<td>
<img src="image/about.png" width = "800px">
</td>
</tr>
</table>


</body>
</html>