<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.web.jsp.Member.model.vo.*" import="com.web.jsp.book.model.vo.*" import="java.util.*" %>


<%@page import="com.web.jsp.book.model.vo.PageInfo"%>
<% ArrayList<Book> list = (ArrayList<Book>)request.getAttribute("list");

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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/book_like.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	<div class="content">
        <div id="sub_menu">
            <div id="sub_menu">
				<ul>
					<li><a onclick="BookGenre()">|&nbsp;장르</a></li>
					<li><a onclick="BookLike()">좋아요</a></li>
					<li><a onclick="BookReview()">|&nbsp;리뷰</a></li>
				</ul>
			</div>
            </ul>
        </div>
        <div id="title">
			<p>좋아요 순 도서보기</p>
		</div>
        <div id="b_listcon">
            <div id="book">
					<ul id="book">
						<% for(Book b : list) { %>
						 <li>
	                        <dl>
	                            <img src="${pageContext.request.contextPath}/resources/images/book/<%= b.getbImage() %>" alt="">
	                        </dl>
	                        <dl id="list1">
	                            <dd>
	                                <dt><a onclick="book_Detail()"><%= b.getBtitle() %></a></dt>
	                                <dt id="text1" onclick="book_Detail()"><%=b.getAuthor() %></dt>
	                                <dt id="text2" onclick="book_Detail()">&nbsp;|&nbsp;&nbsp;&nbsp;<%=b.getBgenre() %></dt>
	                                <dt id="text3" onclick="book_Detail()">&nbsp;|&nbsp;&nbsp;&nbsp;<%=b.getPublisher() %>></dt>
	                                <dt id="text4" onclick="book_Detail()"><%=b.getPrice() %></dt>
	                                <dt id="like" onclick="book_Detail()">♥ <%=b.getbLikeCount() %></dt>
	                                <dt id="review" onclick="book_Detail()">+ <%=b.getbReviewCount() %></dt>
	                            </dd>
	                        </dl>
	                        <dl id="btn">
	                        	<button type="button" id="likebtn" name="likebtn">♥</button>
	                            <button id="wish" onclick="bookBuyPage()">장바구니</button>
	                        </dl>
                    </li>
                        <% } %>
					</ul>
				</div>
			</div>
			<div id="total" style="margin-bottom:120px;">
             <div id="numberList">
					<%  if(currentPage <= 1){  %>
					<button disabled><</button>
					<%  }else{ %>
							<button onclick="location.href='<%= request.getContextPath() %>/bLikeList.bo?currentPage=<%=currentPage - 1 %>'"><</button>
					<%  } %>
					
					<% for(int p = startPage; p <= endPage; p++){
							if(p == currentPage){	
					%>
						<button disabled><%= p %></button>
					<%      }else{ %>
							<button onclick="location.href='<%= request.getContextPath() %>/bLikeList.bo?currentPage=<%= p %>'"><%=p %></button>
					<%      } %>
					<% } %>
						
					<%  if(currentPage >= maxPage){  %>
					<button disabled>></button>
					<%  }else{ %>
							<button onclick="location.href='<%= request.getContextPath() %>/bLikeList.bo?currentPage=<%=currentPage + 1 %>'">></button>
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
        </div>
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
        	function BookInfo(){
        		location.href="/BOOKTIFULMUSIC/bSelectOne.bo";
        	}
        </script>
	<%@ include file="../common/footer.jsp" %>
</body>
</html>