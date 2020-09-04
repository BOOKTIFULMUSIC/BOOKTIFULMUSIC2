<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.web.jsp.Member.model.vo.*"%>


<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<title>My Page - 나의 정보</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/myinfo.css">

</head>
<body>
	<div class="wrapper">
		<%@ include file="../common/header.jsp"%>

		<div id="content">

			<div id="sub_menu">
				<ul>
					<li><a href="../member/MyPage1.jsp">나의정보</a></li>
					<li>| <a href="../member/MyPage2.jsp">장바구니</a></li>
					<li>| <a href="../member/MyPage3.jsp">구매목록</a></li>
					<li>| <a href="../member/MyPage4.jsp">이용권구매</a></li>
				</ul>
			</div>


			<div id="con1">
				<div class="user_info">
					<img src="../../resources/images/icon/ICON.png" id="photo">
					<ul id="circle_ul">
						<li>아이디&nbsp;&nbsp;:&nbsp;&nbsp;<%= m.getUserId() %></li>
						<li>이&nbsp;&nbsp;&nbsp;름&nbsp;&nbsp;:&nbsp;&nbsp;<%= m.getUserName() %></li>
						<li>이메일&nbsp;&nbsp;:&nbsp;&nbsp;<%= m.getEmail() %></li>
					</ul>
					<div id="btn">
						<input type="hidden" value="<%= m.getUserId() %>" name="userId">
						<button id="btn1" onclick="test1();" value="팝업창호출">#취향수정</button>
						<button id="btn2" onclick="test2();">개인정보수정</button>
					</div>
				</div>

				<div id="user_like">
					<p id="list1">Like List</p>
					<p id="list2">좋아요를 누른 목록입니다.</p>



					<div class="book_list">
						<div id="book">
							<div id="text">
								<p id="book_1">도서 list</p>
								<select id="select_b">
									<option value="">가나다 순</option>
								</select>
							</div>
						</div>
					</div>


					<div class="music_list">
						<div id="music">
							<div id="text">
								<p id="music_1">음원 list</p>
								<select id="select_m">
									<option value="">가나다 순</option>
								</select>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>


		<%@ include file="/views/common/footer.jsp"%>
	</div>
	<script>
    function test1(){
      	var userId = $('#btn1').parent().find("input").val();  
    	window.open("/BOOKTIFULMUSIC/mSelectGenre.me?userId="+userId,"취향수정","width=800, height=1000, left=450,top=50,location=0, directories=0,resizable=0,status=0,toolbar=0,menubar=0")		
    }
    
    function test2(){
    window.open("../view/modifying_Information.html","정보수정","width=1000, height=1000, left=450,top=50,location=0, directories=0,resizable=0,status=0,toolbar=0,menubar=0")
}
</script>

</body>
</html>