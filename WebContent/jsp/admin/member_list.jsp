<%@ page import="org.eclipse.jdt.internal.compiler.flow.FinallyFlowContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.kabank.jee.domain.MemberBean" %>
<%
	Statement stmt = null;
	Connection conn = null;
	String sql = "";
	ResultSet rs = null;
	List<MemberBean> result = new ArrayList<>();
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:xe", "bitcamp", "bitcamp");
		stmt = conn.createStatement();
		sql = "SELECT * FROM tab";
		rs = stmt.executeQuery(sql);
		List<String> list = new ArrayList<>();
		while(rs.next()){
			String temp = rs.getString("TNAME");
			list.add(temp);
		}
		boolean exist = false;
		for(String s : list){
			if(s.equalsIgnoreCase("member")){
				exist = true;
				break;
			}
		}
			if(!exist){
				stmt.executeUpdate("CREATE TABLE Member("
						+ "id VARCHAR2(20) PRIMARY KEY,"
						+ "pass VARCHAR2(20),"
						+ "name VARCHAR2(20),"
						+ "ssn VARCHAR2(20),"
						+ "phone VARCHAR2(20),"
						+ "email VARCHAR2(20),"
						+ "profile VARCHAR2(20),"
						+ "addr VARCHAR2(20)"
						+")");
			}else{
			 	rs = stmt.executeQuery("SELECT id,pass,name,ssn,phone,email,profile,addr" 
			 			+ " FROM Member");
				while(rs.next()){
					MemberBean m = new MemberBean();
					m.setId(rs.getString("id"));
					m.setName(rs.getString("name"));
					m.setSsn(rs.getString("ssn"));
					m.setPhone(rs.getString("phone"));
					m.setEmail(rs.getString("email"));
					m.setAddress(rs.getString("addr"));
					result.add(m);
					
				// id, name = property "id" , "name" = Schema
				}		
			}
	
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(stmt != null){
			try{stmt.close();}catch(Exception e){
				e.printStackTrace();
			}
		}
		if(conn != null){
			try{conn.close();}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
%>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Document</title>
	<link rel="stylesheet" href="../../css/admin.css" />
	<link rel="stylesheet" href="../../css/common.css" />
</head>
<body>
<div id="wrapper">
<header>
	<h1> 관리자 메인 페이지 </h1>	
</header>
<aside id="admin_aside">
 <a id="member_mgmt_link">회원관리</a>
</aside>
<section id="admin_section">
	<form action="">
		<table style="margin: 0 auto;" >
			<tr>
				<td>
					검색 방법
					<select name="search" id="search">
					<option value="">이름
						</option>
					<option value="">성별
						</option>
					</select>
					<input type="text" style="width : 200 px;" />
					<input type="submit" value = "검색" />
				</td>
			</tr>
		</table>
	</form>

		<table id="admin_table" style="">
		 	<tr>
		 		<th>NO</th>
		 		<th>ID</th>
		 		<th>NAME</th>
		 		<th>DATE OF BIRTH</th>
		 		<th>GENDER</th>
		 		<th>CONTACT</th>
		 		<th>EMAIL</th>
		 		<th>ADRESS</th>
		 	</tr>
<% 
		for(int i = 0; i < result.size(); i++){
%>
		 	<tr>
		 		<td>00</td>
		 		<td><%= result.get(i).getId() %></td>
		 		<td><%= result.get(i).getName() %></td>
		 		<td><%= result.get(i).getSsn() %></td>
		 		<td>남</td>
		 		<td><%= result.get(i).getPhone() %></td>
		 		<td><%= result.get(i).getEmail() %></td>
		 		<td><%= result.get(i).getAddress() %></td>
		 	</tr>
<%

		}
%>

	</table>
		<button id="member_register_btn" style="margin-left: 420px;">멤버추가</button>
</section>	 	
</div>
<%@ include file="../commen/footer.jsp" %>
</body>
<script src="../../js/admin/member_list.js"></script>
</html>