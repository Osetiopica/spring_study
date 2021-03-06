<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="resources/images/icon.png">
<title>월드폰</title>
<meta charset="UTF-8">
<style type="text/css">
	article a{
		text-decoration: none;
		color: black;
	}
	article a:hover{
		background-color: #ddd;
	}
	.wrap {
		margin: 0px auto;
		width: 1000px;
		text-align: center;
		position: relative;
	}
	.clear{
		content: "";
  		clear: both;
  		display: table;
	}
	article{
		width: 1000px;
		text-align: left;
		margin: 10px 0;
	}
	article table td{
		padding: 8px 5px;
	}
	.join_border select, input{
		padding: 10px;
	}
	.join_border{
		width: 600px;
		margin-left: 260px;
	}
	.join_move_btn{
		text-align: center;
	}
	.join_move_btn .kick{
		background-color: white;
		height: 40px;
		width: 100px;
	}
	.join_move_btn .next{
		background-color: hotpink;
		height: 40px;
		width: 100px;
	}
	.alter_title{
		margin-left: 200px;
	}
</style>
<script type="text/javascript">
	function mail() {
		var tmp = document.getElementById("mail_select").value;
		if(tmp == "직접 입력 하기"){
			tmp = "";
			document.getElementById("mail_host").focus();
		}
		document.getElementById("mail_host").value = tmp;
	}
	function mypage_go() {
		alert("회원정보 수정 완료");
		location.href="admin_members_list.do";
	}
	function customer_kick() {
		var a = confirm("해당 회원을 삭제하겠습니까?");
		if(a){
			location.href="admin_members_list.do";
		}
	}
	function admin_go(t) {
		location.href=t.value+".do";
	}
</script>
</head>
<body>
<div class="wrap">
	<%@include file="top.jsp" %>
	<%@include file="nav.jsp" %>

<article>
	<div><a href="main.do">HOME</a> >
		<a href="admin_main.do">관리자</a> >
		<select onchange="admin_go(this)" class="admin_link">
			<option value="admin_members_list" selected>회원 관리</option>
			<option value="admin_products_list">상품 관리</option>
			<option value="admin_history">판매 내역</option>
			<option value="admin_other">기타</option>
		</select>
	</div>
	<br>
	<h2 class="alter_title">회원정보 보기</h2>
	<div class="join_border">
			<table class="tb">
				<tr><td>아이디</td><td><input type="text" style="width:370px;" value="${mvo.id }" readonly></td></tr>
				<tr><td>이름</td><td><input type="text" style="width:370px;" value="${mvo.name }" required></td></tr>
				<tr><td>이메일</td><td><input type="text" style="width:370px;" value="${mvo.email }" required></td></tr>
				<tr><td>연락처</td><td><input type="text" style="width:370px;" value="${mvo.phone }" required></td></tr>
				<tr><td>주소</td><td>
					<input type="text" style="width:100px;" value="${mvo.addr_1st }" readonly>
					<input type="button" value="주소 검색" style="background-color: white;">
				</td></tr>
				<tr><td></td><td><input type="text" style="width:370px;" value="${mvo.addr_2nd }" required></td></tr>
				<tr><td>상세주소</td><td><input type="text" style="width:370px;" value="${mvo.addr_3rd }" required></td></tr>
			</table>
			<br><br>

	</div>
			<div class="join_move_btn">
				<input type="button" class="kick" value="회원 삭제" onclick="customer_kick()">
				<input type="button" class="next" value="수정 완료" onclick="mypage_go()">
			</div>
</article>

	<%@include file="footer.jsp" %>
</div>
</body>
</html>
