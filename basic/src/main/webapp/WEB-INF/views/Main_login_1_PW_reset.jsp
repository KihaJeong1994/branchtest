<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!---------------------------------- header end ---------------------------------->

<!--여기에 내용 넣으세요-->

<div class="form-signin" style="margin:0 auto; width:400px">
<div class = "ui container" style="margin:50px 0px 50px 0px">
 <form class="ui large form" action="reset_pwd" method="post">
      <div class="ui stacked segment">
      
      <h1 style="color:#52d3aa;margin:0px;">ting</h1><br>
      
		<h2 style="color:#52d3aa;margin:0px;">비밀번호 재설정</h2>
		
		<h3 style="color:#000000;">안전한 비밀번호를 만들어주세요. </h3>
		
      
      
       
		 <div class="field">
            <input type="password" name="password" placeholder="새 비밀번호">
            <input type="hidden" name="email" value=${email }>
        </div>   
	   <div class="field">
            <input type="password" name="password_check" placeholder="새 비밀번호 확인">
       </div>
       <div>
	  <ul>
	  <li style="list-style:none;" align="right">영문, 숫자, 특수문자 필수 조합</li>
	  <li style="list-style:none;" align="right">8~14 자리 비밀번호</li>
	  </ul>
    </div>
        <div class="field" style="padding-top: 15px">
           <input type="submit" class="ui fluid large teal submit button" value="변경">
	        
      </div>
	</div>

      <div class="ui error message"></div>

    </form>


</div>
</div>

