<%@ page language="java" contentType="text/html; charset=EUC-KR"

    pageEncoding="EUC-KR"%>

<%@ page import="java.sql.*"%>  
<%@ page import="java.sql.*,java.text.SimpleDateFormat,java.util.Date"%>
<%@ page import="java.util.regex.Pattern" %>

<%
	request.setCharacterEncoding("euc-kr");

	try {	
		
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/BOARD?serverTimezone=UTC"; //�������ּҿ� port�� DB���� �Է��մϴ�.
		String id = "root"; // DB USER��
		String pass = "3208"; // DB ��й�ȣ
		
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String title = request.getParameter("title");
		String memo = request.getParameter("memo");
		out.println(memo);
		
		Connection conn = DriverManager.getConnection(url,id,pass);
		
		String sql = "INSERT INTO USER(USERNAME,PASSWORD,TITLE,MEMO) VALUES(?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, name);
		pstmt.setString(2, password);
		pstmt.setString(3, title);
		pstmt.setString(4, memo);
		
		pstmt.execute();
		pstmt.close();
		
		conn.close();
} catch(SQLException e) {
	out.println( e.toString() );
	}
%>

 <script Type = "text/javascript">
   
 	self.window.alert("�Է��� ���� �����Ͽ����ϴ�.");
	window.location.href="list.jsp"; 

</script>

