<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost:3306/BOARD"; //�������ּҿ� port�� DB���� �Է��մϴ�.
	String id = "root"; // DB USER��
	String pass = "3208"; // DB ��й�ȣ
	String imgsrc = "";
	
	Connection conn = DriverManager.getConnection(url,id,pass);
	Statement stmt = conn.createStatement();
	
	int idx = Integer.parseInt(request.getParameter("idx"));
	
	String src = "SELECT content FROM COLOR_LIST WHERE color =" + idx;
	ResultSet rs = stmt.executeQuery(src);
	
	if(rs.next()){
		imgsrc = rs.getString(1); 	
	}
	
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�ſ�� �Բ� �ڽ��� ����� ������!</title>
</head>
<body style = "background-color : <%=imgsrc%>">
<table><tr><td><%=imgsrc%></td></tr></table>
</body>
</html>
