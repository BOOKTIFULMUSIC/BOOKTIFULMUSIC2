<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%
	String msg = (String)request.getAttribute("msg");
	Exception e = (Exception)request.getAttribute("exception");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Service ERROR</title>
<style>
	body{ margin:0;}
	#box{ margin-top:120px; height:800px;}
	#page_logo{ color: rgb(227, 233, 255); margin-top:145px; text-align: center; font-size: 40px;}
    #error{ font-weight: 600; font-size:30px; text-align:center;}
    #error_m{ color: rgb(150, 150, 150); text-align: center; font-size: 20px; margin-bottom: 60px;}
</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	<div id="box">
	<p id="page_logo"><b>BOOKTIFUL<br>MUSIC</b></p>
	<p id="error">ERROR : <%= request.getAttribute("msg") %></p>
    <p id="error_m">죄송합니다. 서비스 수행 중 에러가 발생하였습니다.<br> 전송 값을 확인해보시고, 이상이 없을 시 담당자에게 연락하시기 바랍니다.</p>
	</div>
	<%@ include file="../common/footer.jsp" %>
</body>
</html>