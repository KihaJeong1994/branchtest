<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<!--여기에 내용 넣으세요-->
<br><br><br><br>

<!--글쓰기-->
	<div class = "TingToday_list" style="padding-left: 10%;padding-right: 10%;">
		<div class ="container">
			<div class="row">
			<form method="POST" action="">
				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
						 	<th style=" text-align: center"><h1 align="center">블랙리스트 신고하기</h1></th> 			 							 	
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control" placeholder="제목을 입력하세요" maxlength="50"></td>
						</tr>
						<tr>
							<td><input type="file"></td>
						</tr>
						<tr>
							<td><textarea class="form-control" placeholder="내용을 입력하세요" maxlength="2048" style="height:600px;"></textarea></td>																	
						</tr>
					</tbody>					
				</table>
					<center>
					<a href="#" class="ui teal button">이전</a>
					<a href="#" class="ui teal button">등록</a>
					</center>
			</form>
			</div>
		</div>	
	</div>
<!--글쓰기-->
<!-- form-control 부트스트랩적용 클래스 이름 -->
<!-- table table-striped 부트스트랩적용 클래스 이름 -->
<br><br>
