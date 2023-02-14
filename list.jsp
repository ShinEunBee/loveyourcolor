<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ page import="java.sql.*,java.text.SimpleDateFormat,java.util.Date"%>
<%@ page import="java.util.regex.Pattern" %>


<%

 final int ROWSIZE = 6; // 한페이지에 보일 게시물 수
 int pg = 1; //기본 페이지값
 
 if(request.getParameter("pg")!=null) { //받아온 pg값이 있을때, 다른페이지일때
 	pg = Integer.parseInt(request.getParameter("pg")); // pg값을 저장
 }
 
 int start = (pg*ROWSIZE) - (ROWSIZE-1); // 해당페이지에서 시작번호(step2)
 int end = (pg*ROWSIZE); // 해당페이지에서 끝번호(step2)
 int allPage = 0; // 전체 페이지수 
 int startPage = 1; // 시작블럭숫자 (1~5페이지일경우 1, 6~10일경우 6)
 int endPage = 1; // 끝 블럭 숫자 (1~5일 경우 5, 6~10일경우 10) 

%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>자유게시판</title>
	</head>
	
	<style>
	
	@font-face {
    font-family: myFont;
    src: url('//fonts.gstatic.com/ea/nanumgothic/v5/NanumGothic-Regular.woff');
	}
	
	.ng { font-family: myFont; }
	
	
	*{margin:0;padding:0;}
	li {list-style:none;}
	a{text-decoration: none;}
	
	.menu{position: relative; width:100%; margin-left: auto; margin-right: auto; align:center;}
	.menu a{ line-height:40px; color:gray; padding: 0 18px; display:block;}
		
	#fontsize1 {font-size: 100%;}
	#fontsize2 {font-size: 80%;}

	
	</style>
	
	<body style="background-color:white">
	<table style="margin-left: auto; margin-right: auto; align:center;" >
		<tr>
			<td>
				<img src = "image/love_logo.png" height = "120px" OnClick="window.location.href='main.jsp'" style = cursor:pointer;>
			</td>
		</tr>
	</table>
	
	<%
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/BOARD?serverTimezone=UTC"; //아이피주소와 port와 DB명을 입력합니다.
		String id = "root"; // DB USER명
		String pass = "3208"; // DB 비밀번호
		int total = 0;
		
		try {
			Connection conn = DriverManager.getConnection(url,id,pass);
			Statement stmt = conn.createStatement();
			Statement stmt1 = conn.createStatement();
			String sql = "";
	
			String sqlCount = "SELECT COUNT(*) FROM USER";
			ResultSet rs = stmt.executeQuery(sqlCount);
			
			if(rs.next()){
				total = rs.getInt(1);
			}
			rs.close();
			
			int sort=1;
			String sqlSort = "SELECT NUM from USER order by num desc";
			rs = stmt.executeQuery(sqlSort);
		
			
			while(rs.next()){
				int stepNum = rs.getInt(1);
				sql = "UPDATE USER SET STEP2=" + sort + " where NUM=" +stepNum;
			 	stmt1.executeUpdate(sql);
			 	sort++;
			 	endPage++;
			}
			
			allPage = (int)Math.ceil(total/(double)ROWSIZE);
			
			if(endPage > allPage) {
				endPage = allPage;
			}
			
			
			String sqlList = "SELECT NUM, USERNAME, TITLE, TIME, HIT from user where Step2 >="+start + " and Step2 <= "+ end +" order by Step2 asc";
			rs = stmt.executeQuery(sqlList);
	%>
		

<ul class = "menu">
<hr width = 100% color = "#D5D5D5" align = "center" size = "1"/>
<table style="margin-left: auto; margin-right: auto; align:center;">
	<tr>
		<td ><li><a href="about.jsp">About</a></li></td>
		<td ><li><a href="yourcolor.jsp">Your color</a></li></td>
		<td ><li><a href="withcolor.jsp">With color</a></li></td>
		<td ><li ><a href="list.jsp">Board</a></li></td>
		<td width = "60px"></td>
	</tr>
</p>
</table>
<hr width = 100% color = "#D5D5D5" align = "center" size = "1"/>
</ul>

		<table style="margin-left: auto; margin-right: auto;" width="800" cellpadding="0" cellspacing="0" border="0">
			    <tr height=40></tr>
				<tr height="5"><td width="5"></td></tr>
				<tr style="background-color:white" align="center">
					<td width="15%" class='ng'><strong>번호</strong></td>
					<td width="40%" class='ng'><strong>제목</strong></td>
		   			<td width="15%" class='ng'><strong>작성자</strong></td>
		   			<td width="23%" class='ng'><strong>작성일</strong></td>
		   			<td width="7%" class='ng'><strong>조회수</strong></td>
				</tr>
				
		<!-- 번호 제목 작성자 작성일 조회수 밑 선 줄 -->
		<tr height="7"></tr>
		<tr height="3" bgcolor="#F5989D"><td colspan="6" width="800"></td></tr>

<%
	if(total==0) {
%>	
		<tr align = "center" height = "30">
			<td colspan="6">등록 된 글이 없어요!</td>
		</tr>
<%
	 	} else {
	 		
		while(rs.next()) {
			int idx = rs.getInt(1);
			String name = rs.getString(2);
			String title = rs.getString(3);
			String time = rs.getString(4);
			int hit = rs.getInt(5);
			

%>
		<tr height="30" align="center">
		 <td id = "fontsize2" align="center" width="15%" class='ng'><%=idx %></td>
		 <td id = "fontsize2" align="center" width="40%" class='ng'><a href="view.jsp?idx=<%=idx%>"><%=title %></td>
		 <td id = "fontsize2" align="center" width="15%" class='ng'><%=name %></td>
		 <td id = "fontsize2" align="center" width="20%" class='ng'><%=time %></td>
		 <td id = "fontsize2" align="center" width="10%" class='ng'><%=hit %></td>
		 <td>&nbsp;</td> 
		</tr>
		
		<tr height="1" bgcolor="#818181"><td colspan="6" width="800"></td></tr>
		
<% 
		}
	} 
	rs.close();
	stmt.close();
	conn.close();
	} catch(SQLException e) {
	out.println( e.toString() );
}
%>

		<tr height="7"></tr>
		</table>
		
		<table style="margin-left: auto; margin-right: auto;" width="800" cellpadding="0" cellspacing="0" border="0">
			<tr><td colspan="4" height="5"></td></tr>
			  <tr>
	<td align="center">
		
		
		<%
			for(int i=startPage; i<= endPage; i++){
				if(i==pg){
		%>
					<u><b>[<%=i %>]</b></u>
		<%
				}else{
		%>
					[<a href="list.jsp?pg=<%=i %>"><%=i %></a>]
		<%
				}
			}
		%>
		
		</td>
		</tr>
			<tr align="right">
				<td><input type=button value="글쓰기" OnClick="window.location.href='wtire.jsp'"></td>
			</tr>
		</table>
	</body>
</html>