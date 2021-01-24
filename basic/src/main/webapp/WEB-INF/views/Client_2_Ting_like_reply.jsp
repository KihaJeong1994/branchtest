<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section id="fh5co-about" >
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-center">
					<h2 class="to-animate">♡♥이상형 지수♥♡</h2>
					<h1 class="to-animate">2021신년맞이 특별 혜택☞맞좋아요를 보낼 때에는 하트가 소진되지 않아요!</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate" style="background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%); border:white; border-radius: 5px;">
						<img src="resources/images/heart.png" alt="Ashok9701009" style="height:300px; width: 100%;">
						<div class="cnt"><h2>${myClientDetailInfo.name},${myClientDetailInfo.age}</h2>				
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
						<h3 style="color:#ff5675;">강아지상</h3>	
						<h3 style="color:#ff5675;">근육질</h3>	
						<h3 style="color:#ff5675;">대졸자</h3>	
						<h3 style="color:#ff5675">가끔 마심</h3>	
						<h3 style="color:#ff5675">비흡연자</h3>	
						<h3 style="color:#ff5675">예의바름</h3>	
				<form method="POST" action="Client_2_Ting_result2">	
						<input type="hidden" name="otherIdx" value="${clientDetailInfo.clientIdx}"/>
			<input class="btn btn-lg" style="background-image: linear-gradient(45deg, #ff9a9e 0%, #fad0c4 99%, #fad0c4 100%);color:#464646"value="좋아요 보내기" type="submit">
				</form>
					</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="fh5co-person text-center to-animate" style="background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%); border:white; border-radius: 5px;">
						<img src="resources/images/heart.png" alt="Ashok9701009" style="height:300px; width: 100%;">
						<div class="cnt"><h2>${clientDetailInfo.name},${clientDetailInfo.age}</h2>				
								<span>${clientDetailInfo.selfIntro}</span>
					</div>
				</div>
			</div>
		</div>
		</div>
	</section>