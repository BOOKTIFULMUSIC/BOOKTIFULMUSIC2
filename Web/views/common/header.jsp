<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.web.jsp.Member.model.vo.*"%>
<%  Member m = (Member)session.getAttribute("member"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
</head>
<body>
	<div class="header">
            <div id="logo">
                <p onclick="goHome()">BOOKTIFUL<br>MUSIC</p>
            </div>
            <div id="search">
                <input type="search" id="searchbar">
                <button type="submit" id="search_btn" onclick="all_search()">검색</button>
            </div>
        </div>
        <div class="userbar">
        <% if( m == null ) { %>
        <div id="loginForm">
            <ul id="login_join">
                <li><a onclick="login()">로그인</a></li>
                <li><a onclick="memberJoin()">회원가입</a></li>
            </ul>
        </div>
        <% } else if(m.getUserId().equals("admin")) { %>
        	<div id="admin">
                <p><b><%= m.getUserName() %></b>님 반갑습니다.</p>
                <ul id="admin_menu">
                    <li><a onclick="adminPage()">관리</a></li>
                    <li><a onclick="logout()">로그아웃</a></li>
                </ul>
            </div>
        <% } else { %>
        	<div id="user_info">
                <p>∂∇∂/ <b><%= m.getUserId() %></b>님 반갑습니다.</p>
                <ul id="user_menu">
                    <li><a onclick="goMyPage1()">마이페이지</a></li>
                    <li><a onclick="logout()">로그아웃</a></li>
                </ul>
            </div> 
        <% } %>
        </div>
        <script>
        	function login(){
        		location.href="/BOOKTIFULMUSIC/views/member/loginForm.jsp";
        	}
        	function logout(){
        		location.href="/BOOKTIFULMUSIC/logout.me";
        	}
        	function memberJoin(){
        		location.href="/BOOKTIFULMUSIC/views/member/memberJoinForm.jsp";
        	}
        	function goMyPage1(){
        		location.href="/BOOKTIFULMUSIC/views/member/MyPage1.jsp";
        	}
        	function adminPage(){
        		location.href="/BOOKTIFULMUSIC/nSelectAll.ano";
        	}
        </script>
        
        <div class="navibar_wrapper">
            <div class="navibar">
                <ul id="nav">
                    <li><a onclick="goHome()"><b>Home</b></a></li>
                    <li><a onclick="Book()"><b>도서</b></a>
                        <ul>
                            <li><a onclick="Book()">베스트셀러</a></li>
                            <% if(m != null) {%>
                            <li><a onclick="BookUserGenre()"><input type="hidden" id="userId" name="userId" value="<%= m.getUserId() %>">내 취향 도서찾기</a></li>
                            <% } else { %>
                            <li><a onclick="BookGenre()">내 취향 도서찾기</a></li>
                            <% } %>
                        </ul>
                    </li>
                    <li><a onclick="Music()"><b>음원</b></a>
                        <ul>
                            <li><a onclick="Music()">TOP100</a></li>
                            <li><a onclick="MusicGenre()">내 취향 노래찾기</a></li>
                        </ul>
                    </li>
                    <li><a onclick="goNotice()"><b>고객센터</b></a></li>
                </ul>
            </div>
	</div>
	<script>
		function all_search(){
			location.href="/BOOKTIFULMUSIC/allsearchList.do";
		}
		function goHome(){
			location.href="/BOOKTIFULMUSIC/index.jsp";
		}
		function Book(){
			location.href="/BOOKTIFULMUSIC/bTop100.bo";
		}
		function BookGenre(){
			location.href="/BOOKTIFULMUSIC/bGenreList.bo";
		}
		function BookUserGenre(){
			var userId = $('#userId').val();
			location.href="/BOOKTIFULMUSIC/bUserGenre.bo?userId="+userId;
		}
		function Music(){
			location.href="/BOOKTIFULMUSIC/mTop100.mo";
		}
		function MusicGenre(){
			location.href="/BOOKTIFULMUSIC/mGenreList.mo";
		}
		function goNotice(){
			location.href="/BOOKTIFULMUSIC/nSelectList.no?ntype=N";
		}
	</script>
</body>
</html>