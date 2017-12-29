<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.kabank.jee.domain.MemberBean"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="member" class = "com.kabank.jee.domain.MemberBean" scope="request"/>

<% 

Connection conn = null;
Statement stmt = null;

try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bitcamp", "bitcamp");
	stmt = conn.createStatement();
	member.setId(request.getParameter("id"));
	member.setPass(request.getParameter("pass"));
	member.setName(request.getParameter("name"));
	member.setSsn(request.getParameter("ssn"));
	member.setPhone(request.getParameter("phone"));
	member.setEmail(request.getParameter("email"));
	member.setProfile("default_profile.jpg");
	member.setAddress(request.getParameter("addr"));
	String sql = String.format("INSERT INTO Member (" 
				+ "id,"
				+ "pass,"
				+ "name,"
				+ "ssn,"
				+ "phone,"
				+ "email,"
				+ "profile,"
				+ "addr "
				+")VALUES('%s', '%s', '%s', '%s', '%s', '%s', '%s', '%s')" ,
				member.getId(),
				member.getPass(),
				member.getName(), 
				member.getSsn(), 
				member.getPhone(),
				member.getEmail(), 
				member.getProfile(), 
				member.getAddress()
			  );
				stmt.executeUpdate(sql);
	}catch(Exception e){e.printStackTrace();}

response.sendRedirect("../index.jsp");
//forward("../index.jsp");
%>
