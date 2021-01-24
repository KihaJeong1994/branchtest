<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

   <!---------------------------------- header end ---------------------------------->

<section id="fh5co-testimonials" data-section="testimonials">

   
   <div class="row">
		<div class="col-md-12 section-heading text-center">
			<h2>Q1</h2>
		</div>
		<div class="col-md-05 section-heading text-center">
			<h1>이상형의 나이는?</h1>
		</div>
		<div class="options__ouvgd text-center">
		<h2>최소 최대</h2>
			<input type="text" class="ui inverted red minAge" style="width:200px; height: 50px; font-size:20px; margin-bottom: 50px;" value="0">~
			<input type="text" class="ui inverted red maxAge" style="width:200px; height: 50px; font-size:20px; margin-bottom: 50px;" value="0"><br>
			<button class="ui inverted red button ageclick" style="width:100px; font-size:20px;">다음</button>
		</div>
   </div>
     
   <div class="row" style="display: none">
		<div class="col-md-12 section-heading text-center">
			<h2>Q2</h2>
		</div>
		<div class="col-md-05 section-heading text-center">
			<h1>이상형과의 거리는?</h1>
		</div>
		<div class="options__ouvgd text-center">
		<h2>최소 최대</h2>
			<input type="text" class="ui inverted red minDistance" style="width:200px; height: 50px; font-size:20px; margin-bottom: 50px;" value="0">km~
			<input type="text" class="ui inverted red maxDistance" style="width:200px; height: 50px; font-size:20px; margin-bottom: 50px;" value="0">km<br>
			<button class="ui inverted red button distanceclick" style="width:100px; font-size:20px;">다음</button>
		</div>
   </div>  

   <div class="row" style="display: none">
		<div class="col-md-12 section-heading text-center">
			<h2>Q3</h2>
		</div>
		<div class="col-md-05 section-heading text-center">
			<h1>이상형의 키는?</h1>
		</div>
		<div class="options__ouvgd text-center">
		<h2>최소 최대</h2>
			<input type="text" class="ui inverted red minHeight" style="width:200px; height: 50px; font-size:20px; margin-bottom: 50px;" value="0">cm~
			<input type="text" class="ui inverted red maxHeight" style="width:200px; height: 50px; font-size:20px; margin-bottom: 50px;" value="0">cm<br>
			<button class="ui inverted red button heightclick" style="width:100px; font-size:20px;">다음</button>
		</div>
   </div>  
	
	
   
   <div class="row" style="display: none">
		<div class="col-md-12 section-heading text-center">
			<h2>Q4</h2>
		</div>
		<div class="col-md-05 section-heading text-center">
			<h1>이상형의 종교는?</h1>
		</div>
		<div class="options__ouvgd text-center">
			<button class="ui inverted red button religion" style="width:400px; font-size:20px;" value="none">무교</button><br>
			<button class="ui inverted red button religion" style="width:400px; font-size:20px;" value="christ">기독교</button><br>
			<button class="ui inverted red button religion" style="width:400px; font-size:20px;" value="cath"">천주교</button><br>
			<button class="ui inverted red button religion" style="width:400px; font-size:20px;" value="budda">불교</button><br>
			<button class="ui inverted red button religion" style="width:400px; font-size:20px;" value="none">상관없음</button><br>
		</div>
	</div>

   <div class="row" style="display: none">
	   <div class="col-md-12 section-heading text-center">
		   <h2>Q5</h2>
	   </div>
	   <div class="col-md-05 section-heading text-center">
		   <h1>이상형의 학력은?</h1>
	   </div>
	   <div class="options__ouvgd text-center">
		<button class="ui inverted red button education" style="width:400px;  font-size:20px;" value="midd">중졸</button><br>
		   <button class="ui inverted red button education" style="width:400px; font-size:20px;" value="high">고졸</button><br>
		   <button class="ui inverted red button education" style="width:400px; font-size:20px;" value="univ">대졸</button><br>
		   <button class="ui inverted red button education" style="width:400px; font-size:20px;" value="doct">석박사</button><br>
	   	   <button class="ui inverted red button education" style="width:400px; font-size:20px;" value="none">상관없음</button><br>
		</div>
   </div>
   
 
   
   
   <div class="row" style="display: none">	
	   <div class="col-md-12 section-heading text-center">
		   <h2>Q6</h2>
	   </div>
	   <div class="col-md-05 section-heading text-center">
		   <h1>이상형의 체형은?</h1>
	   </div>
	   <div class="options__ouvgd text-center">
		   <button class="ui inverted red button bodyShape" style="width:400px; font-size:20px;"value="thin">마름</button><br>
		   <button class="ui inverted red button bodyShape" style="width:400px; font-size:20px;"value="normal">보통</button><br>
		   <button class="ui inverted red button bodyShape" style="width:400px; font-size:20px;"value="muscle">근육질</button><br>
		   <button class="ui inverted red button bodyShape" style="width:400px; font-size:20px;"value="fat">뚱뚱</button><br>
	   		<button class="ui inverted red button bodyShape" style="width:400px; font-size:20px;" value="none">상관없음</button><br>
		</div>
   </div>

    <div class="row" style="display: none">	
	   <div class="col-md-12 section-heading text-center">
		   <h2>Q7</h2>
	   </div>
	   <div class="col-md-05 section-heading text-center">
		   <h1>이상형의 주량은?</h1>
	   </div>
	   <div class="options__ouvgd text-center">
		   <button class="ui inverted red button drink" style="width:400px; font-size:20px;"value="0">안 마심</button><br>
		   <button class="ui inverted red button drink" style="width:400px; font-size:20px;"value="0.5">1병 이하</button><br>
		   <button class="ui inverted red button drink" style="width:400px; font-size:20px;"value="1.5">1병 - 2병</button><br>
		   <button class="ui inverted red button drink" style="width:400px; font-size:20px;"value="2.5">2병 초과</button><br>
	   		<button class="ui inverted red button drink" style="width:400px; font-size:20px;" value="none">상관없음</button><br>
		</div>
   </div>

    <div class="row" style="display: none">	
	   <div class="col-md-12 section-heading text-center">
		   <h2>Q8</h2>
	   </div>
	   <div class="col-md-05 section-heading text-center">
		   <h1>당신의 흡연습관은?</h1>
	   </div>
	   <div class="options__ouvgd text-center">
		   <button class="ui inverted red button smoke" style="width:400px; font-size:20px;"value="none"">비흡연</button><br>
		   <button class="ui inverted red button smoke" style="width:400px; font-size:20px;"value="sometimes">가끔</button><br>
		   <button class="ui inverted red button smoke" style="width:400px; font-size:20px;"value="often">종종</button><br>
		   <button class="ui inverted red button smoke" style="width:400px; font-size:20px;"value="always">매일</button><br>
	   		<button class="ui inverted red button smoke" style="width:400px; font-size:20px;" value="none">상관없음</button><br>
		</div>
   </div>
   
   
   

   
   
	   
   <div class="row" style="display: none">	
	   <div class="col-md-12 section-heading text-center">
		   <h2>이상형 작성을 완료하셨습니다.</h2>
		   <h2>ting을 시작해볼까요?</h2>
	   </div>
	   <div class="col-md-05 section-heading text-center">
		<form method="POST" action="insertidealType">
			<input type="hidden" name="minAge" id="minAge" value="">
			<input type="hidden" name="maxAge" id="maxAge" value="">
			<input type="hidden" name="minSalary" id="minSalary" value="">
			<input type="hidden" name="maxSalary" id="maxSalary" value="">
			<input type="hidden" name="minDistance" id="minDistance" value="">
			<input type="hidden" name="maxDistance" id="maxDistance" value="">
			<input type="hidden" name="minHeight" id="minHeight" value="">
			<input type="hidden" name="maxHeight" id="maxHeight" value="">
			<input type="hidden" name="religion" id="religion" value="">
			<input type="hidden" name="education" id="education" value="">
			<input type="hidden" name="bodyShape" id="bodyShape" value="">
			<input type="hidden" name="drink" id="drink" value="">
			<input type="hidden" name="smoke" id="smoke" value="">
			<button class="btn btn-primary" type="submit" >저장 후 시작!</button>
	   </form>
	   </div>
   </div>

   
   

   
   <script>
   $(document).ready(function() {
	   $("button").click(function() {
		   $(this).parent().parent().hide().next().show();
	   });
	
   });
   </script>
   <script type="text/javascript">
	$('.ageclick').click(function() {
		$('#minAge').val($('.minAge').val());
		$('#maxAge').val($('.maxAge').val());
	});
	$('.salaryclick').click(function() {
		$('#minSalary').val($('.minSalary').val());
		$('#maxSalary').val($('.maxSalary').val());
	});
	
	$('.distanceclick').click(function() {
		$('#minDistance').val($('.minDistance').val());
		$('#maxDistance').val($('.maxDistance').val());
	});
	$('.heightclick').click(function() {
		$('#minHeight').val($('.minHeight').val());
		$('#maxHeight').val($('.maxHeight').val());
	});
	
	$('.religion').click(function() {
		$('#religion').val($(this).val());
	});
	$('.education').click(function() {
		$('#education').val($(this).val());
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
	
	
	</script>

</section>


