<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section id="fh5co-contact" data-section="contact">
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center">
					<h2 class="to-animate">궁금하신 부분이 있나요?</h2>
					<div class="row">
						<div class="col-md-8 col-md-offset-2 subtext to-animate">
							<h3>언제나 ting은 열려있습니다!</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="row row-bottom-padded-md">
				<div class="col-md-6 to-animate">
					<h3>ting Info</h3>
					<ul class="fh5co-contact-info">
						<li class="fh5co-contact-address " >
							<i class="icon-home" ></i>
							부천시 소사구 심곡본동
						</li>
						<li><i class="icon-phone"></i> (123) 456-789</li>
						<li><i class="icon-envelope"></i>ting_manager@gmail.com</li>
						<li><i class="icon-globe"></i> <a href="#">ting.co</a></li>
					</ul>
				</div>
				
				
				<form action="qna_add"  method="post">
				<%-- 이자리는 로그인 한 후 회원의 아이값을 기준으로 문의 게시판을 작성
					value=22 값은 변수로 변경 가능 
					이름, 이메을 , 헨드폰도 모두 자동으로 불러 올영역 
				 --%>
				<input type="hidden" name="tingIdx" value="0">	
				<input type="hidden" name="boardTypeIdx" value="0">					
				<div class="col-md-6 to-animate">
					<h3>문의</h3>
					<div class="form-group ">
						<label for="email" class="sr-only">제목</label> 
						<input id="title" class="form-control" placeholder="제목" type="text" name="title">
					</div>
					<div class="form-group ">
						<label for="message" class="sr-only">내용</label>
						<textarea name="content" id="content" cols="30" rows="5" class="form-control" placeholder="내용"></textarea>
					</div>
					<div class="form-group ">
						<input class="btn btn-primary btn-lg" value="문의 보내기" type="submit" onclick="alert('문의가 정상적으로 접수되었습니다.\n3~5일 이내에 회원님의 이메일로\n답변이 전송될 예정입니다.');">
					</div>
				</div>
				</form>
		</div>
			</section>