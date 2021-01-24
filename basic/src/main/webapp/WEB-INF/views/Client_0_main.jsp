<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<div class="container">
			<div class=" section-heading text-center">
				<div align="center"
					style="width: 70%; height: auto; border: 1px solid #E6E6E6; border-radius: 1em; margin: 0 auto;">
					<div
						style="height: auto; width: 90%; text-align: left; padding-bottom: 40px;">
						<div class="WriterInfo"
							style="padding-bottom: 225px; padding-top: 15px">
							<div class="" style="margin-right: 0px; margin-left: 100px">
								<a href="#" class="thumb"> <img class=""
									src="resources/img_photo/${myDetailInfo.photo}"
									alt="프로필 사진" align="left" 
									style="width: 200px; height: 200px; margin-right:20px; border-radius: 70%; border:1px solid white;">
								</a>
							</div>
							<div
								style="padding-top: 30px; float: right; width: 50%; height: %; text-align: center;">
								
								<p>
									<button class="btn btn-sm"  style="background-image: linear-gradient(45deg, #ff9a9e 0%, #fad0c4 99%, #fad0c4 100%);color:#464646" id=""
										style="padding: 15px 30px; font-size: 16px; height:500px;" onclick="location.href='Client_5_like_Received'">&nbsp;받은 좋아요&nbsp;</button>
								
									<button class="btn btn-sm"  style="background-image: linear-gradient(45deg, #ff9a9e 0%, #fad0c4 99%, #fad0c4 100%);color:#464646" id=""
										style="padding: 15px 30px; font-size: 16px;"  onclick="location.href='Client_1_info_update'">상세정보 수정</button>
								</p>
								<p>
									<button class="btn btn-sm"  style="background-image: linear-gradient(45deg, #ff9a9e 0%, #fad0c4 99%, #fad0c4 100%);color:#464646" id=""
										style="padding: 15px 30px; font-size: 16px;"  onclick="location.href='Client_5_like_Sent'">&nbsp;보낸 좋아요&nbsp;</button>
										
										
								
									<button class="btn btn-sm"  style="background-image: linear-gradient(45deg, #ff9a9e 0%, #fad0c4 99%, #fad0c4 100%);color:#464646" id=""
										style="padding: 15px 30px; font-size: 16px;"  onclick="location.href='Client_1_info_updateCharming'">매력포인트  수정</button>
								</p>
								<p>
									<button class="btn btn-sm"  style="background-image: linear-gradient(45deg, #ff9a9e 0%, #fad0c4 99%, #fad0c4 100%);color:#464646" id=""
										style="padding: 15px 30px; font-size: 16px;"  onclick="location.href='Client_1_info_updateInterest'">관심사 수정</button>
								
									<button class="btn btn-sm"  style="background-image: linear-gradient(45deg, #ff9a9e 0%, #fad0c4 99%, #fad0c4 100%);color:#464646" id=""
										style="padding: 15px 30px; font-size: 16px;"  onclick="location.href='PaymentList'">구매내역 확인</button>
								
								<p>
								<a href="no/Chatting_test" class="btn btn-sm"  style="background-image: linear-gradient(45deg, #ff9a9e 0%, #fad0c4 99%, #fad0c4 100%);color:#464646" id=""
										style="padding: 15px 30px; font-size: 16px;"  >나의 채팅</a></p>
							
						</div></div></div>
						<!-- 프로필 -->

						<!-- 내용 -->

						<section>
							<div
								style="height: auto; width: 100%; padding: 40px 0px 40px 0px; text-align: content; border-bottom: 1px solid #E6E6E6; border-top: 1px solid #E6E6E6;">

								<div align="center"
									style="width: 100%; height: 80px; border: 0px solid;">
									<i class="far fa-laugh-squint fa-4x"></i>
									<font size="50pt">나는 어떤 사람?</font>
									<i class="far fa-grin-wink fa-4x"></i>
								</div>
								<div style="text-align: center;">
									<font size="5">
									<p><span><i class="fas fa-cat fa-1x"></i></span>&nbsp;야옹.... 고양이를 닮았어요 - 고양이상 회원</p>
									<p><i class="fas fa-smoking-ban fa-1x"></i>흡연여부:&nbsp;${myDetailInfo.smoke}</p>
									<p><i class="fas fa-glass-cheers fa-1x"></i>음주여부:&nbsp;${myDetailInfo.drink}</p>
									<p><i class="fas fa-cross fa-1x"></i>종교:&nbsp;${myDetailInfo.religion}</p>
									<p><i class="fas fa-graduation-cap fa-1x"></i>학력:&nbsp;${myDetailInfo.education}</p>
									<p><i class="fas fa-dumbbell fa-1x"></i>체형:&nbsp;${myDetailInfo.bodyShape}</p>
									<p><i class="fas fa-child fa-1x"></i>키:&nbsp;${myDetailInfo.height}cm</p>
									</font>
								</div>
							</div>
						</section>

						<section>
							<div
								style="height: auto; width: 100%; padding: 40px 0px 40px 0px; text-align: content; border-bottom: 1px solid #E6E6E6; border-top: 1px solid #E6E6E6;">

								<div align="center"
									style="width: 100%; height: 80px; border: 0px solid;">
									<font size="50pt">자기소개</font>
									
								</div>
								<div style="text-align: center;">
									<font size="5">
									<p> ${myDetailInfo.selfIntro}
									</p>
									</font>
								</div>
							</div>
						</section>
						<section>
							<div
								style="height: auto; width: 100%; padding: 40px 0px 40px 0px; text-align: content; border-bottom: 1px solid #E6E6E6; border-top: 1px solid #E6E6E6;">
								<div align="center"
									style="width: 100%; height: 80px; border: 0px solid;">
									<font size="50pt">당신의 MBTI</font><br>
								</div>
								<div style="text-align: center;">
									<font size="5">
									<p> ${myDetailInfo.funvo.fun_mbti_result}</p>
									<c:if test="${myDetailInfo.gender eq '남성'}">
									<img class=""src="resources/images/${myMbtiExplanation.mbtiName}1.jpg"
									alt="프로필 사진" 
									style="width: 400px; height: 400px; margin-right:20px; border:1px solid white;">
									 </c:if>
									<c:if test="${myDetailInfo.gender eq '여성'}">
									<img class=""src="resources/images/${myMbtiExplanation.mbtiName}2.jpg"
									alt="프로필 사진" 
									style="width: 400px; height: 400px; margin-right:20px; border:1px solid white;">
									 </c:if>
									<p> ${myMbtiExplanation.mbtiExplanation}</p>
									</font>
								</div>
							</div>
						</section>
						<section>
							<div
								style="height: auto; width: 100%; padding: 40px 0px 40px 0px; text-align: content; border-bottom: 1px solid #E6E6E6; border-top: 1px solid #E6E6E6;">

								<div align="center"
									style="width: 100%; height: 80px; border: 0px solid;">
									<span style="color: #F5A9E1;"><i class="fas fa-heart fa-4x"></i></span>
									<font size="50pt">당신의 호감도는?</font>
									<span style="color: #F5A9E1;"><i class="fas fa-heart fa-4x"></i></span>
								</div>
								<div style="text-align: center;">
									<font size="5">
										<p>오늘 <span style="color: red;">12</span>명의 남성회원에게 회원님의 프로필이<br>
										추천되었어요! 그 중 회원님은 <span style="color: red;">3</span>번 선택<br>
										되었네요. 평균적으로 여성회원은... 
										</p> 
									</font>
								</div>
							</div>
						</section>
						
						<section>
							<div
								style="height: auto; width: 100%; padding: 40px 0px 40px 0px; text-align: content; border-bottom: 1px solid #E6E6E6; border-top: 1px solid #E6E6E6;">
								<div align="center"
									style="width: 100%; height: 80px; border: 0px solid;">
									<span><i class="fas fa-chart-pie fa-4x"></i></span>
									<font size="50pt">당신을 위한 차트</font>
									<span><i class="fas fa-chart-pie fa-4x"></i></span>
								</div>
								<div style="text-align: center;">
								<div id="chart"></div>
								</div>
							</div>
						</section>
						
						<!-- 내용 end-->
					</div>
				</div>
			</div>
	
<!-- 아이콘 -->
<script src="https://kit.fontawesome.com/37f7028146.js" crossorigin="anonymous"></script>
<!-- 아이콘 -->

<!-- 아이콘 모음 사이트:https://fontawesome.com/-->
<i class="fas fa-smoking fa-3x"></i>

<span class="fa-stack fa-lg">
<i class="fas fa-wine-glass-alt fa-stack-1x"></i> 
<i class="fa fa-ban fa-stack-2x text-danger"></i> 
</span>

<i class="fas fa-dog fa-3x"></i>

<span class="fa-stack fa-lg"> 
<i class="fa fa-square-o fa-stack-2x"></i> 
<i class="fa fa-twitter fa-stack-1x"></i> 
</span> 

<i class="far fa-heart"></i>
<span class="fa-stack fa-lg"> 
<i style="color: red;" class="far fa-heart fa-stack-2x"></i> 
<i style="color:#F781D8" class="fas fa-heart fa-stack-1x"></i> 
</span> 

<span class="fa-stack fa-lg"> 
<i style="color:#FA58AC" class="fas fa-heart fa-stack-2x"></i> 
<i style="color:#F781D8" class="fas fa-heart fa-stack-1x"></i> 
</span> 

<i class="fa fa-camera fa-3x"></i>

<i class="fas fa-mobile-alt fa-3x"></i>

<i class="fas fa-sms fa-3x"></i>

<i class="fas fa-music fa-3x"></i>
<!-- 아이콘 end -->

<!-- 차트 -->	
<script src="https://d3js.org/d3.v3.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>
<script type="text/javascript"> 
var chart = c3.generate({
  bindto: "#chart",
  data: {
	  columns: [
          ['data1', 30],
          ['data2', 120],
          ['data3', 50],
          ['data4', 150],
          ['data5', 90],
      ],
      type : 'pie',
      onclick: function (d, i) { console.log("onclick", d, i); },
      onmouseover: function (d, i) { console.log("onmouseover", d, i); },
      onmouseout: function (d, i) { console.log("onmouseout", d, i); }
  }
});
</script>
<!-- 차트 end-->
<!--  마이페이지 end -->