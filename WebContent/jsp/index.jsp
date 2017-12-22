<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding ="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
	<meta charset="UTF-8" />
	<title>index</title>
	<link rel="shortcut icon" href="../img/favicon.ico" />
	<link rel="stylesheet" href="../css/common.css" />
	<link rel="stylesheet" href="../css/index.css" />
	<script src="../js/index.js"></script>
</head>
<body>

<div id = "wrapper">

 	<header id="index_header">
		<h1>BIT CAMP</h1>
	</header>
	<section id= "index_section">
	
		<article>
	<table id="index_table">
		<tr>
		<td colspan="5">
		<form action="./burgerking/main.jsp">
			 <table id = "index_login_box">
					<tr>
						<td>
							<input id="index_input_id" type="text" placeholder="아이디">
						</td>
	   					 <td rowspan= "2">
	   					 	<input id = "index_login_btn" type="submit" value="로그인" 	>
	   					 </td>
					</tr>
					<tr>
						<td >
							<input id= "index_input_pass" type="text" placeholder="비밀번호">
						</td>
					</tr>
				
				</table>
			</form>
			<a id= "go_admin_link" type="button" href="#">
				관리자
			</a>
			<a id = "go_join_link" type="button" href="#">
				회원가입
			</a>						
			</td>
		 </tr>
	</table>		
	</article>
	</section>
	</div>
		<%@ include file="./commen/footer.jsp" %>
	</body>
</html>
			<!-- 	<p>
					햄버거 : ￦5,500 <br />
					콜라 : ￦1,000 <br />
					감자칩 : ￦1,000 <br />
					커피 : ￦900 <br />
				</p>
					<!--  
					table>tr*3>td*5
					ctrl + shift + /
					
				<form action="result.jsp">
					<input type="text" name="menu"  placeholder="메뉴" /><br />
					<input type="text" name="count" placeholder="수량" /><br />
					<input type="hidden" name="hamburger" value="5500" />
					<input type="hidden" name="coke" value="1000" />
					<input type="hidden" name="chip" value="1000" />
					<input type="hidden" name="coffee" value="900" />
					<input type="submit" value="전송"/>
					
				</form>
				-->