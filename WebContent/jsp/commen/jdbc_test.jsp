<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding ="UTF-8"%>
<%@ page import = "java.sql.*" %>

<html>
<head>
	<meta charset="UTF-8" />
	<title>JDBC TEST</title>
</head>
<body>
	<%
	try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe"
			, "bitcamp", "bitcamp");
	Statement stmt = conn.createStatement();
	String sql = "SELECT COUNT (*) AS count FROM tab";
	ResultSet rs = stmt.executeQuery(sql);
	String count = "";
	while(rs.next()){
		count = rs.getString("count");	
	%> 
	 테이블 갯수는 <%= count %> 입니다.
	<%	
	}
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	%>
	
</body>
</html>