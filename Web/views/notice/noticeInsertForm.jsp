<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.*, com.web.jsp.notice.model.vo.*"%>
<%
String ntype = request.getParameter("ntype");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noticeInsertForm</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/notice_Insert_Form.css">
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<style>
  input:focus, 
  textarea:focus {
  outline: none;
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
                    <p id="title">문의하기</p>
                </div>

                <div class="notice_title">
                    <form action="<%=request.getContextPath()%>/nInsertNotice.no" method="post">
                        <table id="notice_text">
                            <tr>
                                <td class="category"><strong>문의유형</strong></td>
                                <td id="type_text">
                              <%if(ntype.equals("P")) {%>
                                <input type="text" value="상품문의" name="type"readonly>
                                <input type="hidden" value="P" name="ntype">
                              <%}else{ %>
                                <input type="text" value="배송문의" name="type"readonly>
                                <input type="hidden" value="D" name="ntype">
                              <%} %>
                                </td>
                            </tr>
                            <tr>
                                <td class="category"><strong>작성자</strong></td>
                                <td id="writer_text">
                                    <input type="text" value="<%=m.getUserId()%>" name="nwriter" readonly>
                                </td>
                            </tr>
                            <tr>
                                <td class="category"><strong>제목</strong></td>
                                <td id="title_text">
                                    <input type="text" name="ntitle" placeholder="제목을 입력하세요">
                                </td>
                            </tr>    
                            <tr>
                                <td class="category"><strong>내용</strong></td>
                                <td id="content_text">
                                    <textarea name="ncontent"></textarea>
                                </td>
                            </tr>
                        </table>

                        <br>
                        <div id="end_btn">
                            <button type="reset">초기화</button>
                            <button type="submit">등록하기</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

	<%@ include file="../common/footer.jsp" %>
</body>
</html>