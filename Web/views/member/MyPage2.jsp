<%@page import="com.web.jsp.Member.model.vo.Basket"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.web.jsp.Member.model.vo.*"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<title>My Page - 장바구니</title>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/MyPage2.css">

</head>
<body>
	<div class="wrapper">
		<%@ include file="../common/header.jsp"%>

		<div id="content">

			<div id="sub_menu">
				<ul>
					<li><a href="../member/MyPage1.jsp">나의정보</a></li>
					<li id="book_basket"><a href="../member/MyPage2.jsp">장바구니</a></li>
					<li><a href="../member/MyPage3.jsp">구매목록</a></li>
					<li><a href="../member/MyPage4.jsp">이용권구매</a></li>
				</ul>
			</div>



			<div id="con1">
				<div class="user_info">
					<img src="../../resources/images/icon/ICON.png" id="photo">
					<ul id="circle_ul">
						<li id="userId">아이디&nbsp;&nbsp;:&nbsp;&nbsp;<%= m.getUserId() %></li>
						<li>이&nbsp;&nbsp;&nbsp;름&nbsp;&nbsp;:&nbsp;&nbsp;<%= m.getUserName() %></li>
						<li>이메일&nbsp;&nbsp;:&nbsp;&nbsp;<%= m.getEmail() %></li>
					</ul>
					<div id="btn">
						<input type="hidden" value="<%= m.getUserId() %>" name="userId">
						<button id="btn1" onclick="test1();" value="팝업창호출">#취향수정</button>
						<button id="btn2" onclick="test2();">개인정보수정</button>
					</div>
				</div>

				<div id="user_basket">
					<ul class="basket_list1">
						<li id="list1">장바구니</li>
						<li id="list2">장바구니에 담은 목록입니다.</li>
					</ul>


					<div class="basket_list2">
						<div id="basket">

							<div id="line_1">
								<ul id="top_m">
									<li id="all_check"><input type="checkbox" id="checkAll"><label
										for="check_1">&nbsp;전체선택</label></li>
									<li>도서정보</li>
									<li>가격</li>
									<li>수량</li>
									<li>삭제</li>
								</ul>
							</div>
							<div id="wishlist">
								<div id="line_2">
									<ul id="detail">
										<li><input type="checkbox" id="b1" name="chkbox">
										<li><a href="#"><img
												src="../../resources/images/book/4178687.jpg"><br>
												<p>제목제목제목</p></a></li>
										<li>19,000</li>
										<li><input type="number" min="1" max="999" value="1"></li>
										<li><input type="button" id="deletebtn" value="삭제"></li>
										</li>

									</ul>
								</div>
								
								<div id="line_2">
									<ul id="detail">
										<li><input type="checkbox" id="b1" name="chkbox">
										<li><a href="#"><img
												src="../../resources/images/book/4178687.jpg"><br>
												<p>제목제목제목</p></a></li>
										<li>19,000</li>
										<li><input type="number" min="1" max="999" value="1"></li>
										<li><input type="button" id="deletebtn" value="삭제"></li>
										</li>
									</ul>
								</div>
								<div id="line_2">
									<ul id="detail">
										<li><input type="checkbox" id="b1" name="chkbox">
										<li><a href="#"><img
												src="../../resources/images/book/4178687.jpg"><br>
												<p>제목제목제목</p></a></li>
										<li>19,000</li>
										<li><input type="number" min="1" max="999" value="1"></li>
										<li><input type="button" id="deletebtn" value="삭제"></li>
										</li>
									</ul>
								</div>
								<div id="line_2">
									<ul id="detail">
										<li><input type="checkbox" id="b1" name="chkbox">
										<li><a href="#"><img
												src="../../resources/images/book/4178687.jpg"><br>
												<p>제목제목제목</p></a></li>
										<li>19,000</li>
										<li><input type="number" min="1" max="999" value="1"></li>
										<li><input type="button" id="deletebtn" value="삭제"></li>
										</li>
									</ul>
								</div>
								<div id="line_2">
									<ul id="detail">
										<li><input type="checkbox" id="b1" name="chkbox">
										<li><a href="#"><img
												src="../../resources/images/book/4178687.jpg"><br>
												<p>제목제목제목</p></a></li>
										<li>19,000</li>
										<li><input type="number" min="1" max="999" value="1"></li>
										<li><input type="button" id="deletebtn" value="삭제"></li>
										</li>
									</ul>
								</div>
								<div id="line_2">
									<ul id="detail">
										<li><input type="checkbox" id="b1" name="chkbox">
										<li><a href="#"><img
												src="../../resources/images/book/4178687.jpg"><br>
												<p>제목제목제목</p></a></li>
										<li>19,000</li>
										<li><input type="number" min="1" max="999" value="1"></li>
										<li><input type="button" id="deletebtn" value="삭제"></li>
										</li>
									</ul>
								</div>
							</div>

							<div id="buy">
								<input type="submit" id="buybtn" value="구매하기"
									onclick="buyBook()">
							</div>
						</div>


					</div>
				</div>
			</div>
		</div>



		<%@ include file="/views/common/footer.jsp"%>
	</div>


	<script>
	function buyBook(){
		location.href="BookBuy.jsp";
	}
	
	
	$('#deletebtn').click(function(){
		var book="";
		var checkArray = new Array();
		
	/* 	<c:forEach var="checkList" items="$">
			
		</c:forEach> */
		
		$.ajax({
			url:"basket.me",
			type:"post",
			data:{
				
			}
			,success:function(data){
				console.log("눌려쓰눌려쓰눌려쓰!");
				alert("삭제에 실패하셨습니다.");
			},error:function(data){
				alert("삭제에 실패하셨습니다.");
			},complete:function(){
				alert('실행해라');
			}
			
		});
	});
	
	$('#book_basket').click(function(){
		$.ajax({
			url:"basket.me",
			type:"get",
			data:{
				
			}
		});
	});
	
	
	function test1(){
      	var userId = $('#btn1').parent().find("input").val();  
    	window.open("/BOOKTIFULMUSIC/mSelectGenre.me?userId="+userId,"취향수정","width=1000, height=1000, left=450,top=50,location=0, directories=0,resizable=0,status=0,toolbar=0,menubar=0")		
    }
    
    function test2(){
    window.open("../view/modifying_Information.html","정보수정","width=1000, height=1000, left=450,top=50,location=0, directories=0,resizable=0,status=0,toolbar=0,menubar=0")
    }
    var i=0;
    $('#checkAll').click(function(){
    		
    		if(i%2==0){
    		$('input[name=chkbox]:checkbox').prop("checked",true);
    		i=i+1;
    		
    		}else{
    			$('input[name=chkbox]:checkbox').prop("checked",false);
    			i=i+1;
    		}
    	});
    
    
</script>
</body>
</html>