<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import="java.sql.*"%> 

<script type = "text/javascript"> 

function modifyCheck()
  {
   var form = document.modifyform;
   
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
 
  if( !form.memo.value )
   {
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
<title>���� �����ϼ���!</title>
</head>
<body style="background-color:white">
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
				<td>���� �����ϼ���!</td>
			</tr>
			<tr height ="20"></tr>
			<tr height="3" bgcolor="#F5989D"><td colspan="6" width="800"></tr>
		</table>

<%
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/BOARD?serverTimezone=UTC"; //�������ּҿ� port�� DB���� �Է��մϴ�.
	String id = "root"; // DB USER��
	String pass = "3208"; // DB ��й�ȣ
	
	String name = "";
	String password = "";
	String title = "";
	String memo = "";
	int idx = Integer.parseInt(request.getParameter("idx"));
	
	try {
		
		Connection conn = DriverManager.getConnection(url,id,pass);
		Statement stmt = conn.createStatement();
		
		String sql = "SELECT USERNAME, PASSWORD, TITLE, MEMO FROM USER WHERE NUM=" + idx;
		ResultSet rs = stmt.executeQuery(sql);

		
		if(rs.next()){
			
			name = rs.getString(1);
			password = rs.getString(2);
			title = rs.getString(3);
			memo = rs.getString(4);
		}
		
		rs.close();
		stmt.close();
		conn.close();

	}catch(SQLException e) {
		out.println( e.toString() );
	}
	 
%>

		<table style="margin-left: auto; margin-right: auto; align:center;" width="800" cellpadding="0" cellspacing="0" border="0">
		 <form name=modifyform method=post action="modify_ok.jsp?idx=<%=idx%>">
	     <tr>
	      <td>&nbsp;</td>
	      <td align="center" height="50">����</td>
	      <td align = "center"><input type = text name="title" size="100" maxlength="100" value ="<%=title%>"></td>
	      <td>&nbsp;</td>
	     </tr>
	     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
	    <tr>
	      <td>&nbsp;</td>
	      <td align="center" height="50">�г���</td>
	      <td align = "center"><%=name%> (�г����� ������ �Ұ��մϴ�!)<input type=hidden name="name" size="100" maxlength="50" ></td>
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
	      <td align = "center"><textarea name="memo" cols="95" rows="20"><%=memo%></textarea></td>
	      <td>&nbsp;</td>
	     </tr>
	     <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr>
	     <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr>
	     <tr height="20"></tr>
	     <tr align="center">
	      <td>&nbsp;</td>
	      <td colspan="2"><input type=button value="����" OnClick="javascript:modifyCheck()">
	       <input type=button value="���"  OnClick="javascript:history.back(-1)">
	      <td>&nbsp;</td>
	     </tr>
         </form>
    </table>

</body>
</html>