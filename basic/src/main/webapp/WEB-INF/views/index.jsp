<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
 <html class="no-js">
	<head>

		<title>ting</title>
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta http-equiv = "Content-Type" content="text/html; charset=utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<link rel="stylesheet" href="resources/css/animate.css">
			<link rel="stylesheet" href="resources/css/simple-line-icons.css">
			<link rel="stylesheet" href="resources/css/magnific-popup.css">
			<link rel="stylesheet" href="resources/css/bootstrap.css">
			<link rel="stylesheet" href="resources/css/style.css">
			<link rel="stylesheet" type="text/css" href="resources/css/semantic.min.css">
			
			<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css"> 
			<script src="resources/js/modernizr-2.6.2.min.js"></script>
			<script
			  src="https://code.jquery.com/jquery-3.1.1.min.js"
			  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
			  crossorigin="anonymous"></script>
			<script src="resources/js/semantic.min.js"></script>
	</head>
	<body>
	<header role="banner" id="fh5co-header" >
			<div class="container">
			    <nav class="navbar navbar-default">
		        <div class="navbar-header">
				<a href="index.jsp" class="js-fh5co-nav-toggle fh5co-nav-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
		         <a class="navbar-brand" href="index.jsp">ting</a> 
		        </div>
		        <div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="Client_2_Ting_main"><span style="color:rgb(0 0 0 / 80%);">오늘의 추천</span></a></li>
						<li><a href="Tingtoday_0_main"><span style="color:rgb(0 0 0 / 80%);">팅투데이</span></a></li>
						<li><a href="Premium_0_main"><span style="color:rgb(0 0 0 / 80%);">프리미엄</span></a></li>
						<li><a href="Fun_0_main"><span style="color:rgb(0 0 0 / 80%);">FUN</span></a></li>
						<li><a href="Client_6_question"><span style="color:rgb(0 0 0 / 80%);">문의</span></a></li>
						<c:if test="${sessionScope.UID eq null}">
							<li><button class="ui inverted teal button" id="login"><span style="color:rgb(0 0 0 / 80%);">로그인</span></button></li>
							<li><button class="ui inverted teal button" id="register"><span style="color:rgb(0 0 0 / 80%);">회원가입</span></button></li>
						</c:if>
						<c:if test="${sessionScope.UID ne null}">
						<li><a href="Client_0_main" data-nav-section="mypage"><span style="color:rgb(0 0 0 / 80%);">마이페이지</span></a></li>
						 <li><a  style="color:rgb(0 0 0 / 80%);">♡${sessionScope.nickname}님♡</a></li>
							<li><button class="ui inverted teal button" id="logout">로그아웃</button></li>
						</c:if>
					</ul>
				</div>
			    </nav>
		  </div>
	</header>
	<section id="fh5co-home" style="background-image: url(resources/images/mainimg.jpg);" data-stellar-background-ratio="0.5">
      <div class="gradient"></div>
      <div class="container">
         <div class="text-wrap">
            <div class="text-inner">
            <div class="row">
						<div class="col-md-8 col-md-offset-2" >
							<h1 class="to-animate"  >매일 이상형이 찾아오다</h1>
							<h2 class="to-animate">ting</h2><br>
						</div>
					</div>
               <div class="home__slider" style="padding-left: 1px; height:431px; width:300;"> 
                   <div class="bxslider">
                       <div><img src="resources/images/main2.jpg" alt="그림1" height=500px; width=1200px;></div>
                       <div><img src="resources/images/main1.jpg" alt="그림2" height=500px; width=1200px;></div>
                       <div><img src="resources/images/main3.jpg" alt="그림3" height=500px; width=1200px;></div> 
                   </div> 
               </div> 
         	</div>
       	</div>
      </div>
      <div class="slant"></div>
   </section>
	 
	<!---------------------------------script----------------------------------------------->
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/jquery.easing.1.3.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.waypoints.min.js"></script>
	<script src="resources/js/jquery.stellar.min.js"></script>
	<script src="resources/js/jquery.countTo.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/magnific-popup-options.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
	<script src="resources/js/google_map.js"></script>
	<script src="resources/js/main.js"></script>	
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<script>
		$(document).ready(function() {
			var main = $('.bxslider').bxSlider({
				mode : 'fade',
				auto : true, //자동으로 슬라이드 
				controls : true, //좌우 화살표	
				autoControls : true, //stop,play 
				pager : true, //페이징 
				pause : 3000,
				autoDelay : 0,
				slideWidth : 1200,
				speed : 1000,
				stopAutoOnclick : true
			});

			$(".bx-stop").click(function() { // 중지버튼 눌렀을때 
				main.stopAuto();
				$(".bx-stop").hide();
				$(".bx-start").show();
				return false;
			});

			$(".bx-start").click(function() { //시작버튼 눌렀을때 
				main.startAuto();
				$(".bx-start").hide();
				$(".bx-stop").show();
				return false;
			});

			$(".bx-start").hide(); //onload시 시작버튼 숨김. 
		});
	</script>
	</body>
</html>

