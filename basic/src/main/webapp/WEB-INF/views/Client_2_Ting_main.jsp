<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<section id="fh5co-about" >
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center">
					<h2 class="to-animate">♡데일리 매칭♡</h2>
					<div class="row">
						<div class="col-md-8 col-md-offset-2 subtext to-animate">
					<h3 class="to-animate">당신의 선택은?</h3>
					<h1 class="to-animate">나나님은 <span style="color:red;">${heartCnt}</span>개의 하트를 가지고 있어요!</h1>
					<h3 class="to-animate">좋아요를 보낼 때 한 개의 하트가 소진되며,</h3>
					<h3 class="to-animate">매일 9시에 하트 두 개가 충전돼요!</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
			
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate" style="background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%); border:white; border-radius: 5px;">
						<h2>나와 똑같은 타입</h2>
						<img src="resources/images/heart.png" alt="Ashok9701009" style="height:300px; width: 100%; border-radius: 10px;">
						<div class="cnt">
						<h2>고양이,23</h2>				
								<span>반가워용</span>
						<br/>
						<br/>
						<input class="btn btn-primary btn-lg" value="더 알아보기" type="button" onclick="location.href = 'Client_2_Ting_like?clientIdx=1'"></div>
						<!-- 나중에 변수로 넣을 것 -->
					</div>
				</div>
			
			<c:forEach items="${idealRecommendation}" var="idealRecommendation">
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate" style="background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%); border:white; border-radius: 5px;">
						<h2>나의 이상형</h2>
						<img src="resources/images/heart.png" alt="Ashok9701009" style="height:300px; width: 100%; border-radius: 10px;">
						<div class="cnt">
						<h2>${idealRecommendation.clientDetailInfo.nickname},${idealRecommendation.clientDetailInfo.age}</h2>				
								<span>${idealRecommendation.clientDetailInfo.selfIntro}</span>
						<br/>
						<br/>
						<input class="btn btn-primary btn-lg" value="더 알아보기" type="button" onclick="location.href = 'Client_2_Ting_like?clientIdx=${idealRecommendation.clientDetailInfo.clientIdx }'"></div>
						<!-- 나중에 변수로 넣을 것 -->
					</div>
				</div>
			</c:forEach>
			</div>
		</div>
		</section>
