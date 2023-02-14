<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<script type = "text/javascript">
	function writeCheck()
	 {
	 var form = document.writeform;
	 if( !form.name.value )
	 {
	 alert( "이름을 적어주세요" );
	 form.name.focus();
	 return;
	 }
	 if( !form.password.value )
	 {
	 alert( "비밀번호를 적어주세요" );
	 form.password.focus();
	 return;
	 }
	 if( !form.title.value ) 
	{
	 alert( "제목을 적어주세요" );
	 form.title.focus();
	 return;
	 }
	 if( !form.memo.value ) {
	 alert( "내용을 적어주세요" );
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
<title>자유게시판 글 작성</title>
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
				<td>자유롭게 얘기하세요!</td>
			</tr>
			<tr height ="20"></tr>
			<tr height="3" bgcolor="#F5989D"><td colspan="6" width="800"></tr>
		</table>
		
		<table style="margin-left: auto; margin-right: auto; align:center;" width="800" cellpadding="0" cellspacing="0" border="0">
		 <form name="writeform" method="post" action="wrtie_ok.jsp">
	     <tr>
	      <td>&nbsp;</td>
	      <td align="center" height="50">제목</td>
	      <td align = "center"><input name="title" size="100" maxlength="100"></td>
	      <td>&nbsp;</td>
	     </tr>
	     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
	    <tr>
	      <td>&nbsp;</td>
	      <td align="center" height="50">닉네임</td>
	      <td align = "center"><input name="name" size="100" maxlength="50"></td>
	      <td>&nbsp;</td>
	     </tr>
	      <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
	    <tr>
	      <td>&nbsp;</td>
	      <td align="center" height="50">비밀번호</td>
	      <td align = "center"><input name="password" size="100" maxlength="50"></td>
	      <td>&nbsp;</td>
	     </tr>
	     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
	     <tr>
	      <td>&nbsp;</td>
	      <td align="center" height = "400">내용</td>
	      <td align = "center"><textarea name="memo" cols="95" rows="20"></textarea></td>
	      <td>&nbsp;</td>
	     </tr>
	     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
	     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
	     <tr height="20"></tr>
	     <tr align="center">
	      <td>&nbsp;</td>
	      <td colspan="2"><input type=button value="등록" OnClick="javascript:writeCheck();">
	       <input type=button value="취소" OnClick="javascript:history.back(-1)">
	      <td>&nbsp;</td>
	     </tr>
         </form>
    </table>

</body>
</html>
     
