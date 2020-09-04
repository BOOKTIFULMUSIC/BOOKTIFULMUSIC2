<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOOKTIFULMUSIC 회원가입</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/join.css" />
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	<div id="content">
        <p id="page_logo"><b>BOOKTIFUL<br>MUSIC</b></p>
        <p id="greeting">반갑습니다. 회원정보를 입력해주세요.<br> 회원가입 후 도서 / 음악 장르 취향 설정이 가능합니다.</p>
        <div id="input_user_info">
            <form id="joinForm" method="post" action="/BOOKTIFULMUSIC/mInsert.me" onsubmit="return validate();">
                <p>이름</p>
                <input type="text" id="name" name="name" placeholder=" 이름을 입력하세요." required="required">
                <p>아이디</p>
                <input type="text" id="userId" name="userId" placeholder=" 아이디를 입력하세요." required="required">
                <button id="useridchk">중복확인</button>
                <p>비밀번호</p>
                <input type="password" id="userpwd" name="userpwd" placeholder=" 8~16자리 비밀번호를 입력해주세요" required="required">
                <p>비밀번호 확인</p>
                <input type="password" id="userpwdchk" name="userpwdchk" placeholder=" 다시 한 번 입력해주세요.">
                <p>이메일</p>
                <input type="email" id="email" name="email" placeholder=" 이메일을 입력하세요." >
                <p>전화번호</p>
                <select id="tel1" name="tel1">
                    <option value="010">010</option>
                    <option value="011">011</option>
                    <option value="016">016</option>
                    <option value="017">017</option>
                    <option value="019">019</option>
                </select>
                <input type="text" id="tel2" name="tel2"placeholder="(-) 생략">
                <p>생년월일</p>
                <input type="date" id="birth" name="birth">
                <p>성별</p>
                <input type="radio" id="gender" name="gender" value="남자" checked><label>남자</label>
                <input type="radio" id="gender" name="gender" value="여자"><label>여자</label>
                <p>주소</p>
                <input type="text" id="zipCode" name="zipCode" placeholder="우편번호를 입력하세요.">
                <button id="find_post" onclick="addrSearch();">우편번호 찾기</button>
                <input type="text" id="detail_address" name="detail_address" placeholder="상세 주소를 입력해주세요.">
                <input type="text" id="detail_address2" name="detail_address2">

                <button type="submit" id="join_btn" onclick="insertMember();">회원가입</button>
            </form>
        </div>
        </div>
        <%@ include file="../common/footer.jsp" %>
        <script>
        	function insertMember(){
        		$("#joinForm").submit();
        	}
        	
        	$("#joinForm").submit(function(event){
				if($("#userpwd").val() == "" || $("#userId").val() == "") alert("아이디나 비밀번호는 필수 값입니다.");
				else return;
				event.preventDefault();
			});
        	
	        $('#useridchk').click(function(){
	        	$.ajax({
					url:"/BOOKTIFULMUSIC/idDup.me",
					type:'post',
					data:{
						userId:$('#userId').val()
					},success:function(data){
						console.log(data);
						if(data=='ok'){
							alert('사용 가능한 아이디 입니다.');
						}else{
							alert('이미 사용중인 아이디 입니다.');
							$('#userId').select();
						}
					},error:function(request,status,error){
						console.log("--- ERROR ----");
						console.log(request);
						console.log(status);
						console.log(error);
					}
				});
			});
	        function addrSearch(){
	        	new daum.Postcode({
		            oncomplete: function(data) {
		                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
		
		                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		                var fullAddr = ''; // 최종 주소 변수
		                var extraAddr = ''; // 조합형 주소 변수
		
		                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                    fullAddr = data.roadAddress;
		
		                } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                    fullAddr = data.jibunAddress;
		                }
		
		                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
		                if(data.userSelectedType === 'R'){
		                    //법정동명이 있을 경우 추가한다.
		                    if(data.bname !== ''){
		                        extraAddr += data.bname;
		                    }
		                    // 건물명이 있을 경우 추가한다.
		                    if(data.buildingName !== ''){
		                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                    }
		                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
		                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
		                }
		
		                // 우편번호와 주소 정보를 해당 필드에 넣는다.
		                $('#zipCode').val(data.zonecode); //5자리 새우편번호 사용
		                
		                $('#detail_address').val(fullAddr);
		
		                // 커서를 상세주소 필드로 이동한다.
		                $('#detail_address2').focus();
		            }
	        }).open();
        };
		    function chk(re,ele,msg){
	            if(!re.test(ele.value)){ // regExp.test() 정규표현식에 있는 내용이 있으면 true, 없으면 false
	                alert(msg);
	                ele.select();
	                return false;
	            }
	        return true;
	        }
	
	        function validate(){
	            var name = document.getElementById('name');
	            var id = document.getElementById('userId');
	            var pwd = document.getElementById('userpwd');
	            var pwdchk = document.getElementById('userpwdchk');
	            var email = document.getElementById('email');
	            var tel2 = document.getElementById('tel2');
	
	            // 이름
	            // 2글자 이상, 한글만
	            if(!chk(/^[가-힣]{2,}$/,name,"이름은 한글로 2글자 이상 입력해주세요.")){
	                return false;
	            }
	
	            // 아이디
	            // 영어소문자로 시작 4-12자리
	            if(!chk(/^[a-z][a-z\d]{4,11}$/,id,"아이디 첫 글자 는 영문 소문자, 4~12자리를 입력해주세요.")){
	                return false;
	            }
	
	            // 비밀번호
	            // 영어소문자로 시작, 대문자 포함 8-16자리
	            if(!chk(/^[A-Z][a-z\d]{8,15}$/,pwd,"비밀번호는 대문자로 시작, 8~16자리를 입력해주세요.")){
	                return false;
	            }
	
	            // 비밀번호 확인
	            if(pwd.value != pwdchk.value){
	                alert('비밀번호 확인!');
	                return false;
	            }
	
	            // 이메일
	            // 4글자 이상
	            if(!chk(/^[\w]{4,}@[\w]+(\.[\w]+){1,3}$/,email,"이메일 형식에 어긋납니다.")){
	                return false;
	            }
	
	            // 전화번호 7~8자리
	            if(!chk(/^[0-9]{7,8}$/,tel2,"전화번호를 다시 확인해주세요.")){
	                return false;
	            }
	        }
    	</script>
</body>
</html>