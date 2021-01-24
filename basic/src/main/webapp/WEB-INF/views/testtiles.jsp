<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="container">
<p>안녕하세요</p>
			<div class="row">
				<div class="col-md-12 section-heading text-center">
					<h2 class="to-animate">데일리 매칭</h2>
					<div class="row">
						<div class="col-md-8 col-md-offset-2 subtext to-animate">
					<h3 class="to-animate">당신의 선택은?</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
			<c:forEach items="${clientDetailInfo}" var="clientDetailInfo">
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate" style="background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%); border:white; border-radius: 5px;">
						<img src="resources/images/heart.png" alt="Ashok9701009" style="height:300px; width: 100%; border-radius: 10px;">
						<div class="cnt">
						<h2>${clientDetailInfo.name},${clientDetailInfo.age}</h2>				
								<span>${clientDetailInfo.selfIntro}</span>
						<br/>
						<br/>
						<input class="btn btn-primary btn-lg" value="더 알아보기" type="button" onclick="location.href = 'Client_2_Ting_like?clientIdx=${clientDetailInfo.clientIdx }'"></div>
						<!-- 나중에 변수로 넣을 것 -->
					</div>
				</div>
			</c:forEach>
			</div>
		</div>