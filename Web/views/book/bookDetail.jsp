<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.web.jsp.bestSellerList.model.vo.*" import="com.web.jsp.book.model.vo.*"%>
    <% Book b = (Book)request.getAttribute("b"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>BOOK INFORMATION</title>
    <link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/book_detail.css">
</head>
<body>
   <%@ include file="../common/header.jsp"%>

   <div id="content">        
            <div id="info1">
                <p id="p1">BOOK INFORMATION</p>
                <img src="${pageContext.request.contextPath}/resource/images/book/july/<%= b.getbImage() %>" id="info_img1" alt="">
                <ul id="b_title">
                    <li>365 브레인 피트니스</li>
                    <li>저자</li>
                    <li>&nbsp;&nbsp;|&nbsp;&nbsp;출판사</li>
                    <li><a>#장르</a></li>
                    <li><b id="heart">♥</b> 1,349 </li>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<b id="re">review</b> 399</li>
                    <li>18,000원</li>
                </ul>
                <dl id="b_btn">
                    <button type="button" id="likebtn" name="likebtn">♥</button>
                    <a href="../view/BuyPage.html"><input type="button" id="buybtn" name="buybtn" value="구매하기"></a>
                    <input type="button" id="wishbtn" name="wishbtn" value="장바구니">
                </dl>
            </div>
            <div id="info2">
                <p id="p2">Author</p>
                <div id="authorinfo">
                    <img src="../resource/images/book/4178687.jpg"> <!-- 이미지 있는 경우만 사용 -->
                    <div id="a_detail">
                        <p>작가이름</p>
                        <pre>소개</pre>
                    </div>
                </div>
                <div id="bookinfo">
                    <p id="p3">List & Summary</p>
                    <div id="b_detail">
                        <div id="list">
                            <ul>
                                <li>아아</li>
                                <li>아아</li>
                                <li>아아</li>
                                <li>아아</li>
                                <li>아아</li>
                                <li>아아</li>

                            </ul>
                        </div>
                        <div id="summary">
                            줄거리 내용내용 내용 줄거리줄거리줄거리줄거리 내용내용 내용 줄거리줄거리줄거리줄거리 내용내용 내용 줄거리줄거리줄거리줄거리 내용내용 내용 줄거리줄거리줄거리줄거리 내용내용 내용 줄거리줄거리줄거리줄거리 내용내용 내용 줄거리줄거리줄거리줄거리 내용내용 내용 줄거리줄거리줄거리줄거리 내용내용 내용 줄거리줄거리줄거리줄거리 내용내용 내용 줄거리줄거리줄거리줄거리 내용내용 내용 줄거리줄거리줄거리줄거리 내용내용 내용 줄거리줄거리줄거리줄거리 내용내용 내용 줄거리줄거리줄거리줄거리 내용내용 내용 줄거리줄거리줄거리
                        </div>
                    </div>
                </div>
            </div>
            <div id="reviews">
                <p>Reviews</p>
                <div id="add">
                    <ul>
                        <li><img src="../resource/images/icon/ICON.png"></li>
                        <li><b>USERID</b><br><p>최근 읽었던 책 중 가장 재미있었어요!!! 정말 기억에 남는 장면이 너무 많아요.</p></b>
                    </ul>
                    <ul>
                        <li><img src="../resource/images/icon/ICON.png"></li>
                        <li><b>USERID</b><br><p>오랜만에 머리가 풀리는 기분!</p></li>
                    </ul>
                </div>
                <div id="user_review">
                    <img src="../resource/images/icon/ICON.png">
                    <textarea id="review_text" placeholder="100자내로 리뷰를 작성해주세요." cols="80" rows="5"></textarea>
                    <input type="submit" id="review_btn" name="review_btn" value="등록">
                </div>
            </div>
        </div>
        
        <%@ include file="../common/footer.jsp"%>
</body>
</html>