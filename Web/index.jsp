<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOOKTIFULMUSIC</title>
<link type="text/css" rel="stylesheet" href="resources/css/main.css">
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
	<%@ include file="views/common/header.jsp" %>
	<div class="content">
            <div id="section">
            <div id="imgbox">
                <ul id="m_img">
                    <li id="m_img1"><a onclick="SelectMGenre()"><img src="resources/images/music/10465994_20200723160043_1000.jpg"><p>#발라드</p></a></li>
                    <li id="m_img2"><a onclick="SelectMGenre()"><img src="resources/images/music/10470991_20200803154243_1000.jpg"><p>#댄스</p></a></li>
                    <li id="m_img3"><a onclick="SelectMGenre()"><img src="resources/images/music/10470338_20200731144644_1000.jpg"><p>#락</p></a></li>
                    <li id="m_img4"><a onclick="SelectMGenre()"><img src="resources/images/music/10470413_20200731153315_1000.jpg"><p>#힙합</p></a></li>
                    <li id="m_img5"><a onclick="SelectMGenre()"><img src="resources/images/music/10470011_20200731103732_1000.jpg"><p>#인디</p></a></li>
                </ul>
                <ul id="b_img">
                    <li id="b_img1"><a onclick="SelectBGenre()"><img src="resources/images/book/4310706.jpg"><p>#에세이</p></a></li>
                    <li id="b_img2"><a onclick="SelectBGenre()"><img src="resources/images/book/4253337.jpg"><p>#인문</p></a></li>
                    <li id="b_img3"><a onclick="SelectBGenre()"><img src="resources/images/book/4223642.jpg"><p>#자기계발</p></a></li>
                    <li id="b_img4"><a onclick="SelectBGenre()"><img src="resources/images/book/4352254.jpg"><p>#요리</p></a></li>
                    <li id="b_img5"><a onclick="SelectBGenre()"><img src="resources/images/book/4178687.jpg"><p>#건강</p></a></li>
                </ul>
            </div>
            <div id="content_book">
                <div id="book_new_info">
                    <p><b>이 달의 신간도서</b><hr width="760px"></p>
                    <div id="b_page1">
                    <ul id="new_book_list">
                        <li><a onclick="BookInfo()"><img src="resources/images/book/x9791189909178.jpg" alt="파이썬 알고리즘 인터뷰"><br><hr><p>파이썬 알고리즘 인터뷰</p></a></li>
                        <li><a onclick="BookInfo()"><img src="resources/images/book/x9788997924721.jpg" alt="데이터 시각화 입문"><br><hr><p>데이터 시각화 입문</p></a></li>
                        <li><a onclick="BookInfo()"><img src="resources/images/book/x9791162541517.jpg" alt="나는 오늘도 나를 믿는다"><br><hr><p>나는 오늘도 나를 믿는다</p></a></li>
                        <li><a onclick="BookInfo()"><img src="resources/images/book/x9788927811329.jpg" alt="지금 행복하고 싶어"><br><hr><p>지금 행복하고 싶어</p></a></li>
                    </ul>
                    <button id="next" onclick="b_nextSlide();">▷</button>
                    </div>
                    <div id="b_page2">
                    <button id="back" onclick="b_backSlide();">◁</button>
                    <ul id="new_book_list2">
                        <li><a onclick="BookInfo()"><img src="resources/images/book/4178687.jpg" alt="365 브레인 피트니스"><br><hr><p>365 브레인 피트니스</p></a></li>
                        <li><a onclick="BookInfo()"><img src="resources/images/book/4179316.jpg" alt="뷰티풀 퀘스천"><br><hr><p>뷰티풀 퀘스천</p></a></li>
                        <li><a onclick="BookInfo()"><img src="resources/images/book/4206685.jpg" alt="150년 하버드 글쓰기 비법"><br><hr><p>150년 하버드 글쓰기 비법</p></a></li>
                        <li><a onclick="BookInfo()"><img src="resources/images/book/4353855.jpg" alt="나는 모든 순간이 그립다"><br><hr><p>나는 모든 순간이 그립다</p></a></li>
                    </ul>
                    </div>
                </div>
                <div id="book_keyword_info">
                    <p><b>도서</b>많이 찾는 키워드<hr width="260px"></p>
                    <ul id="keyword_list">
                        <li>#<a onclick="SelectBGenre()">스릴러</a></li>
                        <li>#<a onclick="SelectBGenre()">코미디</a></li>
                        <li>#<a onclick="SelectBGenre()">로맨스</a></li>
                        <li>#<a onclick="SelectBGenre()">미스터리</a></li>
                        <li>#<a onclick="SelectBGenre()">추리</a></li>
                    </ul>
                </div>
            </div>
            <div id="content_music">
                <div id="music_new_info">
                    <p><b>이 달의 신곡</b><hr width="760px"></p>
                    <div id="m_page1">
                    <ul id="new_music_list">
                        <li><a onclick="MusicInfo()"><img src="resources/images/music/10465937_20200723150234_1000.jpg" alt="Dreaming_규현"><br><hr><p>Dreaming_규현</p></a></li>
                        <li><a onclick="MusicInfo()"><img src="resources/images/music/10465948_20200723151748_1000.jpg" alt="만찢남녀part2_신아린"><br><hr><p>만찢남녀part2_신아린</p></a></li>
                        <li><a onclick="MusicInfo()"><img src="resources/images/music/10465953_20200723152412_1000.jpg" alt="하타타(Hot-ta-ta)_윤다음"><br><hr><p>하타타(Hot-ta-ta)_윤다음</p></a></li>
                        <li><a onclick="MusicInfo()"><img src="resources/images/music/10465994_20200723160043_1000.jpg" alt="홀로_이하이"><br><hr><p>홀로_이하이</p></a></li>
                    </ul>
                    <button id="next" onclick="m_nextSlide();">▷</button>
                    </div>
                    <div id="m_page2">
                    <button id="back" onclick="m_backSlide();">◁</button>
                    <ul id="new_music_list">
                        <li><a onclick="MusicInfo()"><img src="resources/images/music/10470992_20200803154248_1000.jpg" alt="덤디덤디_(여자)아이들"><br><hr><p>덤디덤디_(여자)아이들</p></a></li>
                        <li><a onclick="MusicInfo()"><img src="resources/images/music/10467591_20200803160651_1000.jpg" alt="MAGENTA_강다니엘"><br><hr><p>MAGENTA_강다니엘</p></a></li>
                        <li><a onclick="MusicInfo()"><img src="resources/images/music/10470981_20200803153356_1000.jpg" alt="Come As Wind_제이화"><br><hr><p>Come As Wind_제이화</p></a></li>
                        <li><a onclick="MusicInfo()"><img src="resources/images/music/10470991_20200803154243_1000.jpg" alt="cool한 42_박문치"><br><hr><p>cool한 42_박문치</p></a></li>
                    </ul>
                    </div>
                </div>
                <div id="music_keyword_info">
                    <p><b>음원</b>많이 찾는 키워드<hr width="260px"></p>
                    <ul id="keyword_list">
                        <li>#<a onclick="SelectMGenre()">댄스</a></li>
                        <li>#<a onclick="SelectMGenre()">락</a></li>
                        <li>#<a onclick="SelectMGenre()">힙합</a></li>
                        <li>#<a onclick="SelectMGenre()">발라드</a></li>
                        <li>#<a onclick="SelectMGenre()">재즈</a></li>
                    </ul>
                </div>
            </div>
            </div>
        </div>
         <script>
         	function SelectMGenre(){
         		location.href="/BOOKTIFULMUSIC/selectMusicOne.do";
         	}
         	function SelectBGenre(){
         		location.href="/BOOKTIFULMUSIC/selectBookOne.do";
         	}
			function MusicInfo(){
				location.href="/BOOKTIFULMUSIC/mInfoView.do";
         	}
         	function BookInfo(){
         		location.href="/BOOKTIFULMUSIC/bInfoView.do";
         	}

	        function b_nextSlide(){
	            var book_new_info = document.getElementById('book_new_info');
	            var b_page1 = document.getElementById('b_page1');
	            var b_page2 = document.getElementById('b_page2');
	
	
	            b_page1.style.display = "none";
	            b_page2.style.display = "block";
	        }
	        function b_backSlide(){
	            var book_new_info = document.getElementById('book_new_info');
	            var b_page1 = document.getElementById('b_page1');
	            var b_page2 = document.getElementById('b_page2');
	            var music_new_info = document.getElementById('music_new_info');
	            var m_page1 = document.getElementById('m_page1');
	            var m_page2 = document.getElementById('m_page2');
	
	            b_page1.style.display = "block";
	            b_page2.style.display = "none";
	        }
	
	        function m_nextSlide(){
	            var music_new_info = document.getElementById('mus_new_info');
	            var m_page1 = document.getElementById('m_page1');
	            var m_page2 = document.getElementById('m_page2');
	
	            m_page1.style.display = "none";
	            m_page2.style.display = "block";
	        }
	        function m_backSlide(){
	            var music_new_info = document.getElementById('music_new_info');
	            var m_page1 = document.getElementById('m_page1');
	            var m_page2 = document.getElementById('m_page2');
	
	            m_page1.style.display = "block";
	            m_page2.style.display = "none";
	        }
	
	    </script>
        <%@ include file="/views/common/footer.jsp" %>
</body>
</html>