<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html class="no-js">
<head>

	<title>회원가입_가입방법선택</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta name="viewport"
			content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

		<link rel="stylesheet" href="resources/css/animate.css">
		<link rel="stylesheet" href="resources/css/simple-line-icons.css">
		<link rel="stylesheet" href="resources/css/magnific-popup.css">
		<link rel="stylesheet" href="resources/css/bootstrap.css">
		<link rel="stylesheet" href="resources/css/style.css">
		<link rel="stylesheet" type="text/css" href="resources/css/reset.css">
		<link rel="stylesheet" type="text/css" href="resources/css/site.css">
		<link rel="stylesheet" type="text/css"
			href="resources/css/container.css">
		<link rel="stylesheet" type="text/css" href="resources/css/grid.css">
		<link rel="stylesheet" type="text/css" href="resources/css/input.css">
		<link rel="stylesheet" type="text/css" href="resources/css/segment.css">
		<link rel="stylesheet" href="resources/css/signin.css">
		<script src="resources/js/modernizr-2.6.2.min.js"></script>

		<!--semantic-->
		<link rel="stylesheet" type="text/css"
			href="resources/css/semantic.min.css">
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"
			integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
			crossorigin="anonymous"></script>
		<script src="resources/js/semantic.min.js"></script>
		<script src="resources/js/form.js"></script>
		<script src="resources/js/transition.js"></script>
<!---------------------------------function----------------------------------------------->
<script>
	$(document).ready(function(){ 
	
		$('#submit_func').click(function(){
			location.href='Main_register_2_membership';
		//submit 함수는 따로 추가

		/* // 취소
		$(".cencle").on("click", function(){
			
			location.href = "/login";
					    
		}) */
			if($("#email").val()==""){
				alert("이메일을 입력해주세요.");
				$("email").focus();
				return false;
			}
			if($("#password").val()==""){
				alert("비밀번호를 입력해주세요.");
				$("#password").focus();
				return false;
			}
			if($("#phone").val()==""){
				alert("핸드폰 번호를 입력해주세요.");
				$("#phone").focus();
				return false;
			}
		});		
	});//ready end
</script>
</head>

<body class="text-center">

	<div class="form-signin">

		<h1 style="color: #52d3aa; margin: 0px;">ting</h1>
		<h2 style="color: #52d3aa; margin: 0px;">회원가입</h2>
		<h3 style="color: #ff8edf;">모든 항목 필수 입력입니다!</h3>

		<!--===============interlock ajax 추가 삽입필요=================-->

		<!-- <form class="ui large form" method="post"
			action="/basic-1.0.0-BUILD-SNAPSHOT/register"> -->
		<form class="ui large form" method="post" action="${pageContext.request.contextPath}/register">
			<div class="ui stacked segment">
				<div class="field">
					<input type="email" id="email" name="email" placeholder="이메일">
				</div>
				<div class="field">
					<input type="password" id="password" name="password" placeholder="비밀번호">
				</div>
				<!-- <div class="field">
            <input type="password" name="password_check" placeholder="비밀번호 확인">
       </div> -->
				<div class="field">
					<input type="tel" name="phone" id="phone" placeholder="핸드폰 번호">
					<button class="compact ui button" style="float: right; margin: 3px">인증번호받기</button>
				</div>
				<br>

				<!-- <div class="field">
			<input type="text" name="auth_tel" placeholder="인증 번호 입력">
		    <button class="compact ui button" style = "float:right;margin:3px">확인</button>	
	   </div> -->

				<div class="field">
					<button class="ui fluid large teal submit button">회원가입 !</button>
					<!--===============submit은 함수사용=================-->
				</div>
			</div>

			<div class="ui error message"></div>
			<!--나중에 interlock-->

		</form>

		<p>
			<a href="#" target="_blank">이용약관&nbsp;|&nbsp;</a> <a href="#"
				target="_blank">개인정보처리방침</a>
		</p>

	</div>


	<!---------------------------------script----------------------------------------------->
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/jquery.easing.1.3.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.waypoints.min.js"></script>
	<script src="resources/js/jquery.stellar.min.js"></script>
	<script src="resources/js/jquery.countTo.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/magnific-popup-options.js"></script>
	<script src="resources/js/main.js"></script>

</body>
</html>