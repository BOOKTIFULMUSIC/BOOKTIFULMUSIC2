<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*, com.web.jsp.notice.model.vo.*"%>
<%
	Notice n = (Notice)request.getAttribute("notice");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NoticeDetail</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/notice_detail.css">
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	<div id="content">
            <div id="section">
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
                    <%if(n.getNtype().equals("N")) {%>
                    	<p id="title">공지사항</p>
	                <%}else if(n.getNtype().equals("P")) {%>
	                    <p id="title">상품문의</p>
	                <%}else if(n.getNtype().equals("D")) {%>
	                    <p id="title">배송문의</p>
	                <%}else{%>
	                    <p id="title">자주하는질문</p>
	                <%} %>
                </div>

                <div class="notice_title">
                    <ul class="list_head">
                        <li><%=n.getRnum()%></li>
                        <li><%=n.getNtitle()%></li>
                        <li><%=n.getNwriter()%></li>
                        <li><%=n.getNdate()%></li>
                        <input id="hidden_nno" type="hidden" value="<%=n.getNno()%>"/>
                    </ul>
                    <div class="n_detail">
                        <p><%=n.getNcontent()%></p>
                    </div>
                </div>
                	<button id="back" onclick="goNotice();">목록으로 돌아가기</button>
                	
                	<%if(m != null && m.getUserId().equals(n.getNwriter())){ %>
                		<%if(n.getNtype().equals("P") || n.getNtype().equals("D")) {%>
		                	<button id="delete" style="width:80px; height:30px; border: none; margin-top: 20px; float: right; 
				                 background: rgb(227, 233, 255); margin-right:10px">삭제하기</button>
		                	<button id="update" style="width:80px; height:30px; border: none; margin-top: 20px; float: right; 
				                 background: rgb(227, 233, 255); margin-right:30px">수정하기</button>
	            		<%} %>
		            <%}else if(m != null && m.getUserId().equals("admin") && !n.getNwriter().equals("admin")){ %>
		            	<%if(n.getNtype().equals("P") || n.getNtype().equals("D")) {%>
			        		<button id="delete" style="width:80px; height:30px; border: none; margin-top: 20px; float: right; 
			                 background: rgb(227, 233, 255); margin-right:10px">삭제하기</button>
			            <%} %>
			        <%} %>
            </div>
          </div>
     </div>
     <%@ include file="../common/footer.jsp" %>
     <script>
     	function goNotice(){
     		location.href="/BOOKTIFULMUSIC/nSelectList.no?ntype=<%=n.getNtype()%>";
     	}
     	
     	$(function(){
     		$("#update").mouseover(function(){
     			$(this).css({"color":"rgb(105,140,255)", "cursor":"pointer"});
     		}).mouseout(function(){
     			$(this).css({"color":"black"});
     		}).click(function(){
     			var rnum = $("#hidden_nno").parent().children().eq(0).text();
    			var nno = $("#hidden_nno").parent().children().eq(4).val();
     			
     			location.href="<%=request.getContextPath()%>/nUpdateView.no?rnum="+rnum+"&nno="+nno;
     		});
     		
     		$("#delete").mouseover(function(){
     			$(this).css({"color":"rgb(105,140,255)", "cursor":"pointer"});
     		}).mouseout(function(){
     			$(this).css({"color":"black"});
     		}).click(function(){
    			var nno = $("#hidden_nno").parent().children().eq(4).val();
    			
    			var deleteMsg = confirm('정말 삭제하시겠습니까?');
    			   if (deleteMsg) {
     				  location.href="<%=request.getContextPath()%>/nDeleteNotice.no?nno="+ nno +"&ntype=<%=n.getNtype()%>";
    			      alert('게시글이 삭제되었습니다.');
    			   }
    			   else {
    			      alert('게시글 삭제가 취소되었습니다.');
    			   }
     		});
     	});
     	
     </script>
</body>
</html>