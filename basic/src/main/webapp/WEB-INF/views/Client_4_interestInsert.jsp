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
			<h2>Part2</h2>
		</div>
		<div class="col-md-05 section-heading text-center">
			<h1>당신의 관심사를 알려주세요</h1>
		</div>
		<div class="col-md-offset-3 col-md-6 options__ouvgd text-center">

			<c:forEach items="${InterestList}" var="list">
			<div class="ui checkbox" style="width:200px; height:50px; font-size:30px;">
					<input type="checkbox" name="clientInterest" value='${list.interestIdx}' style="width:150px; height:50px; font-size:30px;"> 
					<label>${list.interestName}</label>
			</div>
			
			</c:forEach>
			
			<div>
				<button class="sum ui inverted red button">다음</button>
			</div>
		</div>
	</div>
   
   <script>
   $(document).ready(function() {
	   
	  $('.sum').click(function(){
		  var arr=[];
		  $('input[name="clientInterest"]:checked').each(function(i){arr.push($(this).val())});
		  console.log(arr);
		  location.href='insertClientInterest?arr='+arr;
	  })
   });
   </script>

   
   
	   
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
	  
   });
   </script>
   

</section>



