<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


	<style>
	a {
		font-family: 'Jua', sans-serif
	}
	
	.pagination>li>a {
		height: 50px;
		padding-top: 15px;
		width: 45px;
	}

	.TingToday_list {
		text-align: left;
	}
	
	.list_start {
		text-align: center;
	}
	
	.list_detail {
		display: inline-block;
	}
	</style>

<!---------------------------------- header end ---------------------------------->
<!--여기에 내용 넣으세요-->

<div id="mainContainer" class="container">
	<div class="twoColumn">
		<section class="mainCol">
			<br>
			<br>
			<!-- 나의 프리미엄 -->
			<div class="infoCenter">
				<!--  
               <h1>인기글 tingToday TOP</h1><br>
               <ul class="notifications count-3">

               <li class="primary">
               <a class="notification" href="#" >
                     <br><br><br><br><h2 style="color:white">♥하♥하♥</h2></a></li>
               <li class="primary">
               <a class="notification" href="#" >
                     <br><br><br><br><h2 style="color:white">♥김♥수♥환</h2></a></li>
               <li class="primary">
               <a class="notification" href="#" >
                     <br><br><br><br><h2 style="color:white">♥수♥환♥쌤</h2></a></li>
               <li class="primary">
               <a class="notification" href="#" >
                     <br><br><br><br><h2 style="color:white">♥하♥하♥</h2></a></li>
               <li class="primary">
               <a class="notification" href="#" >
                     <br><br><br><br><h2 style="color:white">♥하♥하♥</h2></a></li>

               </ul>-->
			</div>

			<!----------------------------------------------------------------------------------------->
			<br>
			<br>
			<!--게시판 해더-->
			<header>
			
				<h1 align="center">TingToday 게시판</h1>
			</header>
			<!--게시판 해더-->
			<br>
			<br>
			<!--게시판 테이블-->
			<div class="TingToday_list">
				<div class="list_start">
					<c:forEach items="${boardList}" var="list">
						<div class="list_detail">
							<a href="Tingtoday_0_view?boardIdx=${list.boardIdx}"><img src="resources/upload/${list.fname}"
								style="width: 300px; height: 300px; margin: 10px;"></a>
						</div>
						<c:choose>
							<c:when test="${list.fsize==0}"></c:when>
							<c:otherwise>
								<!-- <a href='resources/upload/${list.fname}'> -->
								<!-- </a>  -->
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</div>
				<br> <br>
				<%-- <form method="post" action="Tingtoday_0_main" style="float: right;">
					                        <input type="hidden" name="page" value="${param.page}">
					<select name="searchType">
						<option value="1">아이디</option>
						<option value="2">제목</option>
						<!--                            <option value="3">내용</option> -->
					</select>&nbsp; <input name="searchValue"> <input type="submit"
						value="Search">
				</form> --%>

		<form method="post" action="Tingtoday_0_main"  style="right:-65%; position: relative;">
<%-- 								<input type="hidden" name="page" value="${param.page}"> --%>
								<select name="searchType">
									<option value="">검색</option>
									<option value="1">닉네임</option>
									<option value="2">내용</option>
<!-- 									<option value="3">내용</option> -->
								</select>&nbsp; <input name="searchValue"> 
								<input type="submit" value="Search">
							</form>

				<!--페이지-->
				<br>
				<div class="page_num1" align="center" style="padding: 3px;">
					<div id="pageTd">
						<%-- page 처리  --%>
						<%@include file="pageProcess.jsp"%>
					</div>
				</div>
				<!--페이지-->


				<c:if test="${sessionScope.clientIdx ne null}">
				<button class="ui teal button" style="right:-84%;  position: relative;" onclick="location.href='Tingtoday_0_write'">글쓰기</button>
				</c:if>
			</div>
	</div>
</div>
<!--게시판 테이블-->

<!-- 리모콘         
   <div class="remocon" style="display: block;position: fixed; top: 200px; left: 1690px; z-index: 1000;border: 2px solid #ddd;">                  
      <div class="remocon_main" style="border-bottom:  2px solid #ddd;text-align: center">
            <strong>리모콘</strong>                    
       </div>         
      <div class="remote_cont" style="padding: 10px;border-bottom:  2px solid #ddd;">
          <a href="#">인연 찾으러가기 </a>                           
      </div>                       
      <div class="ui large buttons">
      <button class="ui button">닫기</button>
      <div class="or"></div>
      <button class="ui button">목록</button>
      </div>            
   </div>
리모콘       -->

<!--검색창폼-->
<!--    <form action="#" method="POST" class="form-inline" align="right" style="padding-right: 10%">
      <div class="input-group" align="right">
         <p>                     
            <select class="form-control" name="target">
            <option value="all">전체</option>
            <option value="title">제목</option>
            <option value="nickname">작성자</option>
            </select>                     
         <input type="text" class="form-control" name="keyword" value="">         
         <button class="huge ui button">검색</button>            
         </p>
      </div>
   </form> -->
<!--검색창폼-->



<br>
<br>
<br>
<br>

<!---------------------------------- Footer start ---------------------------------->

