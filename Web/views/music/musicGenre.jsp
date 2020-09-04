<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.web.jsp.Member.model.vo.*" import="com.web.jsp.Music.model.vo.*" import="java.util.*" %>


<%@page import="com.web.jsp.book.model.vo.PageInfo"%>
<% ArrayList<Music> list = (ArrayList<Music>)request.getAttribute("list");
ArrayList<Music> umList = (ArrayList<Music>)request.getAttribute("umList");
ArrayList<Music> sList = (ArrayList<Music>)request.getAttribute("sList");

String genre = (String)request.getAttribute("genre");

PageInfo pi = (PageInfo)request.getAttribute("pi");
int listCount = pi.getListCount();
int currentPage = pi.getCurrentPage();
int maxPage = pi.getMaxPage();
int startPage = pi.getStartPage();
int endPage = pi.getEndPage(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MusicGenre</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/music_genre.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<%@ include file ="../common/header.jsp" %>
	<div class="content">
            <div id="section">
                <div id="sub_menu">
                    <ul>
                        <li><a onclick="MusicGenre()">장르</a></li>
                        <li><a onclick="MusicLike()">|&nbsp;좋아요</a></li>
                        <li><a onclick="MusicReview()">|&nbsp;리뷰</a></li>
                    </ul>
			    </div>
                <form action="">
                    <div id="checkbox">
                        <p id="info"><b>장르선택</b>원하시는 장르를 선택해주세요.</p>
                        <table id="check_genre">
                            <tr>
                                <td><input type="checkbox" id="gerne1" name="gerne1" class="check_list"><label for="gerne1">전체</label></td>
                                <td><input type="checkbox" id="gerne2" name="gerne2" class="check_list"><label for="gerne2">댄스</label></td>
                                <td><input type="checkbox" id="gerne3" name="gerne3" class="check_list"><label for="gerne3">발라드</label></td>
                                <td><input type="checkbox" id="gerne4" name="gerne4" class="check_list"><label for="gerne4">락</label></td>
                                <td><input type="checkbox" id="gerne5" name="gerne5" class="check_list"><label for="gerne5">힙합</label></td>
                                <td><input type="checkbox" id="gerne6" name="gerne6" class="check_list"><label for="gerne6">R&B</label></td>
                                <td><input type="checkbox" id="gerne7" name="gerne7" class="check_list"><label for="gerne7">Soul</label></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" id="gerne8" name="gerne8" class="check_list"><label for="gerne8">인디</label></td>
                                <td><input type="checkbox" id="gerne9" name="gerne9" class="check_list"><label for="gerne9">재즈</label></td>
                                <td><input type="checkbox" id="gerne10" name="gerne10" class="check_list"><label for="gerne10">트로트</label></td>
                                <td><input type="checkbox" id="gerne11" name="gerne11" class="check_list"><label for="gerne11">포크</label></td>
                                <td><input type="checkbox" id="gerne12" name="gerne12" class="check_list"><label for="gerne12">블루스</label></td>
                                <td><input type="checkbox" id="gerne13" name="gerne13" class="check_list"><label for="gerne13">OST</label></td>
                                <td><input type="checkbox" id="gerne14" name="gerne14" class="check_list"><label for="gerne14">POP</label></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" id="gerne15" name="gerne15" class="check_list"><label for="gerne15">월드뮤직</label></td>
                                <td><input type="checkbox" id="gerne16" name="gerne16" class="check_list"><label for="gerne16">뉴에이지</label></td>
                                <td><input type="checkbox" id="gerne17" name="gerne17" class="check_list"><label for="gerne17">클래식</label></td>
                                <td><input type="checkbox" id="gerne18" name="gerne18" class="check_list"><label for="gerne18">펑크</label></td>
                                <td><input type="checkbox" id="gerne19" name="gerne19" class="check_list"><label for="gerne19">디스코</label></td>
                                <td><input type="checkbox" id="gerne20" name="gerne20" class="check_list"><label for="gerne20">CCM</label></td>
                                <td><input type="checkbox" id="gerne21" name="gerne21" class="check_list"><label for="gerne21">EDM</label></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" id="gerne22" name="gerne22" class="check_list"><label for="gerne22">뮤직테라피</label></td>
                                <td><input type="checkbox" id="gerne23" name="gerne23" class="check_list"><label for="gerne23">캐롤</label></td>
                                <td><input type="checkbox" id="gerne24" name="gerne24" class="check_list"><label for="gerne24">종교음악</label></td>
                                <td><input type="checkbox" id="gerne25" name="gerne25" class="check_list"><label for="gerne25">어린이</label></td>
                                <td><input type="checkbox" id="gerne26" name="gerne26" class="check_list"><label for="gerne26">태교</label></td>
                                <td><input type="checkbox" id="gerne27" name="gerne27" class="check_list"><label for="gerne27">기타</label></td>
                            </tr>       
                        </table>
                    </div>
                </form>
                 <div id="genre_selected">
                    <div id="selected_list">
                        <p id="key">키워드</p>
                        <ul id="selected_genre" name="selected_genre">
                            <!-- <li><div>ggggggggg</div></li>
                            <li>gg</li> -->
                        </ul>
                        <div id="searchbtn">
                        <input type="submit" id="searchkey" name="searchkey" value="검색" onclick="searchGenre()">
                        </div>
                    </div>
                </div>


                
                <script>
	                function MusicGenre(){
	        			location.href="/BOOKTIFULMUSIC/mGenreList.mo";
	        		}
	                function MusicLike(){
	        			location.href="/BOOKTIFULMUSIC/mLikeList.mo";
	        		}
	                function MusicReview(){
	        			location.href="/BOOKTIFULMUSIC/mReviewList.mo";
	        		}
	                
	                function searchGenre(){
	                	var gArr = "";
	                	var genre=$('input[name=keyword]').each(function(){
							gArr += $(this).val()+",";
	                	});
						location.href="/BOOKTIFULMUSIC/mSearchGenre.mo?keyword="+gArr;
	                }    

                    $(function(){
                        var a = document.getElementsByClassName('check_list');
                        var b = document.getElementById('selected_genre');
                        
                        

                        $("input[type='checkbox']").on('click',function(){
                            var arr = [];
                            var result = [];
                            b.innerHTML = '';
                            for (i = 0; i < a.length; i++) {
                                if (a[i].checked) {
                                    a[i].parentNode.style.background = "rgb(227,233,255)";
                                    arr.push(a[i].labels[0].innerText);
                                    result = [...new Set(arr)];
                                    
                                }else{
                                    a[i].parentNode.style.background="white";
                                }
                            }
                            result.sort;
                            for(j=0;j<result.length;j++){
                                b.innerHTML += "<li><input type='button' id='keyword' name='keyword' value=" + result[j] + " style='border:0; background:none;' disable></li>";
                            }
                        });
                        
                    });

                    $(document).ready(function(){
                        var a = document.getElementsByName('genre');
            
                        $("input:checkbox").on('click', function () {
                            for (i = 0; i < a.length; i++) {
                                if (a[i].checked)  {
                                    a[i].parentNode.style.background = "rgb(227, 233, 255)";
                                }else {
                                    a[i].parentNode.style.background = "white";
                                }
                            }
                        }); 
                        
                    });

                </script>

               
                <div id="imgbox">
                        <ul id="listOne">
                        	<% if(m != null){ %>
	                        	<% for(Music mu : umList) { %>
	                            <li><a onclick="MusicInfo()"> 
	                            <img src="${pageContext.request.contextPath}/resources/images/music/<%=mu.getMusicImage()%>" >
	                                    <span>
	                                        <p style="color: black;"><%= mu.getMusicNm() %></p>
	                                        <p id="Artist" name="Artist" style="color: #757575;">
	                                        <b><%= mu.getMusicArtist() %></b>&nbsp;&nbsp;|&nbsp;&nbsp;
	                                        <b class="fas fa-heart">♥</b><%= mu.getLikeMusic() %></p>
	                                    </span>
	                            	</a>
	                            </li>
	                            <% } %>
                            <% } else if(sList != null) { %>
                            	<% for(Music mu : sList) { %>
		                            <li><a onclick="MusicInfo()"> 
		                            <img src="${pageContext.request.contextPath}/resources/images/music/<%=mu.getMusicImage()%>">
		                                    <span>
		                                        <p style="color: black;"><%= mu.getMusicNm() %></p>
		                                        <p id="Artist" name="Artist" style="color: #757575;">
		                                        <b><%= mu.getMusicArtist() %></b>&nbsp;&nbsp;|&nbsp;&nbsp;
		                                        <b class="fas fa-heart">♥</b><%= mu.getLikeMusic() %></p>
		                                    </span>
		                            	</a>
		                            </li>
                            	<% } %>
                            <% } else { %>
                            	<% for(Music mu : list) { %>
		                            <li><a onclick="MusicInfo()"> 
		                            <img src="${pageContext.request.contextPath}/resources/images/music/<%=mu.getMusicImage()%>">
		                                    <span>
		                                        <p style="color: black;"><%=mu.getMusicNm()%></p>
		                                        <p id="Artist" name="Artist" style="color: #757575;">
		                                        <b><%= mu.getMusicArtist() %></b>&nbsp;&nbsp;|&nbsp;&nbsp;
		                                        <b class="fas fa-heart">♥</b><%= mu.getLikeMusic() %></p>
		                                    </span>
		                            	</a>
		                            </li>
                            	<% } %>
                            <% } %>
                        </ul>
                     </div>
                     </div>   
                </div>
             <div id="total" style="margin-bottom:120px;">
             <div id="numberList">
					<%  if(currentPage <= 1){  %>
					<button disabled><</button>
					<%  }else{ %>
						<% if( m != null){ %>
							<button onclick="location.href='<%= request.getContextPath() %>/mUserGenre.mo?currentPage=<%=currentPage - 1 %>'"><</button>
						<% } else if(sList != null) { %>
							<button onclick="location.href='<%= request.getContextPath() %>/mSearchGenre.mo?currentPage=<%=currentPage - 1 %>'"><</button>
						<% } else { %>
							<button onclick="location.href='<%= request.getContextPath() %>/mGenreList.mo?currentPage=<%=currentPage - 1 %>'"><</button>
						<% } %>
					<%  } %>
					
					<% for(int p = startPage; p <= endPage; p++){
							if(p == currentPage){	
					%>
						<button disabled><%= p %></button>
					<%      }else{ %>
						<% if( m != null){ %>
							<button onclick="location.href='<%= request.getContextPath() %>/mUserGenre.mo?userId=<%= m.getUserId() %>&currentPage=<%= p %>'"><%=p %></button>
						<% } else if(sList != null) { %>
							<button onclick="location.href='<%= request.getContextPath() %>/mSearchGenre.mo?keyword=<%=genre%>&currentPage=<%= p %>'"><%=p %></button>
						<% } else { %>
							<button onclick="location.href='<%= request.getContextPath() %>/mGenreList.mo?currentPage=<%= p %>'"><%=p %></button>
						<% } %>
					<%      } %>
					<% } %>
						
					<%  if(currentPage >= maxPage){  %>
					<button disabled>></button>
					<%  }else{ %>
						<% if( m != null){ %>
							<button onclick="location.href='<%= request.getContextPath() %>/mUserGenre.mo?currentPage=<%=currentPage + 1 %>'">></button>
						<% } else if(sList != null) { %>
							<button onclick="location.href='<%= request.getContextPath() %>/mSearchGenre.mo?currentPage=<%=currentPage + 1 %>'">></button>
						<% } else { %>
							<button onclick="location.href='<%= request.getContextPath() %>/mGenreList.mo?currentPage=<%=currentPage + 1 %>'">></button>
						<%} %>
					<%  } %>
             </div>

             <div id="musicLike_search">
                 <select class="search_tool">
                     <option value="제목순">제목순</option>
                     <option value="별점순">별점순</option>
                     <option value="판매순">판매순</option>
                 </select> <input class="searchinput" type="search" placeholder="검색어를 입력해주세요">
                 <input class="search_tool" type="button" value="검색">
             </div>
        </div>
        <script>
        	function MusicInfo(){
        		location.href="/BOOKTIFULMUSIC/mSelectOne.mo";
        	}
        </script>
        <%@ include file="../common/footer.jsp" %>
</body>
</html>