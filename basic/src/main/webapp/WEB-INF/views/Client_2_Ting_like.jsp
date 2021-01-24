<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<script src="https://kit.fontawesome.com/37f7028146.js" crossorigin="anonymous"></script>
<!--여기에 내용 넣으세요-->
<section id="fh5co-about" >
		<div class="container">
			<div class="row">
				<div class="col-md-4 section-heading text-center to-animate">
					<h2 class="to-animate">♡♥이상형 지수♥♡</h2>
                  <c:if test="${heartCnt ne 0}">
					<h1 class="to-animate">${myClientDetailInfo.nickname}님은 <span style="color:red;">${heartCnt}</span>개의 하트를 가지고 있어요!</h1>
					<h3 class="to-animate">좋아요를 보낼 때 한 개의 하트가 소진되며,</h3>
					<h3 class="to-animate">매일 9시에 하트 두 개가 충전돼요!</h3>
					</c:if>
                  <c:if test="${heartCnt eq 0}">
					<h1 class="to-animate">힝..${myClientDetailInfo.nickname}님은 모든 하트를 소진하셨어요!</h1>
					<h3 class="to-animate">하트를 충전하러 갈까요?</h3>
					<input class="btn btn-primary btn-lg" value="하트충전" type="button" onclick="location.href = 'Premium_0_main'"/>
					</c:if>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate" style="background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%); border:white; border-radius: 5px;">
						<img src="resources/images/heart.png" alt="Ashok9701009" style="height:300px; width: 100%;">
						<div class="cnt"><h2>${myClientDetailInfo.nickname},${myClientDetailInfo.age}</h2>				
								<span>${myClientDetailInfo.selfIntro}</span>
						</div>
						<!-- 나중에 변수로 넣을 것 -->
					</div>
				</div>
				<div class="col-md-4">
					<div class="text-center to-animate">
					<div class="cnt">	
						<h2>당신의 취향에 80% 부합해요!</h2>	
						<h3 style="color:gray; ">( 90%이상이면 운명의 상대라는 소문이..?!)</h3>	
						<h2 style="color:#ff5675">강아지상</h2>	
						<h2 style="color:#ff5675"><i class="fas fa-dumbbell fa-1x"></i>&nbsp;체형:&nbsp;${clientDetailInfo.bodyShape}</h2>	
						<h2 style="color:#ff5675"><i class="fas fa-graduation-cap fa-1x"></i>&nbsp;학력:&nbsp;${clientDetailInfo.education}</h2>	
						<h2 style="color:#ff5675"><i class="fas fa-glass-cheers fa-1x"></i>&nbsp;음주여부:&nbsp;${clientDetailInfo.drink}</h2>	
						<h2 style="color:#ff5675"><i class="fas fa-smoking-ban fa-1x"></i>&nbsp;흡연여부:&nbsp;${clientDetailInfo.smoke}</h2>		
				<form method="POST" action="insertLikeReceive" id="insertLikeReceive">		
						<input type="hidden" name="clientIdx" value="${clientDetailInfo.clientIdx}"/>
			<input class="btn btn-lg likesend" style="background-image: linear-gradient(45deg, #ff9a9e 0%, #fad0c4 99%, #fad0c4 100%);color:#464646"value="좋아요 보내기" type="submit">
				</form>
					</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate" style="background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%); border:white; border-radius: 5px;">
						<img src="resources/images/heart.png" alt="Ashok9701009" style="height:300px; width: 100%;">
						<div class="cnt"><h2>${clientDetailInfo.nickname},${clientDetailInfo.age}</h2>				
								<span>${clientDetailInfo.selfIntro}</span>
					</div>
				</div>
			</div>
		</div>
		</div>
	</section>
	
<script type="text/javascript">
	$(function(){
		if(${heartCnt}<=0){
			$(".likesend").click(function(){
				alert("하트가 부족해요ㅜㅜ ");
				$("#insertLikeReceive").attr("action", "Premium_0_main");
			});
		}
		
	});
</script>