<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.web.jsp.Member.model.vo.*"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<title>My Page - 구매목록</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/MyPage3.css">

</head>
<body>
	<div class="wrapper">
		<%@ include file="../common/header.jsp"%>


		<div id="content">

			<div id="sub_menu">
				<ul>
					<li><a href="../member/MyPage1.jsp">나의정보</a></li>
					<li>| <a href="../member/MyPage2.jsp">장바구니</a></li>
					<li><a href="../member/MyPage3.jsp">구매목록</a></li>
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


				<div id="user_purchase">
					<ul class="purchase_list">
						<li id="purchase1">구매목록</li>
						<li id="purchase2">구매하신 상품 목록입니다.</li>
					</ul>

					<div class="book_purchase">
						<div id="book">
							<ul id="line_1">
								<li>주문번호</li>
								<li>주문일자</li>
								<li>상품정보</li>
								<li>주문금액 및 수량</li>
								<li>주문자</li>
							</ul>
						</div>
						<div id="list">
							<div id="book_info">
								<ul id="infolist1">
									<li>00001</li>
									<li>200810</li>
									<li>돈의속성</li>
									<li>18000/1</li>
									<li>유승제</li>
									<li><button id="btn3" onclick="test3();">리뷰쓰기</button></li>
								</ul>

							</div>
							<div id="book_info">
								<ul id="infolist1">
									<li>00001</li>
									<li>200810</li>
									<li>돈의속성</li>
									<li>18000/1</li>
									<li>유승제</li>
									<li><button id="btn3" onclick="test3();">리뷰쓰기</button></li>
								</ul>

							</div>
						</div>
					</div>
				</div>


				<div class="music_purchase">
					<div id="music">
						<ul id="line_2">
							<li id="sub_m1">이용권명</li>
							<li id="sub_m2">이용권 혜택 기간</li>
							<li id="sub_m3">다음 결제일</li>
						</ul>
					</div>
					<div id="list2">
						<div id="music_info">
							<ul>
								<li></li>
								<li>구매내역이 없습니다.</li>
								<li></li>
							</ul>
						</div>

					</div>





				</div>
			</div>



		</div>
	</div>


	<%@ include file="/views/common/footer.jsp"%>



	<script>
function test1(){
  	var userId = $('#btn1').parent().find("input").val();  
	window.open("/BOOKTIFULMUSIC/mSelectGenre.me?userId="+userId,"취향수정","width=1000, height=1000, left=450,top=50,location=0, directories=0,resizable=0,status=0,toolbar=0,menubar=0")		
}

function test2(){
window.open("../view/modifying_Information.html","정보수정","width=1000, height=1000, left=450,top=50,location=0, directories=0,resizable=0,status=0,toolbar=0,menubar=0")
}
    function test3(){
    window.open("../view/review.html","리뷰","width=1000, height=1000, left=450,top=50,location=0, directories=0,resizable=0,status=0,toolbar=0,menubar=0")
    }
</script>
</body>
</html>