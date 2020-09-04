<%@page import="com.web.jsp.bestSellerList.model.vo.BestSeller"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.web.jsp.bestSellerList.model.vo.*"%>
<%@page import="java.util.ArrayList"%>
<%
	ArrayList<BestSeller> bList = (ArrayList<BestSeller>) request.getAttribute("list");
	int listCnt = 0;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOOKTIFULMUSIC</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/book_bestSellers.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<%@ include file="../common/header.jsp"%>

	<div class="content">
		<div id="section">
			<div id="best_top">
				<ul>
					<li><a href="../semiproject_1/Book_BestSellers.html"
						alt="베스트셀러">베스트셀러</a></li>
					<li><a href="../semiproject_1/Book_BestSellers.html"
						alt="베스트셀러">|&nbsp;주간</a></li>
					<li><a href="../semiproject_1/Book_BestSellers.html"
						alt="베스트셀러">|&nbsp;월간</a></li>
				</ul>
			</div>
			<div id="best_top10">
				<%
					for (int j = 0; j < 2; j++) {
				%>
				<ul>
					<%
						for (int i = listCnt; i < listCnt + 5; i++) {
					%>

					<li class="book_img" id="best_middle<%=i + 1%>"><a onclick="book_detail()" style="cursor: pointer;">
					<img src="${pageContext.request.contextPath}<%= bList.get(i).getbImage() %>">
							<div id="text">
								<p class="book_rank"><%=i + 1%></p>
								<P class="book_name" id="title"><%=bList.get(i).getBtitle()%></P>
							</div> </a></li>
					<%
						}
					%>
				</ul>
				<%
					listCnt += 5;
					}
				%>
			</div>
			<div id="best_toplist">
				
			</div>
			<div id="total">
				<div id="numberList">
					<ul class="pagination">
						<li class="numberList_page"><a href="#"><img
								src="../resource/images/book/btn_L.gif"></a></li>
						<li class="numberList_page"><a href="#">1</a></li>
						<li class="numberList_page"><a href="#">2</a></li>
						<li class="numberList_page"><a href="#">3</a></li>
						<li class="numberList_page"><a href="#">4</a></li>
						<li class="numberList_page"><a href="#">5</a></li>
						<li class="numberList_page"><a href="#"><img
								src="../resource/images/book/btn_R.gif"></a></li>
					</ul>
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
	</div>


	<%@ include file="../common/footer.jsp"%>
	<script>
	
	$(function(){
		viewMessage(1);
	});
	
	//Messenger ajax 호출
	var tt;
	function viewMessage(currentPage){
		console.log(currentPage);
		$.ajax({
			url:"/BOOKTIFULMUSIC/bTop21.bo",
			data:{"currentPage":currentPage},
			type:"get",
			success: function(data) {
				createList(data.list);
				createPaging(data.pi);
			},
			error: function(status) {
				console.log("오류");
			}
			
		});
	}
	var tt;
	function createList(list){
		tt = list;
		var listCount = list.length;
		var listFlag = listCount/7;
		var index = 0;
		$("#best_toplist").empty();
		listFlag = (listFlag == 0) ? 1 : listFlag;
		for(var j = 0; j < listFlag; j++) {
			var $ul = $("<ul>");
            for(var i = index; i < index + 7; i++) {
            	if(list[i] != undefined){
	            	var $li = $("<li>").attr({"class":"book_img_bottom","id":"best_middle" + list[i].bestSeq});
	            	var $a = $("<a>").attr("href","#");
	            	var $div = $("<div>").attr("id","text");
	            	var $img = $("<img>").attr("src",'${pageContext.request.contextPath}' + list[i].bImage);
	            	var $rankP = $("<p>").attr("class","book_rank_bottom").text(list[i].bestSeq);
	            	var $nameP = $("<p>").attr("class","book_name_bottom").text((list[i].btitle.length > 20)?list[i].btitle.substr(0,15) + "...":list[i].btitle);
	            	$div.append($rankP).append($nameP);
	            	$a.append($div);
	            	$li.append($img).append($a);
	            	$ul.append($li);
            	}
                    /* <li class="book_img_bottom" id="best_middle11">
                    <a href="#"><img src="../resource/images/book/4318397.jpg">
                        <div id="text">
                        <p class="book_rank_bottom" id="best_middle_rank11">11</p>
                        <p class="book_name_bottom" id="best_middle_name11">더해빙(TheHaving)</p>
                        </div>
                    </a>
                </li> */
            } 
       	index += 7;
       	$("#best_toplist").append($ul);
        } 
	}
	
	
	//페이징 버튼 생성
	function createPaging(pageInfo){
		
		var $pagination = $(".pagination");
		$pagination.empty();
		
		var currentPage = pageInfo.currentPage;
		var startPage = pageInfo.startPage;
		var endPage = pageInfo.endPage;
		var limit = pageInfo.limit;
		var maxPage = pageInfo.maxPage;
		
		   	   
			if(currentPage <= 1) { 
				$pagination.append($("<li>").attr("class","numberList_page").append($("<a>").append($("<img>").attr("src","/resource/images/book/btn_L.gif"))).attr("disabled",true).css("cursor","pointer"));
			}else{ 
				var $li = $("<li>").attr({"class":"numberList_page","onclick":"viewMessage(" + (currentPage - 1) + ")"});
				$li.append($("<a>").append($("<img>").attr("src","/resource/images/book/btn_L.gif"))).css("cursor","pointer");
				$pagination.append($li);
						
			 } 
			/*  for(var p= startPage; p <= endPage; p++){ */
				 for (var p= startPage; p <= maxPage; p++) {
					if (p == currentPage) {
						$pagination.append($("<li>").attr("class","numberList_page").append($("<a>").text(p).css("color","red")).attr("disabled",true));
			 		} else { 
				 		var $li = $("<li>").attr({"class":"numberList_page","onclick":"viewMessage(" + p + ")"}).append($("<a>").text(p)).css({"cursor":"pointer"});
						 $pagination.append($li);
			 		} 
				 }	
			
			 if(currentPage >= maxPage){ 
				 $pagination.append($("<li>").attr("class","numberList_page").append($("<a>").append($("<img>").attr("src","resource/images/book/btn_R.gif"))).attr("disabled",true).css("cursor","pointer"));					
			 } else {
				 var $li = $("<li>").attr({"class":"numberList_page","onclick":"viewMessage(" + (currentPage + 1) + ")"}).append($("<a>").append($("<img>").attr("src","resource/images/book/btn_R.gif"))).css("cursor","pointer");
				 $pagination.append($li);
			 } 
	}
	
	function book_detail(){
        var title = $('#title').text();
        location.href="/BOOKTIFULMUSIC/bSelectOne.bo?btitle="+title;
     }
	</script>
</body>
</html>