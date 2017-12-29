<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.kabank.jee.domain.AttendBean" %>
<jsp:useBean id="attend" class="com.kabank.jee.domain.AttendBean" scope="request"/>
<% 
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bitcamp", "bitcamp");
	Statement stmt = conn.createStatement();
	
}catch(Exception e){
	e.printStackTrace();
}

System.out.print("===============찍고 옴============");
pageContext.forward("main.jsp");

%>

