<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%@ page import="java.util.*" %>
	<%@ page import="com.kabank.jee.domain.BurgerkingBean" %>
	<jsp:useBean id="hamburger" class="com.kabank.jee.domain.BurgerkingBean" scope= "request"/>
	<jsp:useBean id="salad" class="com.kabank.jee.domain.BurgerkingBean" scope= "request"/>
	<jsp:useBean id="coke" class="com.kabank.jee.domain.BurgerkingBean" scope= "request"/>
	<jsp:useBean id="coffee" class="com.kabank.jee.domain.BurgerkingBean" scope= "request"/>
	<jsp:useBean id="fries" class="com.kabank.jee.domain.BurgerkingBean" scope= "request"/>
	<jsp:useBean id="bagel" class="com.kabank.jee.domain.BurgerkingBean" scope= "request"/>
	
<!doctype html>
<html lang="en">	
		<%@ include file="../commen/head.jsp" %>
<body>		
		<%@ include file ="../commen/header.jsp" %>
		<%@ include file="../commen/nav.jsp" %>
	<section>
	<div id = "wrapper">
	<article>
<% 
	
	String hamburgerPrice = request.getParameter("hamburger");
	String cokePrice = request.getParameter("coke");
	String coffeePrice = request.getParameter("coffee");
	String friesPrice = request.getParameter("fries");
	String saladPrice = request.getParameter("salad");
	String bagelPrice = request.getParameter("bagel");
	
	String hamburgerCount = request.getParameter("hamburger-count");
	String cokeCount = request.getParameter("coke-count");
	String coffeeCount = request.getParameter("coffee-count");
	String friesCount = request.getParameter("fries-count");
	String saladCount = request.getParameter("salad-count");
	String bagelCount = request.getParameter("bagel-count");
	
	String place = request.getParameter("place");
	
	hamburger.setMenu("햄버거");
	hamburger.setPrice(hamburgerPrice);
	hamburger.setCount(hamburgerCount);
	
	coffee.setMenu("커피");
	coffee.setPrice(coffeePrice);
	coffee.setCount(coffeeCount);
	
	coke.setMenu("콜라");
	coke.setPrice(cokePrice);
	coke.setCount(cokeCount);
	
	fries.setMenu("감자튀김");
	fries.setPrice(friesPrice);
	fries.setCount(friesCount);
	
	bagel.setMenu("베이글");
	bagel.setPrice(bagelPrice);
	bagel.setCount(bagelCount);
	
	salad.setMenu("샐러드");
	salad.setPrice(saladPrice);
	salad.setCount(saladCount);
	
	String price = "";
	String total = "";

	List<BurgerkingBean> list = new ArrayList<>();
	list.add(hamburger);
	list.add(coke);
	list.add(fries);
	list.add(salad);
	list.add(bagel);
	list.add(coffee);
	int a = 0;
%>
	<%= place%> <br>
<%	
	
	for(BurgerkingBean s : list){
		if(!s.getCount().equals("")){
		
%>

	
 	주문한 품목 <%= s %> <br />
 	
 	
<%   
		a += (Integer.parseInt(s.getPrice()) * Integer.parseInt(s.getCount()));
		}
	}
	total = String.valueOf(a);
%>
 	_____________________________________	<br />

 	총 금액 <%= total %> <br />

<%
	
%>
	</article>
	</div>
	</section>
	<%@ include file="../commen/footer.jsp" %>
	
	</body>
	<script src="../../js/result.js"></script>
</html>