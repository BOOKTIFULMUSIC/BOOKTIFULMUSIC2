// .js파일에 jquery 사용할 수 있게하기
var script = document.createElement('script');
script.src = 'https://code.jquery.com/jquery-3.4.1.min.js';
script.type = 'text/javascript';
document.getElementsByTagName('head')[0].appendChild(script);
// 공지사항  등록하러
$(function() {
	$("#input_btn2").click(function() {
	    location.href = "views/admin/NoticeInsertForm.jsp";
	});
});
// 공지사항 등록 취소
$(function() {
	$("#cancelBtn").click(function() {
	    location.href = "/semi/nSelectAll.ano";
	});
});
// 공지사항 삭제 버튼
$(function() {
	$("#input_btn1").click(function() {
		var result = confirm("삭제하시겠습니까?");
		
		if(result) {
			location.href="views/admin/NoticeInsertForm.jsp";
		} else {
			location.href = "/BOOKTIFULMISIC/nSelectAll.ano";
		}
	});
});

