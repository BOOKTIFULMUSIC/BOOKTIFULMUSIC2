<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.web.jsp.Member.model.vo.*" import="com.web.jsp.book.model.vo.*" import="java.util.*" %>


<%@page import="com.web.jsp.book.model.vo.PageInfo"%>
<% ArrayList<Book> list = (ArrayList<Book>)request.getAttribute("list");
ArrayList<Book> ubList = (ArrayList<Book>)request.getAttribute("ubList");
ArrayList<Book> sList = (ArrayList<Book>)request.getAttribute("sList");

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
	<title>BOOKTIFULMUSIC</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/book_genre.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	<div class="content">
            <div id="section">
                <div id="sub_menu">
                    <ul>
                        <li><a onclick="BookGenre()">장르</a></li>
                        <li><a onclick="BookLike()">|&nbsp;좋아요</a></li>
                        <li><a onclick="BookReview()">|&nbsp;리뷰</a></li>
                    </ul>
			    </div>
                <form action="">
                    <div id="checkbox">
                        <p id="info"><b>장르선택</b>원하시는 장르를 선택해주세요.</p>
                        <table id="check_genre">
                            <tr>
                                <td><input type="checkbox" id="gerne1" name="gerne1" class="check_list"><label id="inputGenre" for="gerne1">전체</label></td>
                                <td><input type="checkbox" id="gerne2" name="gerne2" class="check_list"><label id="inputGenre" for="gerne2">소설</label></td>
                                <td><input type="checkbox" id="gerne3" name="gerne3" class="check_list"><label id="inputGenre" for="gerne3">에세이</label></td>
                                <td><input type="checkbox" id="gerne4" name="gerne4" class="check_list"><label id="inputGenre" for="gerne4">국내소설</label></td>
                                <td><input type="checkbox" id="gerne5" name="gerne5" class="check_list"><label id="inputGenre" for="gerne5">국외소설</label></td>
                                <td><input type="checkbox" id="gerne6" name="gerne6" class="check_list"><label id="inputGenre" for="gerne6">시</label></td>
                                <td><input type="checkbox" id="gerne7" name="gerne7" class="check_list"><label id="inputGenre" for="gerne7">어린이</label></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" id="gerne8" name="gerne8" class="check_list"><label id="inputGenre" for="gerne8">가정생활</label></td>
                                <td><input type="checkbox" id="gerne9" name="gerne9" class="check_list"><label id="inputGenre" for="gerne9">인문</label></td>
                                <td><input type="checkbox" id="gerne10" name="gerne10" class="check_list"><label id="inputGenre" for="gerne10">정치/사회</label></td>
                                <td><input type="checkbox" id="gerne11" name="gerne11" class="check_list"><label id="inputGenre" for="gerne11">경제/경영</label></td>
                                <td><input type="checkbox" id="gerne12" name="gerne12" class="check_list"><label id="inputGenre" for="gerne12">건강</label></td>
                                <td><input type="checkbox" id="gerne13" name="gerne13" class="check_list"><label id="inputGenre" for="gerne13">교양과학</label></td>
                                <td><input type="checkbox" id="gerne14" name="gerne14" class="check_list"><label id="inputGenre" for="gerne14">외국어</label></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" id="gerne15" name="gerne15" class="check_list"><label id="inputGenre" for="gerne15">예술</label></td>
                                <td><input type="checkbox" id="gerne16" name="gerne16" class="check_list"><label id="inputGenre" for="gerne16">취미/스포츠</label></td>
                                <td><input type="checkbox" id="gerne17" name="gerne17" class="check_list"><label id="inputGenre" for="gerne17">TOEIC/TOEFL</label></td>
                                <td><input type="checkbox" id="gerne18" name="gerne18" class="check_list"><label id="inputGenre" for="gerne18">유아</label></td>
                                <td><input type="checkbox" id="gerne19" name="gerne19" class="check_list"><label id="inputGenre" for="gerne19">종교</label></td>
                                <td><input type="checkbox" id="gerne20" name="gerne20" class="check_list"><label id="inputGenre" for="gerne20">아동만화</label></td>
                                <td><input type="checkbox" id="gerne21" name="gerne21" class="check_list"><label id="inputGenre" for="gerne21">요리/와인</label></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" id="gerne22" name="gerne22" class="check_list"><label id="inputGenre" for="gerne22">역사/문화</label></td>
                                <td><input type="checkbox" id="gerne23" name="gerne23" class="check_list"><label id="inputGenre" for="gerne23">자기계발</label></td>
                                <td><input type="checkbox" id="gerne24" name="gerne24" class="check_list"><label id="inputGenre" for="gerne24">여행</label></td>
                                <td><input type="checkbox" id="gerne25" name="gerne25" class="check_list"><label id="inputGenre" for="gerne25">기술/컴퓨터</label></td>
                                <td><input type="checkbox" id="gerne26" name="gerne26" class="check_list"><label id="inputGenre" for="gerne26">만화</label></td>
                                <td><input type="checkbox" id="gerne27" name="gerne27" class="check_list"><label id="inputGenre" for="gerne27">장르소설</label></td>
                            </tr>       
                        </table>
                    </div>
                </form>
				 <div id="genre_selected">
                    <div id="selected_list">
                        <p id="key">키워드</p>
                        <ul id="selected_genre" name="selected_genre">
                            
                        </ul>
                        <div id="searchbtn">
                        <input type="button" id="searchkey" name="searchkey" onclick="searchGenre()" value="검색">
                        </div>
                    </div>
                </div>
                <!-- 체크박스 기능 script -->
                <script>
	                function BookGenre(){
	        			location.href="/BOOKTIFULMUSIC/bGenreList.bo";
	        		}
	                function BookLike(){
	        			location.href="/BOOKTIFULMUSIC/bLikeList.bo";
	        		}
	                function BookReview(){
	        			location.href="/BOOKTIFULMUSIC/bReviewList.bo";
	        		}
	                
	                function searchGenre(){
	                	var gArr = "";
	                	var genre=$('input[name=keyword]').each(function(){
	    					gArr += $(this).val()+",";
	                	});
	    				location.href="/BOOKTIFULMUSIC/bSearchGenre.bo?keyword="+gArr;
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
                    	<% for(Book b : ubList) { %>
                            <li><a onclick="BookInfo()">
                                    <img name="img" src="${pageContext.request.contextPath}/resources/images/book/<%= b.getbImage() %>">
                                    <span>
                                        <p id="title" name="title" style="color: black;"><%= b.getBtitle()%></p>
                                    	<p id="author_like" name="author" style="color: #757575;">
                                        <b><%= b.getAuthor() %></b>&nbsp;&nbsp;|&nbsp;&nbsp;
                                        <b class="fas fa-heart">♥</b><%= b.getbLikeCount() %></p>
                                    </span>	
                            	</a>
                            </li>
                        <% } %>
                        <% } else if( sList != null) { %>
                        	<% for(Book b : sList) { %>
                            <li><a onclick="BookInfo()">
                                    <img name="img" src="${pageContext.request.contextPath}/resources/images/book/<%= b.getbImage() %>">
                                    <span>
                                        <p id="title" name="title" style="color: black;"><%= b.getBtitle()%></p>
                                    	<p id="author_like" name="author" style="color: #757575;">
                                        <b><%= b.getAuthor() %></b>&nbsp;&nbsp;|&nbsp;&nbsp;
                                        <b class="fas fa-heart">♥</b><%= b.getbLikeCount() %></p>
                                    </span>	
                            	</a>
                            </li>
                        	<% } %>
                        <% } else { %>
                           <% for (Book b : list) { %>
                           		<li><a onclick="BookInfo()">
                                    <img name="img" src="${pageContext.request.contextPath}/resources/images/book/<%= b.getbImage() %>">
                                    <span>
                                        <p id="title" name="title" style="color: black;"><%= b.getBtitle()%></p>
                                    	<p id="author_like" name="author" style="color: #757575;">
                                        <b><%= b.getAuthor() %></b>&nbsp;&nbsp;|&nbsp;&nbsp;
                                        <b class="fas fa-heart">♥</b><%= b.getbLikeCount() %></p>
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
							<button onclick="location.href='<%= request.getContextPath() %>/bUserGenre.bo?currentPage=<%=currentPage - 1 %>'"><</button>
						<% } else if(sList != null) { %>
							<button onclick="location.href='<%= request.getContextPath() %>/bSearchGenre.bo?currentPage=<%=currentPage - 1 %>'"><</button>
						<% } else { %>
							<button onclick="location.href='<%= request.getContextPath() %>/bGenreList.bo?currentPage=<%=currentPage - 1 %>'"><</button>
						<% } %>
					<%  } %>
					
					<% for(int p = startPage; p <= endPage; p++){
							if(p == currentPage){	
					%>
						<button disabled><%= p %></button>
					<%      }else{ %>
						<% if( m != null){ %>
							<button onclick="location.href='<%= request.getContextPath() %>/bUserGenre.bo?userId=<%= m.getUserId() %>&currentPage=<%= p %>'"><%=p %></button>
						<% } else if(sList != null) { %>
							<button onclick="location.href='<%= request.getContextPath() %>/bSearchGenre.bo?keyword=<%=genre%>&currentPage=<%= p %>'"><%=p %></button>
						<% } else { %>
							<button onclick="location.href='<%= request.getContextPath() %>/bGenreList.bo?currentPage=<%= p %>'"><%=p %></button>
						<% } %>
					<%      } %>
					<% } %>
						
					<%  if(currentPage >= maxPage){  %>
					<button disabled>></button>
					<%  }else{ %>
						<% if( m != null){ %>
							<button onclick="location.href='<%= request.getContextPath() %>/bUserGenre.bo?currentPage=<%=currentPage + 1 %>'">></button>
						<% } else if(sList != null) { %>
							<button onclick="location.href='<%= request.getContextPath() %>/bSearchGenre.bo?currentPage=<%=currentPage + 1 %>'">></button>
						<% } else { %>
							<button onclick="location.href='<%= request.getContextPath() %>/bGenreList.bo?currentPage=<%=currentPage + 1 %>'">></button>
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
        	function BookInfo(){
        		location.href="/BOOKTIFULMUSIC/bSelectOne.bo";
        	}
        </script>
	<%@ include file="../common/footer.jsp" %>
</body>
</html>