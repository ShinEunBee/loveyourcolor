<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ page import="java.sql.*"%>
<%@ page import="java.sql.*,java.text.SimpleDateFormat,java.util.Date"%>
<%@ page import="java.util.regex.Pattern" %>

<%
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/BOARD?serverTimezone=UTC"; //�������ּҿ� port�� DB���� �Է��մϴ�.
	String id = "root"; // DB USER��
	String pass = "3208"; // DB ��й�ȣ
	int idx = Integer.parseInt(request.getParameter("idx"));


	try {
		Connection conn = DriverManager.getConnection(url,id,pass);
		Statement stmt = conn.createStatement();

		String sql = "SELECT USERNAME, TITLE, MEMO, TIME, HIT FROM USER WHERE NUM=" + idx;
		ResultSet rs = stmt.executeQuery(sql);
		 if(rs.next()){

				String name = rs.getString(1);
				String title = rs.getString(2);
				String memo = rs.getString(3);
				String time = rs.getString(4);
				int hit = rs.getInt(5);
				hit++;

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�ۺ���</title>
</head>
	
<body  style="background-color:white">
<table style="margin-left: auto; margin-right: auto; align:center;" >
		<tr>
			<td>
				<img src = "image/love_logo.png" height = "120px" OnClick="window.location.href='main.jsp'" style = cursor:pointer;>
			</td>
		</tr>
	</table>
<table style="margin-left: auto; margin-right: auto; align:center;" width="800" cellpadding="0" cellspacing="0" border="0">
  <tr>
   <td>
    <table width="100%" cellpadding="0" cellspacing="0" border="0">
      <tr height=40 ></tr>

      <tr height="3" bgcolor="#F5989D"><td colspan="6" width="800"></td></tr>   
    </table>
   <table width="800">
     <tr height = "30">
      <td width="0">&nbsp;</td>
      <td align="center" width="76">�۹�ȣ</td>
      <td width="319"><%=idx%></td>
      <td width="0">&nbsp;</td>
      
     </tr>
	 <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr height = "30">
      <td width="0">&nbsp;</td>
      <td align="center" width="76">��ȸ��</td>
      <td width="319"><%=hit %></td>
      <td width="0">&nbsp;</td>
     </tr>
	 <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr height = "30">
      <td width="0">&nbsp;</td>
      <td align="center" width="76">�г���</td>
      <td width="319"><%=name %></td>
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr height = "30">
      <td width="0">&nbsp;</td>
      <td align="center" width="76">�ۼ���</td>
      <td width="319"><%=time %></td>
      <td width="0">&nbsp;</td>
     </tr>
      <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
    <tr height = "30">
      <td width="0">&nbsp;</td>
      <td align="center" width="76">����</td>
      <td width="319"><%=title %></td>
      <td width="0">&nbsp;</td>
     </tr>
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
                <tr>
      <td width="0">&nbsp;</td>
                   <td width="399" colspan="2" height="500"><%=memo %>
                </tr>
<%
sql = "UPDATE USER SET HIT=" + hit + " where NUM=" +idx;
 stmt.executeUpdate(sql);
 rs.close(); stmt.close();
 conn.close();
 }
 }catch(SQLException e) {

 } 
%>
                
     <tr height="1" bgcolor="#dddddd"><td colspan="4" width="407"></td></tr>
     <tr height="1" bgcolor="#F5989D"><td colspan="4" width="407"></td></tr>
     <tr align="center">
      <td width="0">&nbsp;</td>
      <td colspan="2" width="399"><input type=button value="�۾���" OnClick="window.location='wtire.jsp'">
	<!--<input type=button value="���">-->
	<input type=button value="���" OnClick="window.location='list.jsp'">
	<input type=button value="����" OnClick="window.location='modify.jsp?idx=<%=idx%>'">
	<input type=button value="����" OnClick="window.location='delete.jsp?idx=<%=idx%>'">
      <td width="0">&nbsp;</td>
     </tr>
    </table>
   </td>
  </tr>
 </table>
</body>
</html>