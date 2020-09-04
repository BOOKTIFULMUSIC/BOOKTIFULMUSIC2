<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css/footer.css" />
</head>
<body>
	<div class="footer">
            <ul id="footnav">
                <li><a onclick="goNotice()">공지사항</a>|</li>
                <li><a onclick="goClause()">이용약관</a>|</li>
                <li><a>개인정보처리방침</a>|</li>
                <li><a>운영정책</a></li>
            </ul>
            <br>
            <hr width="1400px">
            <p>회사명 : 북티풀뮤직, 소재지 : 서울시 강남구 역삼동, 내용내용내용내용내용내용내용내용<br>내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용</p><p>copyright ⓒ 2020 BOOKTIFUL MUSIC All Rights Reserved</p>
    </div>
    <script>
    	function goNotice(){
    		location.href="/BOOKTIFULMUSIC/nSelectList.no?ntype=N"; 
		}
    	function goClause(){
			location.href="/BOOKTIFULMUSIC/clausePage.jsp";
		}
    </script>
</body>
</html>