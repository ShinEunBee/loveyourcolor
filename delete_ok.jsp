<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import = "java.sql.*" %>
    
    
<%
	request.setCharacterEncoding("euc-kr");
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/BOARD?serverTimezone=UTC"; //�������ּҿ� port�� DB���� �Է��մϴ�.
	String id = "root"; // DB USER��
	String pass = "3208"; // DB ��й�ȣ
	String password = null;
	int idx = Integer.parseInt(request.getParameter("idx"));
	String passw = request.getParameter("password");

	try{
				
		Connection conn = DriverManager.getConnection(url,id,pass);
		Statement stmt = conn.createStatement();
		
		String sql = "SELECT PASSWORD FROM USER WHERE NUM=" + idx;
		ResultSet rs = stmt.executeQuery(sql);
		
		 if(rs.next()){
				password = rs.getString(1);
		 }
		 
		 if(password.equals(passw)) {
			   			
			sql = "DELETE FROM USER WHERE NUM=" + idx;	
			stmt.executeUpdate(sql);	 
%>
  			<script type = "text/javascript">
   				self.window.alert("�ش� ���� �����Ͽ����ϴ�.");
   				location.href="list.jsp";
  			</script>

<%
		rs.close();
		stmt.close();
		conn.close();
		
		 } else { 
%>
			<script type= "text/javascript">
			 self.window.alert("��й�ȣ�� Ʋ�Ƚ��ϴ�.");
				location.href="javascript:history.back()";
			</script>
<%		
		 }
 	} catch(SQLException e) {
		out.println( e.toString() );
	} 
%>
    

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�� ����</title>
</head>
<body>

</body>
</html>