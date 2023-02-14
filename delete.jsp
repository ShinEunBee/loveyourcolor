<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<script type = "text/javascript">  // 자바 스크립트 시작

function deleteCheck()
  {
   var form = document.deleteform;
   
   if( !form.password.value )
   {
    alert( "비밀번호를 적어주세요" );
    form.password.focus();
    return;
   }
 		form.submit();
  }
 </script>
 
 <%
 	int idx = Integer.parseInt(request.getParameter("idx"));

 %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>글삭제</title>
</head>
<body style = "background : white">
<table style="margin-left: auto; margin-right: auto; align:center;" >
		<tr>
			<td>
				<img src = "image/love_logo.png" height = "120px" OnClick="window.location.href='main.jsp'" style = cursor:pointer;>
			</td>
		</tr>
	</table>
<table style="margin-left: auto; margin-right: auto; align:center;">
<form name=deleteform method=post action="delete_ok.jsp?idx=<%=idx%>">	
	<tr height=40></tr>
	<tr >
		<td>
			<table style="margin-left: auto; margin-right: auto;">
			<tr align = "center">
				<td>글을 삭제 하시겠습니까?</td>
			</tr>
			<tr height = "10"></tr>
			<tr height="3" bgcolor="#F5989D"><td colspan="6" width="400"></td></tr>
			<tr height = "10"></tr>
			</table>
			<table style="margin-left: auto; margin-right: auto;">
				<tr align = "center">
					<td>비밀번호</td>
					<td><input name = "password" type="password" size="50" maxlength="100"></td>
				</tr>
				<tr height = "10"></tr>
				<tr height="1" bgcolor="#818181"><td colspan="6" width="400"></td></tr>
				<tr height = "10"></tr>
				<tr align = "center" >
					<td colspan="6"><input type = button value="삭제" OnClick ="javascript:deleteCheck();">
					        <input type = button value = "취소" OnClick ="javascript:history.back(-1)"></td>
				</tr>
			</table>
		</td>
	</tr>
</form>
</table>

</body>
</html>