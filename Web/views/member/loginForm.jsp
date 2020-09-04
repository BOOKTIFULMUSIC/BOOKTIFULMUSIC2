<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOOKTIFULMUSIC 로그인</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css" />
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	<div class="content-wrapper">
        <div id="content">
            <p id="page_logo"><b>BOOKTIFUL<br>MUSIC</b></p>
            <p id="greeting">안녕하세요. <b>BOOKTIFUL MUSIC</b>으로 취향을 찾아보세요.</p>
            <form id="login" method="post" action="/BOOKTIFULMUSIC/login.me">
                <div id="id_pwd">
                    <input type="text" id="userId" name="userId" placeholder=" ID">
                    <input type="password" id="userPwd" name="userPwd" placeholder=" PASSWORD">
                </div>
                <div id="btn"><button id="login_btn" onclick="loginBtn();">LOGIN</button></div>
            </form>
            <div id="mini_menu">
                <ul id="find_join">
                    <li><a onclick="find_id()">아이디 / 비밀번호 찾기</a></li>
                    <li>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="memberJoin()">회원가입</a></li>
                </ul>
            </div>
            <div id="mini-footer">
                <ul id="footer_menu">
                    <li><a href="../view/Clause.html">이용약관</a></li>
                    <li>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">개인정보처리방침</a></li>
                    <li>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">운영정책</a></li>
                    <li>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">고객센터</a></li>
                </ul>
                <p>copyright ⓒ 2020 BOOKTIFUL MUSIC All Rights Reserved</p>
            </div>
        </div>
    </div>
    <script>
    	function loginBtn(){
    		$("#login").submit();
    	}
   		function find_id(){
   			location.href="/BOOKTIFULMUSIC/views/member/find_id_pwd.jsp";
   		}
   		function memberJoin(){
   			location.href="/BOOKTIFULMUSIC/views/member/memberJoinForm.jsp"
   		}
    </script>
</body>
</html>