<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!---------------------------------- header end ---------------------------------->

<!--여기에 내용 넣으세요-->
<div class = "ui container" style="margin:50px; padding-left:350px ">
 <div class="text-center" style="width: 400px">
 <form class="ui large form" action="certifi_check" method="post">
 <div class="ui stacked segment" >
 <h1 style="color:#52d3aa;margin:0px;">ting</h1>
 <h1><span>코드 입력하기</span></h1>
 <h3>해당 이메일로 인증번호를 보냈습니다<br> 
인증번호 입력해주세요</h3>
			<input type="text"  placeholder="코드를 입력하세요" name="input_certifi_num">
			<div class="field" style="padding-top: 10px">
		 
		    <input type="hidden" name="certifi_num" value=${certifi_num }>
		    <input type="hidden" name="email" value=${email }>
		    <input type="submit" class="ui fluid large teal submit button" value="인증">
	        </div>
			</div>
			
 </form>
 </div>
 </div>


