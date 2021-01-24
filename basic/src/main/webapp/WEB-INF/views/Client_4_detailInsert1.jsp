<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html class="no-js">
   <head>

	   <title>기본폼	</title>

		   <meta http-equiv="X-UA-Compatible" content="IE=edge">
		   <meta http-equiv = "Content-Type" content="text/html; charset=utf-8">
		   <meta name="viewport" content="width=device-width, initial-scale=1">

		   <link rel="stylesheet" href="resources/css/animate.css">
		   <link rel="stylesheet" href="resources/css/simple-line-icons.css">
		   <link rel="stylesheet" href="resources/css/magnific-popup.css">
		   <link rel="stylesheet" href="resources/css/bootstrap.css">
		   <link rel="stylesheet" href="resources/css/style.css">
		   <link rel="stylesheet" type="text/css" href="resources/css/semantic.min.css">

		   <script src="resources/js/modernizr-2.6.2.min.js"></script>
		   <script
			 src="https://code.jquery.com/jquery-3.1.1.min.js"
			 integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
			 crossorigin="anonymous"></script>
		   <script src="resources/js/semantic.min.js"></script>
<!-- Client_4_detailInsert1.do -->
   </head>



<section id="fh5co-testimonials" data-section="testimonials">

   
   <div class="row">
		<div class="col-md-12 section-heading text-center">
			<h2>Q1</h2>
		</div>
		<div class="col-md-05 section-heading text-center">
			<h1>당신의 이름은?</h1>
		</div>
		<div class="options__ouvgd text-center">
			<input type="text" class="ui inverted red name" style="width:200px; height: 50px; font-size:20px; margin-bottom: 50px;" value=""><br>
			<button class="ui inverted red button nameclick detailinfo" style="width:100px; font-size:20px;">다음</button>
		</div>
   </div>
   <div class="row" style="display: none">
		<div class="col-md-12 section-heading text-center">
			<h2>Q2</h2>
		</div>
		<div class="col-md-05 section-heading text-center">
			<h1>당신의 닉네임을 정해주세요</h1>
		</div>
		<div class="options__ouvgd text-center">
			<input type="text" class="ui inverted red nickname" style="width:200px; height: 50px; font-size:20px; margin-bottom: 50px;" value=""><br>
			<button class="ui inverted red button nicknameclick detailinfo" style="width:100px; font-size:20px;">다음</button>
		</div>
   </div>  
   <div class="row" style="display: none">
	   <div class="col-md-12 section-heading text-center">
		   <h2>Q3</h2>
	   </div>
	   <div class="col-md-05 section-heading text-center">
		   <h1>당신의 성별은?</h1>
	   </div>
	   <div class="options__ouvgd text-center">
		   <button class="ui inverted red button gender detailinfo" style="width:400px; font-size:20px;" value="남성">남성</button><br>
		   <button class="ui inverted red button gender detailinfo" style="width:400px; font-size:20px;" value="여성">여성</button> 
	   </div>
   </div>  

   <div class="row" style="display: none">
		<div class="col-md-12 section-heading text-center">
			<h2>Q4</h2>
		</div>
		<div class="col-md-05 section-heading text-center">
			<h1>당신의 직업은?</h1>
		</div>
		<div class="options__ouvgd text-center">
			<input type="text" class="ui inverted red job" style="width:200px; height: 50px; font-size:20px; margin-bottom: 50px;" value=""><br>
			<button class="ui inverted red button jobclick detailinfo" style="width:100px; font-size:20px;">다음</button>
		</div>
	</div> 
	
	<div class="row" style="display: none">
		<div class="col-md-12 section-heading text-center">
			<h2>Q5</h2>
		</div>
		<div class="col-md-05 section-heading text-center">
			<h1>당신의 나이는?</h1>
		</div>
		<div class="options__ouvgd text-center">
			<input type="text" class="ui inverted red age" style="width:200px; height: 50px; font-size:20px; margin-bottom: 50px;" value="0"><br>
			<button class="ui inverted red button ageclick detailinfo" style="width:100px; font-size:20px;">다음</button>
		</div>
	</div>

	
   
   <div class="row" style="display: none">
		<div class="col-md-12 section-heading text-center">
			<h2>Q6</h2>
		</div>
		<div class="col-md-05 section-heading text-center">
			<h1>당신의 종교는?</h1>
		</div>
		<div class="options__ouvgd text-center">
			<button class="ui inverted red button religion detailinfo" style="width:400px; font-size:20px;" value="무교">무교</button><br>
			<button class="ui inverted red button religion detailinfo" style="width:400px; font-size:20px;" value="기독교">기독교</button><br>
			<button class="ui inverted red button religion detailinfo" style="width:400px; font-size:20px;" value="천주교"">천주교</button><br>
			<button class="ui inverted red button religion detailinfo" style="width:400px; font-size:20px;" value="불교">불교</button><br>
			<button class="ui inverted red button religion detailinfo" style="width:400px; font-size:20px;" value="그외">그외</button><br>
		</div>
	</div>

   <div class="row" style="display: none">
	   <div class="col-md-12 section-heading text-center">
		   <h2>Q7</h2>
	   </div>
	   <div class="col-md-05 section-heading text-center">
		   <h1>당신의 학력은?</h1>
	   </div>
	   <div class="options__ouvgd text-center">
		<button class="ui inverted red button education detailinfo" style="width:400px;  font-size:20px;" value="중졸">중졸</button><br>
		   <button class="ui inverted red button education detailinfo" style="width:400px; font-size:20px;" value="고졸">고졸</button><br>
		   <button class="ui inverted red button education detailinfo" style="width:400px; font-size:20px;" value="대졸">대졸</button><br>
		   <button class="ui inverted red button education detailinfo" style="width:400px; font-size:20px;" value="석박사">석박사</button>
	   </div>
   </div>
   
	<div class="row" style="display: none">
		<div class="col-md-12 section-heading text-center">
			<h2>Q8</h2>
		</div>
		<div class="col-md-05 section-heading text-center">
			<h1>당신의 키는?</h1>
		</div>
		<div class="options__ouvgd text-center">
			<input type="text" class="ui inverted red height" style="width:200px; height: 50px; font-size:20px; margin-bottom: 50px;" value="0"><br>
			<button class="ui inverted red button heightclick detailinfo" style="width:100px; font-size:20px;">다음</button>
		</div>
	</div>   
   
   
   <div class="row" style="display: none">	
	   <div class="col-md-12 section-heading text-center">
		   <h2>Q9</h2>
	   </div>
	   <div class="col-md-05 section-heading text-center">
		   <h1>당신의 체형은?</h1>
	   </div>
	   <div class="options__ouvgd text-center">
		   <button class="ui inverted red button bodyShape detailinfo" style="width:400px; font-size:20px;"value="날씬함">날씬함</button><br>
		   <button class="ui inverted red button bodyShape detailinfo" style="width:400px; font-size:20px;"value="보통">보통</button><br>
		   <button class="ui inverted red button bodyShape detailinfo" style="width:400px; font-size:20px;"value="근육질">근육질</button><br>
		   <button class="ui inverted red button bodyShape detailinfo" style="width:400px; font-size:20px;"value="통통한">통통한</button><br>
	   </div>
   </div>

    <div class="row" style="display: none">	
	   <div class="col-md-12 section-heading text-center">
		   <h2>Q10</h2>
	   </div>
	   <div class="col-md-05 section-heading text-center">
		   <h1>당신의 주량은?</h1>
	   </div>
	   <div class="options__ouvgd text-center">
		   <button class="ui inverted red button drink detailinfo" style="width:400px; font-size:20px;"value="안 마심">안 마심</button><br>
		   <button class="ui inverted red button drink detailinfo" style="width:400px; font-size:20px;"value="1병 이하">1병 이하</button><br>
		   <button class="ui inverted red button drink detailinfo" style="width:400px; font-size:20px;"value="1병 - 2병">1병 - 2병</button><br>
		   <button class="ui inverted red button drink detailinfo" style="width:400px; font-size:20px;"value="2병 초과">2병 초과</button><br>
	   </div>
   </div>

    <div class="row" style="display: none">	
	   <div class="col-md-12 section-heading text-center">
		   <h2>Q11</h2>
	   </div>
	   <div class="col-md-05 section-heading text-center">
		   <h1>당신의 흡연습관은?</h1>
	   </div>
	   <div class="options__ouvgd text-center">
		   <button class="ui inverted red button smoke detailinfo" style="width:400px; font-size:20px;"value="비흡연"">비흡연</button><br>
		   <button class="ui inverted red button smoke detailinfo" style="width:400px; font-size:20px;"value="가끔">가끔</button><br>
		   <button class="ui inverted red button smoke detailinfo" style="width:400px; font-size:20px;"value="종종">종종</button><br>
		   <button class="ui inverted red button smoke detailinfo" style="width:400px; font-size:20px;"value="매일">매일</button><br>
	   </div>
   </div>
   
   <div class="row" style="display: none">
		<div class="col-md-12 section-heading text-center">
			<h2>Q12</h2>
		</div>
		<div class="row" >
			<div class="col-md-offset-2 col-md-5 text-center">
				<h1>당신에 대해 자세히 알고 싶어요!</h1><br>
				<h1>당신에 대해 구체적으로 말해주세요</h1>
				<div class="options__ouvgd text-center">
					<input type="textarea" class="ui inverted red selfIntro" style="width:400px; height: 200px; font-size:20px; margin-bottom: 50px;" value=""><br>
					<button class="ui inverted red button selfIntroclick detailinfo" style="width:100px; font-size:20px;">다음</button>
				</div>
			</div>
			
			<div class="col-md-5 text-center" >
				<h1>당신이 쓴 자기 소개로 당신에 대해 알아볼까요?</h1>
				<div class="mycharacter">
					
				</div>
				<div class="options__ouvgd text-center">
					<button class="ui inverted red button check" style="width:150px; font-size:20px;">확인하기</button>
				</div>
			</div>
		</div>>
		
	</div> 
   

   
   
	   
   <div class="row" style="display: none">	
	   <div class="col-md-12 section-heading text-center">
		   <h2>프로필 작성을 완료하셨습니다</h2>
	   </div>
	   <div class="col-md-05 section-heading text-center">
		<form method="POST" action="insertClientDetailInfo">
			<input type="hidden" name="name" id="name" value="">
			<input type="hidden" name="nickname" id="nickname" value="">
			<input type="hidden" name="gender" id="gender" value="">
			<input type="hidden" name="job" id="job" value="">
			<input type="hidden" name="age" id="age" value="">
			<input type="hidden" name="salary" id="salary" value="">
			<input type="hidden" name="residence" id="residence" value="">
			<input type="hidden" name="religion" id="religion" value="">
			<input type="hidden" name="education" id="education" value="">
			<input type="hidden" name="height" id="height" value="">
			<input type="hidden" name="bodyShape" id="bodyShape" value="">
			<input type="hidden" name="drink" id="drink" value="">
			<input type="hidden" name="smoke" id="smoke" value="">
			<input type="hidden" name="latitude" id="latitude" value="">
			<input type="hidden" name="longitude" id="longitude" value="">
			<input type="hidden" name="selfIntro" id="selfIntro" value="">
			<button class="btn btn-primary" type="submit" >저장</button>
	   </form>
	   </div>
   </div>

   
   

   
   <script>
   $(document).ready(function() {
	   $(".detailinfo").click(function() {
		   $(this).parent().parent().hide().next().show();
	   });
	   
	   $(".check").click(function() {
		   $(".mycharacter").html("");
		   $(".mycharacter").append("<img src='resources/upload/cat.jpg'" 
				   +"width='250'><br><h1>당신은 솔직한 고양이 타입이시네요!</h1><h1> 당신에게 어울리는 타입을 만나보아요</h1>"); // 태그 추가
	   });
	// Geolocation API에 액세스할 수 있는지를 확인
	   if (navigator.geolocation) {
            //위치 정보를 얻기
            navigator.geolocation.getCurrentPosition (function(pos) {
                $('#latitude').val(pos.coords.latitude);     // 위도
                $('#longitude').val(pos.coords.longitude); // 경도
            });
        } else {
            alert("이 브라우저에서는 Geolocation이 지원되지 않습니다.")
        }
   });
   </script>
   <script type="text/javascript">
	$('.nameclick').click(function() {
		$('#name').val($('.name').val());
	});
	$('.nicknameclick').click(function() {
		$('#nickname').val($('.nickname').val());
	});
	
	$('.gender').click(function() {
		$('#gender').val($(this).val());
	});
	$('.jobclick').click(function() {
		$('#job').val($('.job').val());
	});
	$('.ageclick').click(function() {
		$('#age').val($('.age').val());
	});
	$('.salary').click(function() {
		$('#salary').val($(this).val());
	});
	$('.religion').click(function() {
		$('#religion').val($(this).val());
	});
	$('.education').click(function() {
		$('#education').val($(this).val());
	});
	$('.heightclick').click(function() {
		$('#height').val($('.height').val());
	});
	$('.bodyShape').click(function() {
		$('#bodyShape').val($(this).val());
	});
	$('.drink').click(function() {
		$('#drink').val($(this).val());
	});
	$('.smoke').click(function() {
		$('#smoke').val($(this).val());
	});
	$('.selfIntroclick').click(function() {
		$('#selfIntro').val($('.selfIntro').val());
	});
	
	</script>

</section>



