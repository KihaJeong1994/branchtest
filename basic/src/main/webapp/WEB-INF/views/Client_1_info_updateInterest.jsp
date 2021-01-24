<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<!---------------------------------- header end ---------------------------------->
   <section id="fh5co-testimonials" data-section="love">
      <div class="container">
         <div class="row">
         </div>
      </div>
   </section>



   <!--  게시판상세페이지 -->

	<section id="fh5co-intro">
		<div class="container">
			<div class=" section-heading text-center">
				<div align="center"
					style="width: 70%; height: auto; border: 1px solid #E6E6E6; border-radius: 1em; margin: 0 auto; margin-top: 50px; padding-bottom: 50px;">

					<p style="padding-top: 40px; width: 250px; margin: 0 auto;">
						<font size="50pt">나의 관심사</font>
					</p>
						<div class="grid cols-1 cols-m-2 form whiteForm factForm">
						<section>
							<div
								style="height: auto; width: 100%; padding: 40px 0px 40px 0px; text-align: content; border-bottom: 1px solid #E6E6E6; border-top: 1px solid #E6E6E6;">
								<div style="text-align: center;">
							<c:forEach items="${InterestList}" var="list">
							<div class="ui checkbox" style="width:200px; height:50px; font-size:30px;">
									<input type="checkbox" name="clientInterest" value='${list.interestIdx}' style="width:150px; height:50px; font-size:30px;"> 
									<label>${list.interestName}</label>
									
							</div>
							</c:forEach>
							<div class="row" style="display: none">	
						   </div>
								</div>
							</div> 
								<button class="btn btn-primary sum" style="background-image: linear-gradient(45deg, #ff9a9e 0%, #fad0c4 99%, #fad0c4 100%);color:#464646" id=""
										style="padding: 15px 30px; font-size: 16px;"type="submit" >저장</button>
								<button class="btn btn-primary"  style="background-image: linear-gradient(45deg, #ff9a9e 0%, #fad0c4 99%, #fad0c4 100%);color:#464646" id=""
										style="padding: 15px 30px; font-size: 16px;"  onclick="location.href='Client_0_main'">마이페이지</button>
						</section>
						</div>
					</div>
				</div>
			</div>
	</section>
<script>
   $(document).ready(function() {


	   var cInterestList= []
	   <c:forEach items="${clientInterest}" var="clientInterest">
	   cInterestList.push('${clientInterest.interestIdx}')
	   </c:forEach>
   
	   
	   $('input:checkbox[name="clientInterest"]').each(function() {
		     if(cInterestList.includes(this.value)){ //값 비교
		            this.checked = true; //checked 처리

		      }
		});

	  $('.sum').click(function(){
		  var arr=[];
		  $('input[name="clientInterest"]:checked').each(function(i){arr.push($(this).val())});
		  console.log(arr);
		  location.href='updateClientInterest?arr='+arr;
	  })
   });
   </script>
	
	<!-- 내정보 -->

	<!---------------------------------- Footer start ---------------------------------->
