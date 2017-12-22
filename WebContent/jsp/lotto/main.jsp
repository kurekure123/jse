<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
	<%@ include file="../commen/head.jsp"  %>
	<body>
	<%@ include file ="../commen/header.jsp" %>
	<%@ include file="../commen/nav.jsp"  %>
	<section>
	<article>
	<div id = "wrapper">	
	
	
	<form action="result.jsp">
		구매금액 : <input type="text" name ="money" placeholder="게임당 1000원 최대 5게임" />
		<input type="submit" value="전 송"/>
	</form>
	
	</div>
	</article>
	</section>
	<aside></aside>
	<%@ include file="../commen/footer.jsp"  %>
		</body>
		<script src="../../js/lotto.js"></script>
</html>