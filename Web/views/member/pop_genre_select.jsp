
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.web.jsp.Member.model.vo.*" import="java.util.ArrayList"%>
<%  Member m = (Member)session.getAttribute("member"); 
	ArrayList<PopListB> pb = (ArrayList<PopListB>)request.getAttribute("popListB");
	ArrayList<PopListM> pm = (ArrayList<PopListM>)request.getAttribute("popListM");
	String userId = (String)request.getAttribute("userId");
			
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>BOOKTIFUL MUSIC</title>
    <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
    <style>
    body{
        border-top: 30px solid rgb(227, 233, 255);
        border-bottom:30px solid rgb(227, 233, 255);
        width: 1000px;
        height: 1000px;
        margin: 0;
    }
    .header{ text-align: center; margin-top: 60px;}
    .header b{ font-size: 24px; }
    #page_logo{ font-size: 36px; color: rgb(227, 233, 255); font-weight: 600;}
    form{ width: 500px; margin: auto;}
    #check {
        width: 450px;
        height: 230px;
        border: 0;
        border: 1px solid rgb(105,140,255);
        
        margin: auto;
        margin-top: 30px;
        text-align:center;
    }
    #subject{ font-size: 20px; margin: 0 20px 0 20px;}

    #check ul {
        width: 420px;
        height: 200px;
        margin: 5px 0 0 15px;
        padding: 0;
        
    }

    #check ul>li {
        list-style: none;
        float: left;
        padding: 1.5%;
        border-radius: 15px;
        cursor: pointer;
        margin: 6px 3% 6px 3%;
        
    }

    #check input{ display: none;}

    #btn{ border: 0; width: 300px; height: 45px; background:rgb(227, 233, 255); margin: 60px 0 30px 97px;}

    </style>
</head>

<body>
    <div class="header">
        <p id="page_logo">BOOKTIFUL<br>MUSIC</p>
        <b># 취향 수정</b>
        <p id="info">반갑습니다. 원하시는 장르를 선택해주세요.</p>
    </div>
    <form id="pop_select_b" method="get" action="/BOOKTIFULMUSIC/popInsert.mo">
    <fieldset id="check">
    <legend><p id="subject"># 도서</p></legend>
        <ul>
            <li><input type="checkbox" value="인문" id="bgenre1" name="bgenre"><label for="bgenre1"># 인문</label></li>
            <li><input type="checkbox" value="소설" id="bgenre2" name="bgenre"><label for="bgenre2"># 소설</label></li>
            <li><input type="checkbox" value="경제/경영" id="bgenre3" name="bgenre"><label for="bgenre3"># 경제/경영</label></li>
            <li><input type="checkbox" value="정치/사회" id="bgenre4" name="bgenre"><label for="bgenre4"># 정치/사회</label></li>
            <li><input type="checkbox" value="자기계발" id="bgenre5" name="bgenre"><label for="bgenre5"># 자기계발</label></li>
            <li><input type="checkbox" value="시/에세이" id="bgenre6" name="bgenre"><label for="bgenre6"># 시/에세이</label></li>
            <li><input type="checkbox" value="역사" id="bgenre7" name="bgenre"><label for="bgenre7"># 역사</label></li>
            <li><input type="checkbox" value="과학" id="bgenre8" name="bgenre"><label for="bgenre8"># 과학</label></li>
            <li><input type="checkbox" value="문화" id="bgenre9" name="bgenre"><label for="bgenre9"># 문화</label></li>
            <li><input type="checkbox" value="건강" id="bgenre10" name="bgenre"><label for="bgenre10"># 건강</label></li>
            <li><input type="checkbox" value="외국어" id="bgenre11" name="bgenre"><label for="bgenre11"># 외국어</label></li>
            <li><input type="checkbox" value="어린이" id="bgenre12" name="bgenre"><label for="bgenre12"># 어린이</label></li>
            <li><input type="checkbox" value="가정/육아" id="bgenre13" name="bgenre"><label for="bgenre13"># 가정/육아</label></li>
            <li><input type="checkbox" value="예술/대중문화" id="bgenre14" name="bgenre"><label for="bgenre14"># 예술/대중문화</label></li>
            <li><input type="checkbox" value="만화" id="bgenre15" name="bgenre"><label for="bgenre15"># 만화</label></li>
        </ul>
    </fieldset>
    
    
    <fieldset id="check">
    <legend><p id="subject"># 음악</p></legend>
        
        <ul>
            <li><input type="checkbox" value="댄스" id="mgenre1" name="mgenre"><label for="mgenre1"># 댄스</label></li>
            <li><input type="checkbox" value="발라드" id="mgenre2" name="mgenre"><label for="mgenre2"># 발라드</label></li>
            <li><input type="checkbox" value="락/힙합" id="mgenre3" name="mgenre"><label for="mgenre3"># 락/힙합</label></li>
            <li><input type="checkbox" value="R&B/Soul" id="mgenre4" name="mgenre"><label for="mgenre4"># R&B/Soul</label></li>
            <li><input type="checkbox" value="인디" id="mgenre5" name="mgenre"><label for="mgenre5"># 인디</label></li>
            <li><input type="checkbox" value="재즈" id="mgenre6" name="mgenre"><label for="mgenre6"># 재즈</label></li>
            <li><input type="checkbox" value="트로트" id="mgenre7" name="mgenre"><label for="mgenre7"># 트로트</label></li>
            <li><input type="checkbox" value="포크/블루스" id="mgenre8" name="mgenre"><label for="mgenre8"># 포크/블루스</label></li>
            <li><input type="checkbox" value="OST" id="mgenre9" name="mgenre"><label for="mgenre9"># OST</label></li>
            <li><input type="checkbox" value="POP" id="mgenre10" name="mgenre"><label for="mgenre10"># POP</label></li>
            <li><input type="checkbox" value="월드뮤직" id="mgenre11" name="mgenre"><label for="mgenre11"># 월드뮤직</label></li>
            <li><input type="checkbox" value="뉴에이지" id="mgenre12" name="mgenre"><label for="mgenre12"># 뉴에이지</label></li>
            <li><input type="checkbox" value="클래식" id="mgenre13" name="mgenre"><label for="mgenre13"># 클래식</label></li>
            <li><input type="checkbox" value="종교음악" id="mgenre14" name="mgenre"><label for="mgenre14"># 종교음악</label></li>
            <li><input type="checkbox" value="어린이/태교" id="mgenre15" name="mgenre"><label for="mgenre15"># 어린이/태교</label></li>
        </ul>
		<input type="hidden" value="<%= m.getUserId() %>" name="userId">
    </fieldset>
    <button type="submit" id="btn" onclick="btn()">수정 완료</button>
    </form>
    
    
         
    <div id="selector1">
    	<% String pbg = ""; 
    	   int i=0;
           for(i=0;i<pb.size();i++){
    		  pbg = pbg +  pb.get(i).getPop_list_B() + "," ; 
    	   };
    	%>
		<input type="hidden" value =  <%= pbg %>  name="userId1">
		
    </div> 
    
    <div id="selector2">
    	<% String pmg = ""; 
    	   int j=0;
           for(j=0;j<pm.size();j++){
    		  pmg = pmg +  pm.get(j).getPop_list_M() + "," ; 
    	   };
    	%>
		<input type="hidden" value =  <%= pmg %>  name="userId1">
		
    </div> 
    

    
    <% %>
    
    
    <script>
	    var all_a = document.getElementsByName('mgenre');
	    var all_b = document.getElementsByName('bgenre');


	    
    	// DB에서 가져오는 부분
	    $(document).ready(function(){
        	var pbg = $('#selector1').find("input").val();
        	var pbg_each = pbg.split(",");
        	
        	for(var j=0; j<all_b.length;j++){
        		for(var i=0; i<pbg_each.length-1;i++){
        			if(all_b[j].value==pbg_each[i]){
        				all_b[j].checked=true;
        				all_b[j].parentNode.style.background = "rgb(227, 233, 255)";
        			}
        		}
        	
        	};

        	
        	
        	var pmg = $('#selector2').find("input").val();
        	var pmg_each = pmg.split(",");
        	
			for(var j=0; j<all_a.length;j++){
        		for(var i=0; i<pmg_each.length-1;i++){
        			if(all_a[j].value==pmg_each[i]){
        				all_a[j].checked=true;
        				all_a[j].parentNode.style.background = "rgb(227, 233, 255)";
        			}
        		}
        	};
        });
	    
	    
    	// CLICK이벤트
    	$(document).ready(function(){
            $("input:checkbox").on('click', function () {
                for (i = 0; i < all_b.length; i++) {
                    if (all_b[i].checked)  {
                    	all_b[i].parentNode.style.background = "rgb(227, 233, 255)";
                    }else {
                    	all_b[i].parentNode.style.background = "white";
                    }
                }
                
                for (i = 0; i < all_a.length; i++) {
                    if (all_a[i].checked)  {
                    	all_a[i].parentNode.style.background = "rgb(227, 233, 255)";
                    }else {
                    	all_a[i].parentNode.style.background = "white";
                    }
                }
            }); 
    	});
            
    	
    	
    	// 전송 버튼

    	function btn(){
    	    $('#pop_select_b').submit();
          
    	}; 
    	
  	
    	
   	   
    	    
    	    
        
        
        
        
        

        
    </script>

    
</body>

</html>