<%@page import="com.ict.db.VO"%>
<%@page import="com.ict.db.DAO"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보</title>
<style type="text/css">
fieldset {
	width: 700px;
	margin: auto;
}

div {
	text-align: center;
	margin: 100px;
	auto;
}

table{
	width: 700px;
}

table, th, td{
	border: 1px solid black;
	border-collapse: collapse;
}
th, td {
	padding: 10px;
}
.tt{
	width:200px;
	background-color: skyblue;
}
input {
	padding: 10px;
}
</style>
<script type="text/javascript">

	function delete_ok(f) {
		if ("${param.pw}" == f.pw2.value) {
			var chk = confirm("real?");
			if (chk) {
				f.action = "delete_ok.jsp"
				f.submit();
			}else{
				history.go(-1);
			}
		}else{
			alert("wrong pw");
			f.pw.value="";
			f.pw.focus();
			return;
		}
	}
	
</script>
</head>
<body>
	<div>
		<form method="post">
			<fieldset>
				<legend>삭제</legend>
					<table>
						<tr>
						<td class="tt">pw</td>
						<td><input type="password" name="pw2" placeholder="pw"></td>
						</tr>
						<tr>
						<td colspan="2">
						<input type="button" value="삭제" onclick="delete_ok(this.form)">
						<input type="hidden" name="id" value="${param.id }">
						<input type="hidden" name="pw" value="${param.pw }">
						</td>
						</tr>
					</table>
			</fieldset>
		</form>
	</div>
</body>
</html>