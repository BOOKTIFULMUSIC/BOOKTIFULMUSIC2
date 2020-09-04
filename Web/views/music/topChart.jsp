<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="com.web.jsp.Music.model.vo.*" %>
  
<% ArrayList<Music> list = (ArrayList<Music>)request.getAttribute("list"); 
String mui = (String)request.getAttribute("title"); 
%>    
    
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Music_Chart</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/music_chart_content.css" />
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
     <%@ include file="../common/header.jsp" %>
    <div class="content">
        <div class="section">
            <div id="sub_menu">
            <ul id="music_chart_navi">
                <li><a onclick="music_chart()">음원차트TOP100</a></li>
                <li><a href="../views/music/topChart.jsp">|&nbsp;전체</a></li>
                <li><a href="../views/music/topChart.jsp">|&nbsp;국내</a></li>
                <li><a href="../views/music/topChart.jsp">|&nbsp;해외</a></li>
            </ul>
            </div>
            <table id="music_chart_info">
                <tr>
                    <th>순위</th>
                    <th>곡 정보</th>
                    <th>♥좋아요</th>
                    <th>곡 리뷰</th>
                    <th>듣기</th>
                </tr>
            </table>
            <!-- 음원차트TOP100 순서 -->
            <table>
            
                <tr id="music_chart_TOP100">
                
               <% for(Music mu : list){ %>              	 
                    <td><%= mu.getMusicNo() %></td>
                    <td><a onclick="music_detail()" style= "cousor:pointer;"><img src="${pageContext.request.contextPath}/resources/images/music/<%=mu.getMusicImage()%>" alt=""></a></td>
                    <td>
                        <ul>
                            <li style="font-size: 14pt; color: black;"><a onclick="music_detail()" id="title"><%= mu.getMusicNm()%></a></li>
                            <li style="font-size: 14pt; color: lightgray;" onclick="music_detail()"><%= mu.getMusicArtist()%></li>
                        </ul>
                    </td>
                    <td><label onclick="like(this);" id="heart">♥</label><label><%= mu.getLikeMusic()%></label></td>
                    <td><a href="리뷰창"><%= mu.getReviewAlbum() %></a></td>
                    <td><label onclick="streaming(this);"><%= '▶' %></label></td>
                </tr>
                <% } %>
                
                
               
            </table>
        </div>
    </div>
    
	</div>     
     <%@ include file="/views/common/footer.jsp" %>

<script>

function music_chart(){
   location.href="/BOOKTIFULMUSIC/mTop100.mo";
}

function music_detail(){
	var title = $('#title').text();
	console.log(title);
   location.href="<%=request.getContextPath()%>/mSelectOne.mo?musicNm="+title;
}
</script>

</body>
</html>