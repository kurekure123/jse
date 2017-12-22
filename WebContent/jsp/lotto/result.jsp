<%@page import="com.kabank.jee.domain.LottoBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<meta charset="UTF-8" />
	<title>lotto_result</title>

<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.kabank.jee.domain.LottoBean" %>
<%@ page import="java.util.*" %>
<%@ include file="../commen/head.jsp"  %>
<body>
<div id="wrapper">
<%@ include file ="../commen/header.jsp" %>
<%@ include file="../commen/nav.jsp"  %>

<section>
<% 		
	String money = request.getParameter("money");	
	countRow(money);
%>
<%!
	public int countRow(String money){
		int count = 0;
		count = Integer.parseInt(money)/1000;
		return count;
	}
	public List<String> createLottos(int count) {
		List<String> list = new ArrayList<String>();
		for(int i=0; i<count; i++){
			 list.add(i, createLotto());
		}
		return list;
	}
	
	public String createLotto() {
		int[] lotto = new int[6];
		String res = "";
		for(int i=0; i<6; i++){
			lotto[i] = ((int)(Math.random()*45)+1);
			for(int j=0; j<i; j++){
				if(lotto[j] == lotto[i] ){
					i--;
				}
			}
		}
		Arrays.sort(lotto);
		for(int i=0; i<6; i++){
			res += (lotto[i]+"/ ");
		}
		return res;
	}
%>
<%
	String data = new SimpleDateFormat("yyyy-MM-dd hh:mm a").format(new Date());
%>
<div style = "width : 300px; height: 200px; margin: 0 auto;">	
	<%= data %> <br/>
	--------------------------------------------<br/>
<%
	int count = countRow(money);
	for(String lot : createLottos(count)){
%>
		<%= lot%> <br/>
<%
	}
%>
</div>
</section>
</div>
<%@ include file="../commen/footer.jsp"  %>

	</body>
</html>