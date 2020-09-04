<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="content">
            <p id="title">주문 / 결제 </p>
            <div id="product">
                <p id="p1">상품 확인</p>
                <ul id="bhead">
                    <li>상품명</li>
                    <li>가격</li>
                    <li>수량</li>
                    <li>배송일</li>
                </ul>
                <ul id="list">
                    <li><a href="../view/Book_Info.html"><img src="../resource/images/book/4179316.jpg" alt=""><p id="btitle">뷰티풀 퀘스천</p></a></li>
                    <li>13,500원</li>
                    <li>1</li>
                    <li><b>08/27</b> 예정</li>
                </ul>
                <ul id="list">
                    <li><a href="../view/Book_Info.html"><img src="../resource/images/book/4310706.jpg" alt=""><p id="btitle">1cm 다이빙</p></a></li>
                    <li>13,500원</li>
                    <li>1</li>
                    <li><b>08/27</b> 예정</li>
                </ul>
            </div>
            <div id="price">
                <img src="../resource/images/icon/plus.png" id="plus" alt="">
                <img src="../resource/images/icon/total.png" id="imgtotal" alt="">
                <div id="p_price">
                   <p>총 상품가격</p>
                   <p id="p_p1">27,000원</p>
                </div>
                <div id="fee">
                    <p>배송비</p>
                    <p id="p_p1">2500원</p>
                </div>
                <div id="total">
                    <div id="line"></div>
                    <div id="total_fee">
                        <p>최종 결제금액</p>
                    <p id="p_p1">29,500원</p>
                    </div>
                </div>
            </div>
            <div id="userinfo">
                <p id="p1">주문고객 정보 및 배송지</p>
                <div id="useraddress">
                    <p id="subtitle">&nbsp;&nbsp;&nbsp;주문고객정보</p>
                    <table class="underlineTable" cellspacing ="0";>
                        <colgroup>
                            <col style="width:30%;"/>
                            <col style="width:70%;"/>
                        </colgroup>
                            <tr>
                                <td><b>이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름</b></td>
                                <td style="color:#808080;"><input type="text" class="nonInput" placeholder="홍길동"></td>
                            </tr>
                            <tr>
                                <td ><b>아 이 디</b></td>
                                <td style="color:#808080;"><input type="text" class="nonInput" placeholder="USER01"></td>
                            </tr>
                            <tr>
                                <td><b>생년월일</b></td>
                                <td style="color:#808080;"><input type="text" class="nonInput" placeholder="1900 / 01 / 01"></td>
                            </tr>
                            <tr>
                                <td><b>E - Mail</b></td>
                                <td style="color:#808080;"><input type="text" class="nonInput" placeholder="HONG@naver.com"></td>
                            <tr style="height: 80px;" >
                                <td><b>전화번호</b></td>
                                <td style="color:#808080;">
                                    <select id="tel1">
                                        <option value="010">010</option>
                                        <option value="011">011</option>
                                        <option value="016">016</option>
                                        <option value="017">017</option>
                                        <option value="019">019</option>
                                    </select>
                                <input type="text" id="tel2" placeholder="(-) 생략">
                            <p id="info">이 번호로 주문진행과정이 안내됩니다.</p></td>
                            </tr>
                            
                           </table>
                </div>
                <div id="newadd">
                    <p id="subtitle">&nbsp;&nbsp;&nbsp;배송지</p>
                    <table class="underlineTable2" >
                        <tr>
                            <td><b>주&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;소</b></td>
                            <td>
                                <span>
                                    <span>
                                    <input class="form-control" id="" type="text" placeholder="06234">
                                    </span>
                                </span>
                                <button type="button" class="btn"><b>찾기</b></button>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <span>
                                    <span>
                                    <input class="form-control" id="" type="text" placeholder="서울특별시 강남구 테헤란로14길 6">
                                    </span>
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <span>
                                <input class="form-control" id="" type="text" placeholder="남도빌딩 3층">
                                </span>
                            </td>
                        </tr>
                        
                    </table>
                </div>
            </div>
            <div id="pay">
                <p id="p1">Payment</p>
                <div id="paymethod">
                    <div id="paycheck">
                        <p id="sub">결제수단</p>
                        <input type="radio" id="op1" name="way" value="신용카드" checked><label for="op1">신용카드</label>
                        <input type="radio" id="op2" name="way" value="계좌이체"><label for="op2">계좌이체</label>
                        <input type="radio" id="op3" name="way" value="무통장입금"><label for="op3">무통장입금</label>
                        <input type="radio" id="op4" name="way" value="카카오페이"><label for="op4">카카오페이</label>
                        <input type="radio" id="op5" name="way" value="핸드폰결제"><label for="op5">핸드폰결제</label>
                        <section id="way1">
                            <div id="detail">
                                <p id="sub">신용카드</p>
                                <select id="card">
                                    <option>신한카드</option>
                                    <option>국민카드</option>
                                    <option>우리카드</option>
                                    <option>삼성카드</option>
                                    <option>현대카드</option>
                                </select>
                                <br>
                                <p id="info">제휴카드가 있으시면 할인받을 수 있습니다.<br>
                                50,000원 이상 구매시 6개월 무이자 할부 가능</p>
                            </div>
                        </section>
                        <section id="way2">
                            <div id="detail">
                            <p id="sub">계좌이체</p>
                            <p id="info">결제금액이 입력하신 계좌에서 자동으로<br>이체되는 서비스로 계좌이체시 본인인증 필요.</p>
                            </div>
                        </section>
                        <section id="way3">
                            <div id="detail">
                                <p id="sub1">무통장입금</p>
                            </div>
                        </section>
                        <section id="way4">
                             <div id="detail">
                                <p id="sub1">카카오페이</p>
                            </div>
                        </section>
                        <section id="way5">
                            <div id="detail">
                                <p id="sub1">핸드폰결제</p>
                            </div>
                        </section>
                    </div>   
                </div>
                <div id="payment">
                    <form>
                    <p>고객님이 선택하신 결제 수단은 '신용카드'입니다.</p>
                    <div id="paytotal">
                        <p>최종 결제금액 : <b>29,500원</b></p>
                    </div>
                    <p>주문하실 상품, 가격, 배송정보, 할인정보 등을 확인하였으며,<br>구매에 동의하시겠습니까?</p>
                    <input type="checkbox" id="agree" name="agree"><label for="agree">&nbsp;&nbsp;동의합니다.</label><br>
                    <input type="submit" id="paybtn" value="결제하기">
                    </form>
                </div>
            </div>
            </div>
        </div>

</body>
</html>