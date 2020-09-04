<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.web.jsp.Music.model.vo.*"%>

   <% Music mui = (Music)request.getAttribute("Music"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MusicDetail</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/m_info.css?"/>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>

<%@ include file="../common/header.jsp" %>

        <div id="content">        
            <div id="info1">
                <p id="p1">ALBUM INFORMATION</p>
                <img src="${pageContext.request.contextPath}/resources/images/music/<%=mui.getMusicImage()%>" id="info_img1">
                <ul id="m_title">
                    
                    
                    <li><%=mui.getMusicNm() %></li>
                    <li><%=mui.getMusicArtist() %></li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;</li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;</li>
                    <li><a># <%=mui.getMusicGenre() %></a></li>
                    <li><b id="heart">♥</b><%= mui.getLikeMusic() %> </li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<b id="re">review</b> <%= mui.getReviewAlbum() %></li>
                </ul>
                <dl id="m_btn">
                    <button type="button" id="likebtn" name="likebtn">♥</button>
                </dl>
            </div>
            <div id="info2">
                <p id="p2">Album Detail</p>
                <div id="albuminfo">
                    <img src="${pageContext.request.contextPath}/resources/images/music/"> <!-- 이미지 있는 경우만 사용 -->
                    <div id="a_detail">
                        <p>이 앨범은 규현의 n집 정규앨범으로 감성적인 발라드 블라블라</p>
                    </div>
                </div>
                <div id="m_detail">
                    <p id="p3">Album List</p>
                    <div id="m_list">
                        <ul id="head">
                            <li>번호</li>
                            <li>곡정보</li>
                            <li>좋아요</li>
                            <li>리뷰</li>
                            <li>재생</li>
                        </ul>
                        <ul id="list">
                            <li>1</li>
                            <li><b>Dreaming</b><br>규현(KYUHYUN)</li>
                            <li><b>♥</b>&nbsp;&nbsp;4,204</li>
                            <li>2,450</li>
                            <li><button id="mplay" onclick="mplaybtn()">▶</button></li>
                        </ul>
                        <ul id="list">
                            <li>2</li>
                            <li><b>Dreaming</b><br>규현(KYUHYUN)</li>
                            <li><b>♥</b>&nbsp;&nbsp;4,204</li>
                            <li>2,450</li>
                            <li><button id="mplay" onclick="mplaybtn()">▶</button></li>
                        </ul>
                        <ul id="list">
                            <li>3</li>
                            <li><b>Dreaming</b><br>규현(KYUHYUN)</li>
                            <li><b>♥</b>&nbsp;&nbsp;4,204</li>
                            <li>2,450</li>
                            <li><button id="mplay" onclick="mplaybtn()">▶</button></li>
                        </ul>
                        

                    </div>
                </div>
            </div>
            <div id="reviews">
                <p>Reviews</p>
                <div id="add">
                    <ul>
                        <li><img src="../resource/images/icon/ICON.png"></li>
                        <li><b>USERID</b><br><p>감미롭다,,,</p></b>
                    </ul>
                    <ul>
                        <li><img src="../resource/images/icon/ICON.png"></li>
                        <li><b>USERID</b><br><p>낄낄</p></li>
                    </ul>
                    <ul>
                        <li><img src="../resource/images/icon/ICON.png"></li>
                        <li><b>USERID</b><br><p>감미롭다,,,</p></b>
                    </ul>
                    <ul>
                        <li><img src="../resource/images/icon/ICON.png"></li>
                        <li><b>USERID</b><br><p>낄낄</p></li>
                    </ul> <ul>
                        <li><img src="../resource/images/icon/ICON.png"></li>
                        <li><b>USERID</b><br><p>감미롭다,,,</p></b>
                    </ul>
                    <ul>
                        <li><img src="../resource/images/icon/ICON.png"></li>
                        <li><b>USERID</b><br><p>낄낄</p></li>
                    </ul> <ul>
                        <li><img src="../resource/images/icon/ICON.png"></li>
                        <li><b>USERID</b><br><p>감미롭다,,,</p></b>
                    </ul>
                    <ul>
                        <li><img src="../resource/images/icon/ICON.png"></li>
                        <li><b>USERID</b><br><p>낄낄</p></li>
                    </ul> <ul>
                        <li><img src="../resource/images/icon/ICON.png"></li>
                        <li><b>USERID</b><br><p>감미롭다,,,</p></b>
                    </ul>
                    <ul>
                        <li><img src="../resource/images/icon/ICON.png"></li>
                        <li><b>USERID</b><br><p>낄낄</p></li>
                    </ul> <ul>
                        <li><img src="../resource/images/icon/ICON.png"></li>
                        <li><b>USERID</b><br><p>감미롭다,,,</p></b>
                    </ul>
                    <ul>
                        <li><img src="../resource/images/icon/ICON.png"></li>
                        <li><b>USERID</b><br><p>낄낄</p></li>
                    </ul> <ul>
                        <li><img src="../resource/images/icon/ICON.png"></li>
                        <li><b>USERID</b><br><p>감미롭다,,,</p></b>
                    </ul>
                    <ul>
                        <li><img src="../resource/images/icon/ICON.png"></li>
                        <li><b>USERID</b><br><p>낄낄</p></li>
                    </ul> <ul>
                        <li><img src="../resource/images/icon/ICON.png"></li>
                        <li><b>USERID</b><br><p>감미롭다,,,</p></b>
                    </ul>
                    <ul>
                        <li><img src="../resource/images/icon/ICON.png"></li>
                        <li><b>USERID</b><br><p>낄낄</p></li>
                    </ul> <ul>
                        <li><img src="../resource/images/icon/ICON.png"></li>
                        <li><b>USERID</b><br><p>감미롭다,,,</p></b>
                    </ul>
                    <ul>
                        <li><img src="../resource/images/icon/ICON.png"></li>
                        <li><b>USERID</b><br><p>낄낄</p></li>
                    </ul> <ul>
                        <li><img src="../resource/images/icon/ICON.png"></li>
                        <li><b>USERID</b><br><p>감미롭다,,,</p></b>
                    </ul>
                    <ul>
                        <li><img src="../resource/images/icon/ICON.png"></li>
                        <li><b>USERID</b><br><p>낄낄</p></li>
                    </ul>
                </div>
                
                
                <div id="user_review">
                    <img src="../resource/images/icon/ICON.png">
                    <textarea id="review_text" placeholder="100자내로 리뷰를 작성해주세요." cols="80" rows="5"></textarea>
                    <input type="submit" id="review_btn" name="review_btn" value="등록">
                </div>
            </div>
        </div>
        
         <%@ include file="/views/common/footer.jsp" %>
         


</body>
</html>