<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<script type = "text/javascript">
	function writeCheck()
	 {
	 var form = document.writeform;
	 if( !form.name.value )
	 {
	 alert( "�̸��� �����ּ���" );
	 form.name.focus();
	 return;
	 }
	 if( !form.password.value )
	 {
	 alert( "��й�ȣ�� �����ּ���" );
	 form.password.focus();
	 return;
	 }
	 if( !form.title.value ) 
	{
	 alert( "������ �����ּ���" );
	 form.title.focus();
	 return;
	 }
	 if( !form.memo.value ) {
	 alert( "������ �����ּ���" );
	 form.memo.focus();
	 return;
	 } 
	form.submit();
	 }
 </script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�����Խ��� �� �ۼ�</title>
</head>

<body>

<table style="margin-left: auto; margin-right: auto; align:center;" >
		<tr>
			<td>
				<img src = "image/love_logo.png" height = "120px" OnClick="window.location.href='main.jsp'" style = cursor:pointer;>
			</td>
		</tr>
	</table>
	<table style="margin-left: auto; margin-right: auto; align:center;" width="800" cellpadding="0" cellspacing="0" border="0">
		    <tr height ="40"></tr>
			<tr style=text-align:center;>
				<td>�����Ӱ� ����ϼ���!</td>
			</tr>
			<tr height ="20"></tr>
			<tr height="3" bgcolor="#F5989D"><td colspan="6" width="800"></tr>
		</table>
		
		<table style="margin-left: auto; margin-right: auto; align:center;" width="800" cellpadding="0" cellspacing="0" border="0">
		 <form name="writeform" method="post" action="wrtie_ok.jsp">
	     <tr>
	      <td>&nbsp;</td>
	      <td align="center" height="50">����</td>
	      <td align = "center"><input name="title" size="100" maxlength="100"></td>
	      <td>&nbsp;</td>
	     </tr>
	     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
	    <tr>
	      <td>&nbsp;</td>
	      <td align="center" height="50">�г���</td>
	      <td align = "center"><input name="name" size="100" maxlength="50"></td>
	      <td>&nbsp;</td>
	     </tr>
	      <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
	    <tr>
	      <td>&nbsp;</td>
	      <td align="center" height="50">��й�ȣ</td>
	      <td align = "center"><input name="password" size="100" maxlength="50"></td>
	      <td>&nbsp;</td>
	     </tr>
	     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
	     <tr>
	      <td>&nbsp;</td>
	      <td align="center" height = "400">����</td>
	      <td align = "center"><textarea name="memo" cols="95" rows="20"></textarea></td>
	      <td>&nbsp;</td>
	     </tr>
	     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
	     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
	     <tr height="20"></tr>
	     <tr align="center">
	      <td>&nbsp;</td>
	      <td colspan="2"><input type=button value="���" OnClick="javascript:writeCheck();">
	       <input type=button value="���" OnClick="javascript:history.back(-1)">
	      <td>&nbsp;</td>
	     </tr>
         </form>
    </table>

</body>
</html>
     
