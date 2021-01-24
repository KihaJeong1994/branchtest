<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta http-equiv = "Content-Type" content="text/html; charset=utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<link rel="stylesheet" href="resources/css/animate.css">
		<link rel="stylesheet" href="resources/css/simple-line-icons.css">
		<link rel="stylesheet" href="resources/css/magnific-popup.css">
		<link rel="stylesheet" href="resources/css/bootstrap.css">
		<link rel="stylesheet" href="resources/css/style.css">
		<link rel="stylesheet" type="text/css" href="resources/css/semantic.min.css">

		<script src="resources/js/modernizr-2.6.2.min.js"></script>
		<script
		  src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="resources/js/semantic.min.js"></script>
		
  <link rel="stylesheet" href="resources/css2/reset.css">
  <link rel="stylesheet" href="resources/css2/animation.css">
  <link rel="stylesheet" href="resources/css2/main.css">
  <link rel="stylesheet" href="resources/css2/welcome.css">
  <link rel="stylesheet" href="resources/css2/qna.css">
  <link rel="stylesheet" href="resources/css2/calc.css">
  <link rel="stylesheet" href="resources/css2/result.css">


	<!---------------------------------- header start ---------------------------------->
	
 <div id="wrap">
    <section id="welcome" class="container1">
      <div id="title-box">
        <h1 class="title">
          MBTI기반<br> Disney Character만들기
          <br>+연애능력점수 알아보기
        </h1>
        <h3 class="sec-tit">
        </h3>
        <span class="time-logo"></span>
        <div>소요 시간 : 3분 내외</div>
      </div>
      <hr class="w-line">
      <p class="w-line">
        <span id="p-tit">이 테스트로 ...</span><br>   
        나와 닮은 디즈니 캐릭터는 누구인지 알아보세요!<br>
        <br>연애능력점수로 나의 연애 가능성도 알 수 있어요!
      
      </p>
      <hr class="w-line">
      <div id="name-input">
        <input type="text" placeholder="${sessionScope.nickname}" value="${sessionScope.nickname}"autofocus>
      </div>
      <p class="check-name warning"></p>
      <div class="start-wrap">
        <button class="start">시 작</button>
      </div>
    </section>
    <section id="qna" class="container1">
      <div class="status-bar">
        <div class="status"></div>
      </div>
      <div class="q box"></div>
      <div class="answer"></div>
    </section>
    <section id="calc">
      <div class="calc-bar">
        CALCULATING
        <div class="calc"></div>
      </div>
      <p class="wait">잠시 기다려주세요...</p>
    </section>
    <section id="result" class="container1">
      <div id="score-box">
        <div class="p title"></div>
        <div class="point"></div>
        <div class="pin"></div>
        <div class="score-bar"></div>
      </div>
      <div id="desc-box">
        <div class="art"></div>
        <div class="result title"></div>
        <div class="res desc"></div>
       
      </div>
      <hr>
   

      <hr>
      <div class="caution"> 
        <p>
          결과에 대한 자세한 설명은 마이페이지에서 볼 수 있어요!
         
     <button class="btn btn-sm"  style="background-image: linear-gradient(45deg, #ff9a9e 0%, #fad0c4 99%, #fad0c4 100%);color:#464646"  onclick="location.href='Client_0_main'">마이페이지</button>
     <br><br>
        </p>
      </div>
      <hr>
 
      <hr>
  
    </section>
  
  </div>
  <script language="JavaScript" src="resources/js2/data.js" charset="UTF-8"></script>
  <script language="JavaScript" src="resources/js2/main.js" charset="UTF-8"></script>
  
	<!---------------------------------- Footer start ---------------------------------->

  
<!---------------------------------- Footer end ---------------------------------->


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

  
</body>
</html>