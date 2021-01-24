<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!---------------------------------- header end ---------------------------------->
<!--여기에 내용 넣으세요-->

			<div id="mainContainer" class="container">
				<div class="twoColumn">
					<section class="mainCol">
					<br><br>
					<!-- 나의 프리미엄 -->
				<div class="좋아요"> 

				</div>

<!----------------------------------------------------------------------------------------->
<br><br>
<!--게시판 해더-->
	<header>
	<h1 align="center">♡내가 좋아하는 이성♡</h1>
	</header>
<!--게시판 해더-->
<br><br>
<!--게시판 테이블-->
	<div class = "TingToday_list contents-wrap">
		<table class="table table-striped"style="text-align: center; border: 1px solid #dddddd;" width="100">
			<thead>
				<tr style="background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);">						
					<th style="text-align: center;border-right: 1px solid #eeeeee; ">보낸 좋아요 목록</th>	
															
				</tr>
			</thead>								
			<tbody>
				<c:forEach items="${likeSend}" var="likeSend">
				 <tr>
				  <td><jsp:useBean id="now" class="java.util.Date" scope="request"/>
				  <fmt:parseDate value="${likeSend.sendTime }" var="sendTime" pattern="yyyy-MM-dd"/>
					<fmt:parseNumber value="${sendTime.time / (1000*60*60*24)}" integerOnly="true" var="sendTime"></fmt:parseNumber>
					<fmt:parseNumber value="${now.time / (1000*60*60*24)}" integerOnly="true" var="nowDate"></fmt:parseNumber>
				 <img src="resources/images/question.png" width="40" height="40" style="border-radius: 70%; border:1px solid gray;">
				  <a style="color:red;">&nbsp;&nbsp;${likeSend.clientDetailInfo.nickname}</a>님에게 좋아요를 보냈어요! 
				  
                  <c:if test="${likeSend.likeReceive.successOrNot eq 1}">
			      <a style="color:gray; ">&nbsp;&nbsp;&nbsp;&nbsp;두 분은 매칭되었어요♡</a>
			       </c:if>
                  <c:if test="${likeSend.likeReceive.successOrNot eq 0 and (nowDate - sendTime)-1 eq 0}">
			      <a style="color:gray; ">&nbsp;&nbsp;&nbsp;&nbsp;오늘 좋아요를 보냈어요! </a>
                  </c:if>
                  <c:if test="${likeSend.likeReceive.successOrNot eq 0 and (nowDate - sendTime)-1 ne 0}">
			      <a style="color:gray; ">&nbsp;&nbsp;&nbsp;&nbsp;좋아요를 보낸지${(nowDate - sendTime)-1}일이 지났어요....훌쩍 </a>
			       </c:if>
				  </td>
				 </tr>
				</c:forEach>

			
			</tbody>
		</table>			
	</div>
	</div>
	</div>
<!--게시판 테이블-->
