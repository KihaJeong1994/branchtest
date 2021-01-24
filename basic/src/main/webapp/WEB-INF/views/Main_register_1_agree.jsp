<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
 <html class="no-js">
	<head>

	<title>회원가입_간편가입_약관동의</title>
	<meta http-equiv = "Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">

	<link rel="stylesheet" href="resources/css/animate.css">
	<link rel="stylesheet" href="resources/css/simple-line-icons.css">
	<link rel="stylesheet" href="resources/css/magnific-popup.css">
	<link rel="stylesheet" href="resources/css/bootstrap.css">
	<link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" type="text/css" href="resources/css/reset.css">
    <link rel="stylesheet" type="text/css" href="resources/css/site.css">
    <link rel="stylesheet" type="text/css" href="resources/css/container.css">
    <link rel="stylesheet" type="text/css" href="resources/css/grid.css">
    <link rel="stylesheet" type="text/css" href="resources/css/header.css">
    <link rel="stylesheet" type="text/css" href="resources/css/input.css">
    <link rel="stylesheet" type="text/css" href="resources/css/segment.css">
    <link rel="stylesheet" href="resources/css/signin.css" >
	<script src="resources/js/modernizr-2.6.2.min.js"></script>

	<!--semantic-->
	<link rel="stylesheet" type="text/css" href="resources/css/semantic.min.css">
	<script
	  src="https://code.jquery.com/jquery-3.1.1.min.js"
	  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
	  crossorigin="anonymous"></script>
	<script src="resources/js/semantic.min.js"></script>
	<script src="resources/js/form.js"></script>
	<script src="resources/js/transition.js"></script>
	<!---------------------------------function----------------------------------------------->
	  <script type="text/javascript">
	  $(document).ready(function(){ 
		  $("#submit_func").click(function(){
			  if ($('.agree_compul_1:checked').length == $('.agree_compul_1').length) {
		        	alert("모든 필수 항목에 동의하셨습니다.");
					location.href='Main_register_2_membership';
			  }else{
		        	alert("모든 필수 항목을 체크해주세요.");
			  }
			  });
	  });

 </script>
	
	</head>

	<body class="text-center">

	 <div class="form-signin">

		<h1 style="color:#52d3aa;margin:0px;">ting</h1>
		<h2 style="color:#52d3aa;margin:0px;">약관동의</h2><br>
		<!-- <h3 style="color:#ff8edf;">모든 항목 필수 입력입니다!</h3> -->
		

 <form class="ui large form">
 
      <div class="ui stacked segment">
	  <button class="compact ui button" style = "float:right;margin:0;">메인으로</button><br><br><br>
        <div class="field">
            <input type="checkbox" class="agree_compul_1" id="agree_compul_1">&nbsp;<span style="color:blue;">동의합니다. </span><span style="color:red;">(필수)</span>
			<br><div  style="overflow:scroll;background-color:white;width:100%; height:30%;padding:10px;">본 회원약관은 팅(이하'갑'이라 한다)이 운영하는 인터넷 관련 서비스(이하'서비스'라 한다)를 이용함에 있어 관리자와 이용자(이하'회원'이라 한다)의 권리,의무 및 책임사항을 규정함으로 목적으로한다.</div>
        </div>
		 <div class="field">
            <input type="checkbox" class="agree_compul_1" id="agree_compul_1">&nbsp;<span style="color:blue;">동의합니다. </span><span style="color:red;">(필수)</span>
			<br><div  style="overflow:scroll;background-color:white;width:100%; height:30%;padding:10px;">'갑'은 타인의 명의나 주민등록번호를 도용하여 회원가입신청을 할 경우 회원가입신청을 거절할 수 있다. 또한 회원가입신청이 승인이 된 후에도 허위사실의 기재가 발각되거나 '갑'의 명예를 훼손시키거나 음란물이나 불건전한 내용을 게재할 경우 회원의 자격을 강제 탈되 시킬 수 있다.</div>
        </div>   
	   <div class="field">
            <input type="checkbox" name="agree_choice_1" >&nbsp;<span style="color:blue;">동의합니다. </span> <span style="color:teal;">(선택)</span>
			<br><div  style="overflow:scroll;background-color:white;width:100%; height:30%;padding:10px;">개인정보는 제3자에게 제공 및 공개하지 않음을 원칙으로 하지만, 회원이 공개에 동의한 경우나 아래와 같은 경우는 예외로 한다.
 단체의 회원관리 담당직원이 고객의 요청 시 동의 후, 회원 내역을 조회, 이용안내 서비스 등의 업무 전달을 위한 서비스 지원 업무에 필요한 개인 정보를 지원한다.</div>
      </div>
	   <div class="field">
            <input type="checkbox" name="agree_choice_1" >&nbsp;<span style="color:blue;">동의합니다. </span><span style="color:teal;">(선택)</span>
			<br><div  style="overflow:scroll;background-color:white;width:100%; height:30%;padding:10px;">공동 이벤트 기간 동안 수집된 정보의 전부 또는 일부를 제휴사와 공유할 수 있으며 회원에 관한 개인정보를 전송, 수집하기 전에 회원에게 그러한 사항을 공지 및 동의 절차를 거쳐서 제공할 수 있다.</div>
	   </div><br>
		
	   <div class="field">
		    <div class="ui fluid large teal submit button" id="submit_func" >다음 >></div>
	   </div>
		<!--===============submit은 함수사용=================-->

	</div>

      <div class="ui error message"></div><!--나중에 interlock-->

    </form>

<p><a href="#" target="_blank">이용약관&nbsp;|&nbsp;</a>
	  <a href="#" target="_blank">개인정보처리방침</a></p>

</div>
	
 
	<!---------------------------------script----------------------------------------------->
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/jquery.easing.1.3.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.waypoints.min.js"></script>
	<script src="resources/js/jquery.stellar.min.js"></script>
	<script src="resources/js/jquery.countTo.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/magnific-popup-options.js"></script>
	<script src="resources/js/main.js"></script>

	</body>
</html>