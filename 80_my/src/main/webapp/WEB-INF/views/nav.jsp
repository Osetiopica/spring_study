<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Other Phone</title>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
<style>
* {
	box-sizing: border-box;
	/* outline-style: solid;
	outline-color: lightpink; */
}

a {
	text-decoration: none;
}

nav {
  margin: 10px 0;
  width: 1000px;
}

nav ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

nav li {
  float: left;
}

.dropbtn {
  display: inline-block;
  color: white;
  text-decoration: none;
  width: 200px;
  padding: 10px 0px;
}

li a:hover, .dropdown:hover .dropbtn {
  background-color: hotpink;
}

li.dropdown {
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* .dropdown-content a {
  color: black;
  padding: 12px 0px;
  text-decoration: none;
  display: inline-block;
  position: absolute;
} */

.dropdown-content a:hover {
background-color: hotpink;
}

.dropdown:hover .dropdown-content {
  display: block;
}

.all-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  width: 1000px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
  text-align: left;
}

.condiv {
  color: black;
  padding: 6px 10px;
  text-decoration: none;
  text-align: left;
  width: 200px;
  float: left;
}

.all-content .condiv {
  color: black;
  padding: 6px 10px;
  text-decoration: none;
  text-align: left;
  width: 180px;
  float: left;
}

.space_short {
  color: black;
  padding: 6px 10px;
  text-decoration: none;
  text-align: left;
  width: 100px;
  float: left;
}

#wrap{
	position: relative;
	min-height: 1500px;
	width:100%; 
	text-align: center;
}

.space a{
	height:0px;
	padding:0 0 0 0;
}

.space {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  width: 200px;
}

</style>
<script>
var c=2;
function show_all(sa) {
	if(c%2==0){
		document.getElementsByClassName('all-content')[0].style.display = 'block';
	}else{
		document.getElementsByClassName('all-content')[0].style.display = 'none';
	}
	c++;
}
</script>
</head>
<body>
<nav>
<ul>
  <li>
    <a onclick="show_all(this);" href="javascript:void(0)" class="dropbtn">?????? ??????</a>
    <div class="all-content">
      <div class="space_short">??????</div><div class="condiv">&nbsp;</div><a href="product_list.jsp" class="condiv">?????? ????????????</a><div class="condiv">&nbsp;</div><a class="condiv">?????? ?????????</a><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">?????? ????????? S?????????</a><div class="condiv">&nbsp;</div><a class="condiv" href="#">??????</a><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">?????? ????????? A?????????</a><div class="condiv">&nbsp;</div><a class="condiv" href="#">??????</a><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">??????</a><div class="condiv">&nbsp;</div><a class="condiv" href="#">?????????</a><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">?????????</a><div class="condiv">&nbsp;</div><a class="condiv" href="#">??????</a><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">?????????</a><div class="condiv">&nbsp;</div><a class="condiv" href="#">?????????</a><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">??????</a><div class="condiv">&nbsp;</div><a class="condiv" href="#">??????</a><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">??????</a><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">????????????</a><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">??????</a><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">HTC</a><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">ASUS</a><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">??????</a><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">??????</a><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">ZTE</a><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><a class="condiv" href="#">??????</a><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">????????????</div><div class="condiv">&nbsp;</div><a class="condiv" href="service_notice.jsp">????????????</a><a class="condiv" href="service_faq.jsp">?????? ?????? ??????</a><a class="condiv" href="service_question.jsp">1:1 ??????</a><div class="condiv">&nbsp;</div><br>
	  <div class="space_short">??????</div><a class="condiv" href="login.jsp">?????????</a><a class="condiv" href="mypage.jsp">???????????????</a><a class="condiv" href="mypage_history.jsp">????????????</a><a class="condiv" href="mypage_cart.jsp">????????????</a><a class="condiv" href="join_terms.jsp">????????????</a><br>
    </div>
  </li>
  <li class="dropdown">
    <a href="product_list.jsp" class="dropbtn">?????? ????????????</a>
    <div class="dropdown-content">
      <a class="condiv" href="#">?????? ????????? S?????????</a><br>
      <a class="condiv" href="#">?????? ????????? A?????????</a><br>
      <a class="condiv" href="#">??????</a><br>
      <a class="condiv" href="#">?????????</a><br>
      <a class="condiv" href="#">?????????</a><br>
      <a class="condiv" href="#">??????</a><br>
      <a class="condiv" href="#">??????</a><br>
      <a class="condiv" href="#">????????????</a><br>
      <a class="condiv" href="#">??????</a><br>
      <a class="condiv" href="#">HTC</a><br>
      <a class="condiv" href="#">ASUS</a><br>
      <a class="condiv" href="#">??????</a><br>
      <a class="condiv" href="#">??????</a><br>
      <a class="condiv" href="#">ZTE</a><br>
      <a class="condiv" href="#">??????</a>
    </div>
  </li>
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">?????? ?????????</a>
    <div class="dropdown-content">
    <a class="condiv" href="#">??????</a><br>
    <a class="condiv" href="#">??????</a><br>
    <a class="condiv" href="#">?????????</a><br>
    <a class="condiv" href="#">??????</a><br>
    <a class="condiv" href="#">?????????</a><br>
    <a class="condiv" href="#">??????</a>
    </div>
  </li>
  <li class="space">
    <a href="javascript:void(0)"></a>
  </li><li class="dropdown">
    <a href="service_notice.jsp" class="dropbtn">????????????</a>
    <div class="dropdown-content">
    <a class="condiv" href="service_notice.jsp">????????????</a><br>
    <a class="condiv" href="service_faq.jsp">?????? ?????? ??????</a><br>
    <a class="condiv" href="service_question.jsp">1:1 ??????</a>
    </div>
  </li>
</ul>
</nav>
</body>
</html>
