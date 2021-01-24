<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

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
			<script src="resources/js/modernizr-2.6.2.min.js"></script>
			<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
			<script src="resources/js/semantic.min.js"></script>
			<style>
			.ui inverted teal button {
			
			background-image: linear-gradient(45deg, #ff9a9e 0%, #fad0c4 99%, #fad0c4 100%);
			color:#464646
			
			
			}
			
			</style>
<style>
		html,
body {
   margin:0;
   padding:0;
   height:100%;
}
.contents-wrap {
   min-height:100%;
   position:relative;
   padding-bottom:300px;/* footer height */
}
.footer {
   width:100%;
   height:200px;
   position:absolute;
   bottom:0;
   background:#5eaeff;
  text-align: center;
  color: white;
}
	</style>    <header style="background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);">
			<div class="container">
			   <div class="navbar-header">
		         <a class="navbar-brand" href="index.jsp" style="color:#3c3c3c">ting</a> 
		       </div>
		        <div class="navbar-collapse collapse">
		          <ul class="nav navbar-nav navbar-right">
                  <li class="active" style="color:#3c3c3c"><a href="index.jsp"><span style="color:#3c3c3c">팅 이 란?</span></a></li>
                  <li><a href="Main_company_1_team"><span style="color:#3c3c3c">Team</span></a></li>
                  <li><a href="Tingtoday_0_main"><span style="color:#3c3c3c">팅 투 하 자!</span></a></li>
                  <li><a href="Premium_0_main"><span style="color:#3c3c3c">Premium</span></a></li>
                  <li><a href="Fun_0_main"><span style="color:#3c3c3c">F U N</span></a></li>
                  <li><a href="Client_2_Ting_main"><span style="color:#3c3c3c">문 의</span></a></li>
                  <c:if test="${sessionScope.UID eq null}">
                     <li><button class="btn btn-sm"  style="background-image: linear-gradient(45deg, #ff9a9e 0%, #fad0c4 99%, #fad0c4 100%);color:#464646" id="login">로그인</button></li>
                     <li><button class="btn btn-sm"  style="background-image: linear-gradient(45deg, #ff9a9e 0%, #fad0c4 99%, #fad0c4 100%);color:#464646" id="register">회원가입</button></li>
                  </c:if>
                  <c:if test="${sessionScope.UID ne null}">
                     <li><a><button class="btn btn-sm" style="background-image: linear-gradient(45deg, #ff9a9e 0%, #fad0c4 99%, #fad0c4 100%);color:#464646" id="logout">Logout</button></a></li>
                  </c:if>
               </ul>
		        </div>
		    </div>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
	</header>
	<center>
<h1><i class="fas fa-bullhorn"></i>신고가 완료되었습니다.<i class="fas fa-bullhorn"></i></h1>
	<button class="btn btn-sm"  style="background-image: linear-gradient(45deg, #ff9a9e 0%, #fad0c4 99%, #fad0c4 100%);color:#464646" class="close">닫기</button>
</center>
	
<script>
$(document).ready(function() {
	   $("button").click(function() {
		   close();
		  
	   });
	
});
</script>