<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="com.ict.db.VO"%>
<%@page import="java.util.List"%>
<%@page import="com.ict.db.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
request.setCharacterEncoding("utf-8");
VO vo = new VO();
vo.setName(request.getParameter("name"));
vo.setPw(request.getParameter("pw"));
vo.setTitle(request.getParameter("title"));
vo.setEmail(request.getParameter("email"));
vo.setText(request.getParameter("text"));

WebApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(application);
DAO dao = (DAO) context.getBean("dao");
int result = dao.getInsert(vo);
if(result>0){
	response.sendRedirect("index.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>