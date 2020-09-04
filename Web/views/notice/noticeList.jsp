<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*, com.web.jsp.notice.model.vo.*"%>
<%@page import="com.web.jsp.book.model.vo.PageInfo"%>

<%
ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
PageInfo pi = (PageInfo)request.getAttribute("pi");
String con = (String)request.getAttribute("con");
String keyword = (String)request.getAttribute("keyword");
String ntype = (String)request.getAttribute("ntype");

int listCount = pi.getListCount();
int currentPage = pi.getCurrentPage();
int maxPage = pi.getMaxPage();
int startPage = pi.getStartPage();
int endPage = pi.getEndPage(); 
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NoticeList</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/notice_QnA_notice_1.css">
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<style>
#numberList button{
	border:none;
	background: rgb(227, 233, 255);
	border-radius: 10px;
	padding:10px;
}

#numberList button:hover{
    cursor: pointer;
    color: rgb(105,140,255);
}
</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	<!-- content 부분-->
        <div class="content">
            <div id="section"> 
                <table id="notice_menu">
                	<tbody>
	                    <tr>
	                        <td id="noticeBtn1" class="men_index">
	                                <img id="child_1" src="https://hotping.co.kr/something/qnam_09.jpg"
	                                onmouseover="this.src='https://hotping.co.kr/something/qnaov_09.jpg'" 
	                                onmouseout="this.src='https://hotping.co.kr/something/qnam_09.jpg'">
	                        </td>
	                        <td id="noticeBtn2" class="men_index">
	                                <img id="child_2" src="https://hotping.co.kr/something/qnam_02.jpg" 
	                             onmouseover="this.src='https://hotping.co.kr/something/qnaov_02.jpg'"
	                             onmouseout="this.src='https://hotping.co.kr/something/qnam_02.jpg'">
	                         </td>
	                        <td id="noticeBtn3" class="men_index">
	                                <img id="child_3" src="https://hotping.co.kr/something/qnam_05.jpg" 
	                                onmouseover="this.src='https://hotping.co.kr/something/qnaov_05.jpg'" 
	                                onmouseout="this.src='https://hotping.co.kr/something/qnam_05.jpg'">
	                        </td>
	                        <td id="noticeBtn4"class="men_index">
	                                <img id="child_4" src="https://hotping.co.kr/something/qnam_08.jpg" 
	                                onmouseover="this.src='https://hotping.co.kr/something/qnaov_08.jpg'" 
	                                onmouseout="this.src='https://hotping.co.kr/something/qnam_08.jpg'">
	                        </td>
	                    </tr>
                    </tbody>
                </table>
                <script>
                	$(function(){
                		$("#child_1").mouseover(function(){
							$(this).css({"cursor":"pointer"});
                		}).click(function(){
                			location.href="<%=request.getContextPath()%>/nSelectList.no?ntype=N";
                	    });
                		
	            		$("#child_2").mouseover(function(){
							$(this).css({"cursor":"pointer"});                			
                		}).click(function(){
	            			location.href="<%=request.getContextPath()%>/nSelectList.no?ntype=P";
						});
	            		
	            		$("#child_3").mouseover(function(){
							$(this).css({"cursor":"pointer"});                			
                		}).click(function(){
	            			location.href="<%=request.getContextPath()%>/nSelectList.no?ntype=D";
						});
	            		
	            		$("#child_4").mouseover(function(){
							$(this).css({"cursor":"pointer"});                			
                		}).click(function(){
	            			location.href="<%=request.getContextPath()%>/nSelectList.no?ntype=Q";
						});
                	});
                </script>

                <div id="menu_name">
                <%if(ntype.equals("N")) {%>
                    <p id="title">공지사항</p>
                <%}else if(ntype.equals("P")) {%>
                    <p id="title">상품문의</p>
                <%}else if(ntype.equals("D")) {%>
                    <p id="title">배송문의</p>
                <%}else{%>
                    <p id="title">자주하는질문</p>
                <%} %>
                </div>
                
                <div id="notice">
                    <table class="notice_list">
                        <thead>
                            <tr class="list_head">
                                <th class="list_number">번호</th>
                                <th class="list_subject">제목</th>
                                <th class="list_name">작성자</th>
                                <th class="list_time">등록일자</th>
                            </tr>
                        </thead>
                        <tbody>
                        <%if(!ntype.equals("Q")) {%>
	                        <% for(Notice n : list) {%>
	                            <tr class="list_body">
	                            	<input type="hidden" value="<%=n.getRnum() %>"/>
	                            	<input type="hidden" value="<%=n.getNno() %>"/>
	                                <td class="list_number"><%= n.getRnum() %></td>
	                                <td class="list_subject"><%= n.getNtitle() %></td>
	                                <td class="list_name"><%= n.getNwriter() %></td>
	                                <td class="list_time"><%= n.getNdate() %></td>
	                            </tr>
	                         <% } %>
                         <%}else{ %>
                         	<% for(Notice n : list) {%>
	                            <tr class="list_body">
	                            	<input type="hidden" value="<%=n.getRnum() %>"/>
	                            	<input type="hidden" value="<%=n.getNno() %>"/>
	                                <td class="list_number"><%= n.getRnum() %></td>
	                                <td class="list_subject"><%= n.getNtitle() %></td>
	                                <td class="list_name"><%= n.getNwriter() %></td>
	                                <td class="list_time"><%= n.getNdate() %></td>
	                            </tr>
	                         <% } %>
                         <%} %>
                        </tbody>
                    </table>
                </div>
                <!-- 게시판 리스트 tr 이벤트 -->
                <script>
                	$(function(){
                		$(".list_body td").mouseover(function(){
                			$(this).parent().css({"background":"rgb(227, 233, 255)", "cursor":"pointer"});
                		}).mouseout(function(){
                			$(this).parent().css({"background":"white"});
                		}).click(function(){
                			var rnum = $(this).parent().children().eq(0).val();
                			var nno = $(this).parent().children().eq(1).val();
               				location.href=
                   				"<%=request.getContextPath()%>/nSelectOne.no?rnum="+rnum+"&nno="+nno;
                		});
                	});
                </script>
                
                <% if(!ntype.equals("N") && !ntype.equals("Q")){ %>
                	<%if(m != null){ %>
		                <button id = "insertBtn1"
		                 style="width:80px; height:30px; border: none; margin-top: 20px; float: right; 
		                 background: rgb(227, 233, 255);"
		                >글쓰기</button>
		                <input id="insertType" type="hidden" value="<%=ntype%>"/>
		                <input id="insertId" type="hidden" value="<%=m.getUserId()%>"/>
					<%}else {%>
						<button id = "insertBtn2"
		                 style="width:80px; height:30px; border: none; margin-top: 20px; float: right; 
		                 background: rgb(227, 233, 255);"
		                >글쓰기</button>
					<%} %>
				<%} %>
            </div>
        </div>
		<script>
			$(function(){
				$("#insertBtn1").mouseover(function(){
					$(this).css({"color":"rgb(105,140,255)", "cursor":"pointer"});
				}).mouseout(function(){
					$(this).css({"color":"black"});
				}).click(function(){
					var ntype = $(this).parent().find("#insertType").val();
        			var userId = $(this).parent().find("#insertId").val();

					location.href="/BOOKTIFULMUSIC/views/notice/noticeInsertForm.jsp?ntype="+ntype+"&userId="+userId;
				});
				
				$("#insertBtn2").mouseover(function(){
					$(this).css({"color":"rgb(105,140,255)", "cursor":"pointer"});
				}).mouseout(function(){
					$(this).css({"color":"black"});
				}).click(function(){
					alert("로그인이 필요합니다!");
					location.href="/BOOKTIFULMUSIC/views/member/loginForm.jsp";
				});
			});
		</script>
		

		
        <div id="best_foot">
            <div id="numberList" style="text-align: center;">
            		<%if(keyword != null) {%>
								<button onclick="location.href='<%= request.getContextPath() %>/nSearchNotice.no?con=<%=con%>&keyword=<%=keyword%>&ntype=<%=ntype%>&currentPage=1'"><<</button>
								<%  if(currentPage <= 1){  %>
								<button disabled><</button>
								<%  }else{ %>
								<button onclick="location.href='<%= request.getContextPath() %>/nSearchNotice.no?con=<%=con%>&keyword=<%=keyword%>&ntype=<%=ntype%>&currentPage=<%=currentPage - 1 %>'"><</button>
								<%  } %>
								
								<% for(int p = startPage; p <= endPage; p++){
										if(p == currentPage){	
								%>
									<button disabled><%= p %></button>
								<%      }else{ %>
									<button onclick="location.href='<%= request.getContextPath() %>/nSearchNotice.no?con=<%=con%>&keyword=<%=keyword%>&ntype=<%=ntype%>&currentPage=<%= p %>'"><%= p %></button>
								<%      } %>
								<% } %>
									
								<%  if(currentPage >= maxPage){  %>
								<button disabled>></button>
								<%  }else{ %>
								<button onclick="location.href='<%= request.getContextPath() %>/nSearchNotice.no?con=<%=con%>&keyword=<%=keyword%>&ntype=<%=ntype%>&currentPage=<%=currentPage + 1 %>'">></button>
								<%  } %>
								<button onclick="location.href='<%= request.getContextPath() %>/nSearchNotice.no?con=<%=con%>&keyword=<%=keyword%>&ntype=<%=ntype%>&currentPage=<%= maxPage%>'">>></button>
								
		      		<%}else{ %>
		      		
								<button onclick="location.href='<%= request.getContextPath() %>/nSelectList.no?ntype=<%=ntype%>&currentPage=1'"><<</button>
								<%  if(currentPage <= 1){  %>
								<button disabled><</button>
								<%  }else{ %>
								<button onclick="location.href='<%= request.getContextPath() %>/nSelectList.no?ntype=<%=ntype%>&currentPage=<%=currentPage - 1 %>'"><</button>
								<%  } %>
								
								<% for(int p = startPage; p <= endPage; p++){
										if(p == currentPage){	
								%>
									<button disabled><%= p %></button>
								<%      }else{ %>
									<button onclick="location.href='<%= request.getContextPath() %>/nSelectList.no?ntype=<%=ntype%>&currentPage=<%= p %>'"><%= p %></button>
								<%      } %>
								<% } %>
									
								<%  if(currentPage >= maxPage){  %>
								<button disabled>></button>
								<%  }else{ %>
								<button onclick="location.href='<%= request.getContextPath() %>/nSelectList.no?ntype=<%=ntype%>&currentPage=<%=currentPage + 1 %>'">></button>
								<%  } %>
								<button onclick="location.href='<%= request.getContextPath() %>/nSelectList.no?ntype=<%=ntype%>&currentPage=<%= maxPage%>'">>></button>
		      		<%} %>
		      </div>
            	<!-- 검색바 -->
		            <div id="book_search" style="text-align: center; left:0px" >
		                <select class="search_tool" id="select_tool">
		                    <option value="제목">제목</option>
		                    <option value="작성자">작성자</option>
		                    <option value="내용">내용</option>
		                </select>
		                <input class="search_tool" type="search" id="text_tool">
		                <input class="search_tool" type="button" id="confirm_tool" value="검색" style="background: rgb(227, 233, 255); border:none;">
            		</div>
        </div>
        <script>
        	$(function(){
        		$("#confirm_tool").mouseover(function(){
        			$(this).css({"color":"rgb(105,140,255)", "cursor":"pointer"});
        		}).mouseout(function(){
					$(this).css({"color":"black"});
				}).click(function(){
					location.href="<%=request.getContextPath()%>/nSearchNotice.no?con="+ $('#select_tool').val() + "&keyword=" + $('#text_tool').val() + "&ntype=<%=ntype%>";
				});
        	});
        </script>
        
        <%@ include file="../common/footer.jsp" %>
</body>
</html>