<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


  	<div class="text-wrap" style="padding-top: 150px;" align="center">	  										
		<div class="space" style="width: 800px; top: 500px;" align="center">					
			<font size="16px">결제가 완료되었습니다!</font><hr>
			<h2>더 많은 인연을 만나보세요!</h2><br>
			<h1>Welcome To Premium Service!</h1>						
			<img alt="" src="resources/images/premium.jpg"width="800" height="500" >
			<div class="form-group" style="padding: 50px;">
				<a href="Client_0_main"><input class="btn btn-primary btn-lg" type="button" value="마이페이지로 이동" /></a>		
				<a href="index.jsp"><input class="btn btn-primary btn-lg" type="button" value="홈으로" /></a>		
			</div>
		</div>								
	</div>							
<br><br><br><br>
	<script>
	history.replaceState({}, null, location.pathname);
	
	</script>

