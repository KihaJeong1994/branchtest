<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<br><br>
<!--게시판 해더-->
	<header>
	<h1 align="center">♡결제 내역♡</h1>
	</header>
<!--게시판 해더-->
<br><br>
<!--게시판 테이블-->
			<div id="mainContainer" class="container">
				<div class="twoColumn">
					<section class="mainCol">
					<br><br>
					<!-- 나의 프리미엄 -->
				<div class="좋아요"> 

				</div>
	<div class = "TingToday_list contents-wrap">
		<table class="table table-striped"style="text-align: center; border: 1px solid #dddddd;" width="50">
			<thead>
				<tr>	
							<th scope="cols" style="text-align: center;border-right: 1px solid #eeeeee;">구매일자</th>					
							<th scope="cols" style="text-align: center;border-right: 1px solid #eeeeee;">구매상품</th>
							<th scope="cols" style="text-align: center;border-right: 1px solid #eeeeee;">상품가격</th>
							<th scope="cols" style="text-align: center;border-right: 1px solid #eeeeee;">결제방법</th>									
						</tr>
						</thead>
				<c:forEach items="${PaymentList}" var="payment">		
						<tr>
							<td scope="row" style="text-align: center;border-right: 1px solid #eeeeee;"><h3>${payment.when }</h2></td>
							<td scope="row" style="text-align: center;border-right: 1px solid #eeeeee;"><h3>${payment.goods.goodName }</h2></td>
							<td scope="row" style="text-align: center;border-right: 1px solid #eeeeee;"><h3>${payment.goods.price }</h2></td>
							<td scope="row" style="text-align: center;border-right: 1px solid #eeeeee;"><h3>${payment.method }</h2></td>						
						</tr>	
				</c:forEach>

			
			</tbody>
		</table>			
	</div>
	</div>
	</div>
