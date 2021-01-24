<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	
<!---------------------------------- header end ---------------------------------->
<br>



	<section id="fh5co-contact" data-section="contact">
		<div class="container">
			<div class="row">	
<div class = "TingToday_list" style="padding-left: 15%;" >
	<table class="w3-table-all notranslate">
				<form action="ask_result"  method="post" id="myForm">
				<%-- 이자리는 로그인 한 후 회원의 아이값을 기준으로 문의 게시판을 작성
					value=22 값은 변수로 변경 가능 
					이름, 이메을 , 헨드폰도 모두 자동으로 불러 올영역 
				 --%>	
				<input type="hidden" name="boardTypeIdx" value="1">			
				<div class="col-md-6 to-animate">
					<h3>신고 센터</h3>
					<div class="form-group ">
						<input type="hidden" name="tingIdx"value="<%=request.getParameter("tingIdx")%>">
						<label for="title" class="sr-only">신고 제목</label> 
						<input id="title" class="form-control" placeholder="제목" type="text" name="title">
					</div>
					<div class="form-group ">
						<label for="content" class="sr-only">신고 내용</label>
						<textarea name="content" id="content" cols="30" rows="5" class="form-control" placeholder="내용"></textarea>
					</div>
					<div class="form-group ">
						<input class="btn btn-primary btn-lg" value="신고하기" type="submit">
					</div>
				</div>
				</form>		          		                				             
	</table>
				</div>
				</div>
</div>
</section><br><br>
<br><br>
<!-- <script>
var option = {
		dataType : 'json', 
    url: "ask_result",
    success: function(res){
        alert("신고가 접수되었습니다."); //res Object안에 msg에는 결과 메시지가 담겨있습니다.
    },
    error: function(res){
        alert("에러가 발생했습니다.")
    }
}

$('#myForm').submit(function() { //submit이 발생하면
    $(this).ajaxSubmit(option); //옵션값대로 ajax비동기 동작을 시키고
    return false; //기본 동작인 submit의 동작을 막아 페이지 reload를 막는다.
});
</script>  -->
