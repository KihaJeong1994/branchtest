<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
    <header style="background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);">
			<div class="container">
			   <div class="navbar-header">
		         <a class="navbar-brand" href="index.jsp" ><span style="color:black">ting</span></a> 
		       </div>
		        <div class="navbar-collapse collapse">
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
		    </div>
	</header>