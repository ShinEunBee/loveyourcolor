<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<script type = "text/javascript">  // �ڹ� ��ũ��Ʈ ����

function deleteCheck()
  {
   var form = document.deleteform;
   
   if( !form.password.value )
   {
    alert( "��й�ȣ�� �����ּ���" );
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
<title>�ۻ���</title>
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
				<td>���� ���� �Ͻðڽ��ϱ�?</td>
			</tr>
			<tr height = "10"></tr>
			<tr height="3" bgcolor="#F5989D"><td colspan="6" width="400"></td></tr>
			<tr height = "10"></tr>
			</table>
			<table style="margin-left: auto; margin-right: auto;">
				<tr align = "center">
					<td>��й�ȣ</td>
					<td><input name = "password" type="password" size="50" maxlength="100"></td>
				</tr>
				<tr height = "10"></tr>
				<tr height="1" bgcolor="#818181"><td colspan="6" width="400"></td></tr>
				<tr height = "10"></tr>
				<tr align = "center" >
					<td colspan="6"><input type = button value="����" OnClick ="javascript:deleteCheck();">
					        <input type = button value = "���" OnClick ="javascript:history.back(-1)"></td>
				</tr>
			</table>
		</td>
	</tr>
</form>
</table>

</body>
</html>