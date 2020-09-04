<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="com.web.jsp.musicReview.model.vo.*"%>
    
  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>musicReview</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}resources/css/music_review_content.css?ver=1.1"/>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
   
   <%@ include file="../common/header.jsp" %>

<div class="content">
        <div id="sub_menu">
            <ul>
                <li><a href="../view/music_genre.html">|&nbsp;장르</a></li>
                <li><a href="../view/music_Like.html">|&nbsp;좋아요</a></li>
                <li><a href="../view/Music_Review.html">리뷰</a></li>
            </ul>
        </div>
        <div class="section">
            <table id="music_review_info">
                <tr>
                    <th>리뷰 순 음원 보기</th>
                </tr>
            </table>
            <!-- 리뷰순 음원차트 순서 20개씩 -->
            <table>
                <tr id="music_review">
                    <td><a href="앨범상세정보창"><img src="../resource/images/music/Adele_25.JPG" alt=""></a></td>
                    <td>
                        <ul>
                            <li id="albumName"><a href="앨범상세정보창">25</a></li>
                            <li>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                            <li id="artist"><a href="앨범상세정보창">Adele</a></li>
                            <li>ID :&nbsp;</li>
                            <li id="userId">USER01</li>
                            <li id="review_text">책읽을 때 들으면 좋은 음악이에요</li>
                        </ul> 
                    </td>
                    <td id="detail">
                        <button id="de"><a href="../view/Music_Information.html">자세히 보기 > </a></button>
                    </td>
                </tr>
                <tr id="music_review">
                    <td><a href="앨범상세정보창"><img src="../resource/images/music/Ed_Sheeran_X.JPG" alt=""></a></td>
                    <td>
                        <ul>
                            <li id="albumName"><a href="앨범상세정보창">X(Deluxe Edition)</a></li>
                            <li>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                            <li id="artist"><a href="앨범상세정보창">Ed Sheeran</a></li>
                            <li>ID :&nbsp;</li>
                            <li id="userId">USER05</li>
                            <li id="review_text">추억이 많은 음악이에요</li>
                        </ul> 
                    </td>
                    <td id="detail">
                        <button id="de"><a href="../view/Music_Information.html">자세히 보기 > </a></button>
                    </td>
                </tr>
                <tr id="music_review">
                    <td><a href="앨범상세정보창"><img src="../resource/images/music/Kacey_Musgraves_Golden_Hour.JPG" alt=""></a></td>
                    <td>
                        <ul>
                            <li id="albumName"><a href="앨범상세정보창">Golden Hour</a></li>
                            <li>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                            <li id="artist"><a href="앨범상세정보창">Kacey Musgraves</a></li>
                            <li>ID :&nbsp;</li>
                            <li id="userId">koo93</li>
                            <li id="review_text">목소리가 따뜻해요</li>
                        </ul> 
                    </td>
                    <td id="detail">
                        <button id="de"><a href="../view/Music_Information.html">자세히 보기 > </a></button>
                    </td>
                </tr>
                <tr id="music_review">
                    <td><a href="앨범상세정보창"><img src="../resource/images/music/10465937_20200723150235_1000.JPG" alt=""></a></td>
                    <td>
                        <ul>
                            <li id="albumName"><a href="앨범상세정보창">다시 여기 바닷가</a></li>
                            <li>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                            <li id="artist"><a href="앨범상세정보창">싹쓰리(유드래곤,린다G,비룡)</a></li>
                            <li>ID :&nbsp;</li>
                            <li id="userId">kim1234</li>
                            <li id="review_text">여행 가고싶다</li>
                        </ul> 
                    </td>
                    <td id="detail">
                        <button id="de"><a href="../view/Music_Information.html">자세히 보기 > </a></button>
                    </td>
                </tr>
                <tr id="music_review">
                    <td><a href="앨범상세정보창"><img src="../resource/images/music/Adele_25.JPG" alt=""></a></td>
                    <td>
                        <ul>
                            <li id="albumName"><a href="앨범상세정보창">25</a></li>
                            <li>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                            <li id="artist"><a href="앨범상세정보창">Adele</a></li>
                            <li>ID :&nbsp;</li>
                            <li id="userId">USER01</li>
                            <li id="review_text">책읽을 때 들으면 좋은 음악이에요</li>
                        </ul> 
                    </td>
                    <td id="detail">
                        <button id="de"><a href="../view/Music_Information.html">자세히 보기 > </a></button>
                    </td>
                </tr>
                <tr id="music_review">
                    <td><a href="앨범상세정보창"><img src="../resource/images/music/Ed_Sheeran_X.JPG" alt=""></a></td>
                    <td>
                        <ul>
                            <li id="albumName"><a href="앨범상세정보창">X(Deluxe Edition)</a></li>
                            <li>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                            <li id="artist"><a href="앨범상세정보창">Ed Sheeran</a></li>
                            <li>ID :&nbsp;</li>
                            <li id="userId">USER05</li>
                            <li id="review_text">추억이 많은 음악이에요</li>
                        </ul> 
                    </td>
                    <td id="detail">
                        <button id="de"><a href="../view/Music_Information.html">자세히 보기 > </a></button>
                    </td>
                </tr>
                <tr id="music_review">
                    <td><a href="앨범상세정보창"><img src="../resource/images/music/Kacey_Musgraves_Golden_Hour.JPG" alt=""></a></td>
                    <td>
                        <ul>
                            <li id="albumName"><a href="앨범상세정보창">Golden Hour</a></li>
                            <li>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                            <li id="artist"><a href="앨범상세정보창">Kacey Musgraves</a></li>
                            <li>ID :&nbsp;</li>
                            <li id="userId">koo93</li>
                            <li id="review_text">목소리가 따뜻해요</li>
                        </ul> 
                    </td>
                    <td id="detail">
                        <button id="de"><a href="../view/Music_Information.html">자세히 보기 > </a></button>
                    </td>
                </tr>
                <tr id="music_review">
                    <td><a href="앨범상세정보창"><img src="../resource/images/music/10465937_20200723150235_1000.JPG" alt=""></a></td>
                    <td>
                        <ul>
                            <li id="albumName"><a href="앨범상세정보창">다시 여기 바닷가</a></li>
                            <li>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                            <li id="artist"><a href="앨범상세정보창">싹쓰리(유드래곤,린다G,비룡)</a></li>
                            <li>ID :&nbsp;</li>
                            <li id="userId">kim1234</li>
                            <li id="review_text">여행 가고싶다</li>
                        </ul> 
                    </td>
                    <td id="detail">
                        <button id="de"><a href="../view/Music_Information.html">자세히 보기 > </a></button>
                    </td>
                </tr>
                <tr id="music_review">
                    <td><a href="앨범상세정보창"><img src="../resource/images/music/Adele_25.JPG" alt=""></a></td>
                    <td>
                        <ul>
                            <li id="albumName"><a href="앨범상세정보창">25</a></li>
                            <li>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                            <li id="artist"><a href="앨범상세정보창">Adele</a></li>
                            <li>ID :&nbsp;</li>
                            <li id="userId">USER01</li>
                            <li id="review_text">책읽을 때 들으면 좋은 음악이에요</li>
                        </ul> 
                    </td>
                    <td id="detail">
                        <button id="de"><a href="../view/Music_Information.html">자세히 보기 > </a></button>
                    </td>
                </tr>
                <tr id="music_review">
                    <td><a href="앨범상세정보창"><img src="../resource/images/music/Ed_Sheeran_X.JPG" alt=""></a></td>
                    <td>
                        <ul>
                            <li id="albumName"><a href="앨범상세정보창">X(Deluxe Edition)</a></li>
                            <li>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                            <li id="artist"><a href="앨범상세정보창">Ed Sheeran</a></li>
                            <li>ID :&nbsp;</li>
                            <li id="userId">USER05</li>
                            <li id="review_text">추억이 많은 음악이에요</li>
                        </ul> 
                    </td>
                    <td id="detail">
                        <button id="de"><a href="../view/Music_Information.html">자세히 보기 > </a></button>
                    </td>
                </tr>
                <tr id="music_review">
                    <td><a href="앨범상세정보창"><img src="../resource/images/music/Kacey_Musgraves_Golden_Hour.JPG" alt=""></a></td>
                    <td>
                        <ul>
                            <li id="albumName"><a href="앨범상세정보창">Golden Hour</a></li>
                            <li>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                            <li id="artist"><a href="앨범상세정보창">Kacey Musgraves</a></li>
                            <li>ID :&nbsp;</li>
                            <li id="userId">koo93</li>
                            <li id="review_text">목소리가 따뜻해요</li>
                        </ul> 
                    </td>
                    <td id="detail">
                        <button id="de"><a href="../view/Music_Information.html">자세히 보기 > </a></button>
                    </td>
                </tr>
                <tr id="music_review">
                    <td><a href="앨범상세정보창"><img src="../resource/images/music/10465937_20200723150235_1000.JPG" alt=""></a></td>
                    <td>
                        <ul>
                            <li id="albumName"><a href="앨범상세정보창">다시 여기 바닷가</a></li>
                            <li>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                            <li id="artist"><a href="앨범상세정보창">싹쓰리(유드래곤,린다G,비룡)</a></li>
                            <li>ID :&nbsp;</li>
                            <li id="userId">kim1234</li>
                            <li id="review_text">여행 가고싶다</li>
                        </ul> 
                    </td>
                    <td id="detail">
                        <button id="de"><a href="../view/Music_Information.html">자세히 보기 > </a></button>
                    </td>
                </tr>
                <tr id="music_review">
                    <td><a href="앨범상세정보창"><img src="../resource/images/music/Adele_25.JPG" alt=""></a></td>
                    <td>
                        <ul>
                            <li id="albumName"><a href="앨범상세정보창">25</a></li>
                            <li>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                            <li id="artist"><a href="앨범상세정보창">Adele</a></li>
                            <li>ID :&nbsp;</li>
                            <li id="userId">USER01</li>
                            <li id="review_text">책읽을 때 들으면 좋은 음악이에요</li>
                        </ul> 
                    </td>
                    <td id="detail">
                        <button id="de"><a href="../view/Music_Information.html">자세히 보기 > </a></button>
                    </td>
                </tr>
                <tr id="music_review">
                    <td><a href="앨범상세정보창"><img src="../resource/images/music/Ed_Sheeran_X.JPG" alt=""></a></td>
                    <td>
                        <ul>
                            <li id="albumName"><a href="앨범상세정보창">X(Deluxe Edition)</a></li>
                            <li>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                            <li id="artist"><a href="앨범상세정보창">Ed Sheeran</a></li>
                            <li>ID :&nbsp;</li>
                            <li id="userId">USER05</li>
                            <li id="review_text">추억이 많은 음악이에요</li>
                        </ul> 
                    </td>
                    <td id="detail">
                        <button id="de"><a href="../view/Music_Information.html">자세히 보기 > </a></button>
                    </td>
                </tr>
                <tr id="music_review">
                    <td><a href="앨범상세정보창"><img src="../resource/images/music/Kacey_Musgraves_Golden_Hour.JPG" alt=""></a></td>
                    <td>
                        <ul>
                            <li id="albumName"><a href="앨범상세정보창">Golden Hour</a></li>
                            <li>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                            <li id="artist"><a href="앨범상세정보창">Kacey Musgraves</a></li>
                            <li>ID :&nbsp;</li>
                            <li id="userId">koo93</li>
                            <li id="review_text">목소리가 따뜻해요</li>
                        </ul> 
                    </td>
                    <td id="detail">
                        <button id="de"><a href="../view/Music_Information.html">자세히 보기 > </a></button>
                    </td>
                </tr>
                <tr id="music_review">
                    <td><a href="앨범상세정보창"><img src="../resource/images/music/10465937_20200723150235_1000.JPG" alt=""></a></td>
                    <td>
                        <ul>
                            <li id="albumName"><a href="앨범상세정보창">다시 여기 바닷가</a></li>
                            <li>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                            <li id="artist"><a href="앨범상세정보창">싹쓰리(유드래곤,린다G,비룡)</a></li>
                            <li>ID :&nbsp;</li>
                            <li id="userId">kim1234</li>
                            <li id="review_text">여행 가고싶다</li>
                        </ul> 
                    </td>
                    <td id="detail">
                        <button id="de"><a href="../view/Music_Information.html">자세히 보기 > </a></button>
                    </td>
                </tr>
                <tr id="music_review">
                    <td><a href="앨범상세정보창"><img src="../resource/images/music/Adele_25.JPG" alt=""></a></td>
                    <td>
                        <ul>
                            <li id="albumName"><a href="앨범상세정보창">25</a></li>
                            <li>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                            <li id="artist"><a href="앨범상세정보창">Adele</a></li>
                            <li>ID :&nbsp;</li>
                            <li id="userId">USER01</li>
                            <li id="review_text">책읽을 때 들으면 좋은 음악이에요</li>
                        </ul> 
                    </td>
                    <td id="detail">
                        <button id="de"><a href="../view/Music_Information.html">자세히 보기 > </a></button>
                    </td>
                </tr>
                <tr id="music_review">
                    <td><a href="앨범상세정보창"><img src="../resource/images/music/Ed_Sheeran_X.JPG" alt=""></a></td>
                    <td>
                        <ul>
                            <li id="albumName"><a href="앨범상세정보창">X(Deluxe Edition)</a></li>
                            <li>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                            <li id="artist"><a href="앨범상세정보창">Ed Sheeran</a></li>
                            <li>ID :&nbsp;</li>
                            <li id="userId">USER05</li>
                            <li id="review_text">추억이 많은 음악이에요</li>
                        </ul> 
                    </td>
                    <td id="detail">
                        <button id="de"><a href="../view/Music_Information.html">자세히 보기 > </a></button>
                    </td>
                </tr>
                <tr id="music_review">
                    <td><a href="앨범상세정보창"><img src="../resource/images/music/Kacey_Musgraves_Golden_Hour.JPG" alt=""></a></td>
                    <td>
                        <ul>
                            <li id="albumName"><a href="앨범상세정보창">Golden Hour</a></li>
                            <li>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                            <li id="artist"><a href="앨범상세정보창">Kacey Musgraves</a></li>
                            <li>ID :&nbsp;</li>
                            <li id="userId">koo93</li>
                            <li id="review_text">목소리가 따뜻해요</li>
                        </ul> 
                    </td>
                    <td id="detail">
                        <button id="de"><a href="../view/Music_Information.html">자세히 보기 > </a></button>
                    </td>
                </tr>
                <tr id="music_review">
                    <td><a href="앨범상세정보창"><img src="../resource/images/music/10465937_20200723150235_1000.JPG" alt=""></a></td>
                    <td>
                        <ul>
                            <li id="albumName"><a href="앨범상세정보창">다시 여기 바닷가</a></li>
                            <li>&nbsp;&nbsp;|&nbsp;&nbsp;</li>
                            <li id="artist"><a href="앨범상세정보창">싹쓰리(유드래곤,린다G,비룡)</a></li>
                            <li>ID :&nbsp;</li>
                            <li id="userId">kim1234</li>
                            <li id="review_text">여행 가고싶다</li>
                        </ul> 
                    </td>
                    <td id="detail">
                        <button id="de"><a href="../view/Music_Information.html">자세히 보기 > </a></button>
                    </td>
                </tr>
            </table>
            <div class="search_bar">
                <table>
                    <tr id="numberList">
                        <td>
                            <ul>
                                <li class="numberList_page" id="leftPage"><a href="#">◀</a></li>
                                <li class="numberList_page" id="best_page1"><a href="#">1</a></li>
                                <li class="numberList_page" id="best_page2"><a href="#">2</a></li>
                                <li class="numberList_page" id="best_page3"><a href="#">3</a></li>
                                <li class="numberList_page" id="best_page4"><a href="#">4</a></li>
                                <li class="numberList_page" id="best_page5"><a href="#">5</a></li>
                                <li class="numberList_page" id="rightPage"><a href="#">▶</a></li>
                            </ul>
                        </td>
                    </tr>
                    <tr id="music_search">
                        <td>
                            <select class="search_tool" name="" id="select_tool">
                                <option value="곡명">곡명</option>
                                <option value="아티스트">아티스트</option>
                            </select>
                            <input class="search_tool" type="search" name="" id="text_tool" >
                            <input class="search_tool" type="button" id="confirm_tool" value="검색">
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

<%@ include file="/views/common/footer.jsp" %>
</body>
</html>