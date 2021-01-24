<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta http-equiv = "Content-Type" content="text/html; charset=utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">

			<link rel="stylesheet" href="resources/css/animate.css">
			<link rel="stylesheet" href="resources/css/simple-line-icons.css">
			<link rel="stylesheet" href="resources/css/magnific-popup.css">
			<link rel="stylesheet" href="resources/css/bootstrap.css">
			<link rel="stylesheet" href="resources/css/style.css">
			<link rel="stylesheet" type="text/css" href="resources/css/semantic.min.css">

			<script src="js/modernizr-2.6.2.min.js"></script>
			<script
			  src="https://code.jquery.com/jquery-3.1.1.min.js"
			  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
			  crossorigin="anonymous"></script>
			<script src="resources/js/semantic.min.js"></script>


	<!---------------------------------- header start ---------------------------------->
	
<!---------------------------------- header end ---------------------------------->
<!-- style -->
 <style>
 h5 {
 	font-size:30px;
 }
 </style>
<!-- style -->

	<div id="fb-root" class=" fb_reset">
		<div
			style="position: absolute; top: -10000px; width: 0px; height: 0px;">
			<div></div>
		</div>
	</div>
	<script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = 'https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v3.2';
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async=""
		src="https://www.googletagmanager.com/gtag/js?id=UA-129748912-1"></script>
	<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-129748912-1');
</script>


	<script type="text/javascript">
		
		var rs_list = [];
		var rs_text ='';
		var category =1; // 0:나 1:이상형
	
	
         var tt = 0;
         var qq = 0;
         var rs = 0;
         var rs2 = 0;
         var rst = 0;
         var stt = 0;
               
      </script>

	<script>
      function favmc(event) {
    	  
        if(tt >= 6 && rs < 64 && rs < 32){
        ga('send', 'event', {
            eventCategory: 'favorite',
            eventAction: 'male',
            eventLabel: 'oneway'
          });
        	
        }
        }
        function favfc(event) {
          if(tt >= 6 && rs < 64 && rs >= 32){
          ga('send', 'event', {
              eventCategory: 'favorite',
              eventAction: 'female',
              eventLabel: 'oneway'
            });
          }
          }
          function mec(event) {
            if(tt>=6 && rs >= 64){
            	category =0;
            	console.log(category);
            ga('send', 'event', {
                eventCategory: 'me',
                eventAction: 'unknown',
                eventLabel: 'oneway'
              });
            }
            
            }

       

      function cl1(){
    	
        if (tt == 0){
          rs += 0;
          rs_list.push("10");
        }
        else if (tt == 1){
          rs += 0;
          rs_list.push("11");
        }
        else if (tt == 2){
          rs += 0;
          rs_list.push("12");
        }
        else if (tt == 3){
          rs += 0;
          rs_list.push("13");
        }
        else if (tt == 4){
          rs += 0;
          rs_list.push("14");
        }
        else if (tt == 5){
          rs += 0;
          rs_list.push("15");
        }
        else if (tt == 6){
          rs += 0;
          rs_list.push("16");
        }
          else{
            rs += 0;
          
          }
      }
      
      
      function cl2(){
        if (tt == 0){
          rs += 64;
          qq += 1;
          rs_list.push("20");
        }
        else if (tt == 1){
          rs += 32;
          rs_list.push("21");
        }
        else if (tt == 2){
          rs += 16;
          rs_list.push("22");
        }
        else if (tt == 3){
          rs += 8;
          rs_list.push("23");
        }
        else if (tt == 4){
          rs += 4;
          rs_list.push("24");
        }
        else if (tt == 5){
          rs += 2;
          rs_list.push("25");
        }
        else if (tt == 6){
          rs += 1;
          rs_list.push("26");
        }
        else{
          rs += 0;
         
        }
      }
      function qqc(){
        if (tt == 0 && qq < 1){
          document.getElementById("qs").innerHTML = "당신의 이상형의 성별은?";
        }
        else if (tt == 0 && qq >= 1){
          document.getElementById("qs").innerHTML = "당신의 성별은?";
        }
        else if (tt == 1 && qq < 1){
          document.getElementById("qs").innerHTML = "꿈에 그리던 이상형과의 데이트, 그(녀)는 어떤 옷을 입고 나왔을까요?";
        }
        else if (tt == 1 && qq >= 1){
          document.getElementById("qs").innerHTML = "당신의 데일리룩은 어느쪽에 더 가깝나요?";
        }
        else if (tt == 2 && qq < 1){
          document.getElementById("qs").innerHTML = "같이 취미생활 즐기자고 데이트를 제안하는 그(녀), 어떤 계획을 짜왔을까요?";
        }
        else if (tt == 2 && qq >= 1){
          document.getElementById("qs").innerHTML = "오랜만의 여가 시간, 당신은 무엇을 하나요?";
        }
        else if (tt == 3 && qq < 1){
          document.getElementById("qs").innerHTML = "오랜만에 당신을 만난 그(녀), 당신을 어떻게 해주면 좋을까요?";
        }
        else if (tt == 3 && qq >= 1){
          document.getElementById("qs").innerHTML = "오랜만에 만난 친구. 당신은 무엇을 하나요?";
        }
        else if (tt == 4 && qq < 1){
          document.getElementById("qs").innerHTML = "당신은 어떨 때 그(녀)에게 더 설렐까요?";
        }
        else if (tt == 4 && qq >= 1){
          document.getElementById("qs").innerHTML = "당신은 어떤 사람들이 조금 더 편한가요?";
        }
        else if (tt == 5 && qq < 1){
          document.getElementById("qs").innerHTML = "바쁜 시험기간. 당신의 이상형은 어떻게 공부하는 것을 선호할까요?";
        }
        else if (tt == 5 && qq >= 1){
          document.getElementById("qs").innerHTML = "시험 기간에 도서관에 간 당신은 어떤 유형인가요?";
        }
        else if (tt >= 6 && qq < 1){
          document.getElementById("qs").innerHTML = "당신의 이상형은";
          document.getElementById("nm").innerHTML = list[rs]["name"];
          document.getElementById("nd").innerHTML = "입니다.";
          rs_text=list[rs]["name"];
          console.log(category);
          console.log(rs_list);
          console.log(rs_text);
          $.ajax({ 
  			url :'test2_result', 
  			type : 'GET', 
  			dataType : 'json', 
  			data : { "rs_list" : rs_list.join(','), "category": category, "rs_text":rs_text}, 
  			success: function(data){console.log("성공");} 
  		});
          
          
          
          
        }
        else if (tt >= 6 && qq >= 1){
          document.getElementById("qs").innerHTML = "당신은";
          document.getElementById("nm").innerHTML = list[rs]["name"];
          document.getElementById("nd").innerHTML = "입니다.";
          rs_text=list[rs]["name"];
          console.log(category);
          console.log(rs_list);
          console.log(rs_text);
          $.ajax({ 
  			url :'test2_result', 
  			type : 'GET', 
  			dataType : 'json', 
  			data : { "rs_list" : rs_list.join(','), "category": category, "rs_text":rs_text}, 
  			success: function(data){} 
  		});
        }
      }

      function qcl(){

        if (tt == 0 && rs < 64){
          var is = document.aa;
          is.src =  "resources/img/mq.png";
          var iss = document.bb;
          iss.src = "resources/img/fq.png";
        }
        else if (tt == 1 && rs < 64 && rs < 32){
          var is = document.aa;
          is.src =  "resources/img/mq1_0.png";
          var iss = document.bb;
          iss.src = "resources/img/mq1_1.png";
        }
        else if (tt == 1 && rs < 64 && rs >= 32){
          var is = document.aa;
          is.src =  "resources/img/fq1_0.png";
          var iss = document.bb;
          iss.src = "resources/img/fq1_1.png";
        }
        else if (tt == 2 && rs < 64 && rs < 32){
          var is = document.aa;
          is.src =  "resources/img/mq2_0.png";
          var iss = document.bb;
          iss.src = "resources/img/mq2_1.png";
        }
        else if (tt == 2 && rs < 64 && rs >= 32){
          var is = document.aa;
          is.src =  "resources/img/fq2_0.png";
          var iss = document.bb;
          iss.src = "resources/img/fq2_1.png";
        }
        else if (tt == 3 && rs < 64 && rs < 32){
          var is = document.aa;
          is.src =  "resources/img/mq3_0.png";
          var iss = document.bb;
          iss.src = "resources/img/mq3_1.png";
        }
        else if (tt == 3 && rs < 64 && rs >= 32){
          var is = document.aa;
          is.src =  "resources/img/fq3_0.png";
          var iss = document.bb;
          iss.src = "resources/img/fq3_1.png";
        }
        else if (tt == 4 && rs < 64 && rs < 32){
          var is = document.aa;
          is.src =  "resources/img/mq4_0.png";
          var iss = document.bb;
          iss.src = "resources/img/mq4_1.png";
        }
        else if (tt == 4 && rs < 64 && rs >= 32){
          var is = document.aa;
          is.src =  "resources/img/fq4_0.png";
          var iss = document.bb;
          iss.src = "resources/img/fq4_1.png";
        }
        else if (tt == 5 && rs < 64 && rs < 32){
          var is = document.aa;
          is.src =  "resources/img/mq5_0.png";
          var iss = document.bb;
          iss.src = "resources/img/mq5_1.png";
        }
        else if (tt == 5 && rs < 64 && rs >= 32){
          var is = document.aa;
          is.src =  "resources/img/fq5_0.png";
          var iss = document.bb;
          iss.src = "resources/img/fq5_1.png";
        }
        else if (tt == 6 && rs < 64 && rs < 32){
          var is = document.aa;
          is.src =  "";
          var rpp = document.rsp;
          if (rs % 64 == 0){
            rpp.src = "resources/img/m00000.png";
          }
          if (rs % 64 == 1){
            rpp.src = "resources/img/m00001.png";
          }
          if (rs % 64 == 2){
            rpp.src = "resources/img/m00010.png";
          }
          if (rs % 64 == 3){
            rpp.src = "resources/img/m00011.png";
          }
          if (rs % 64 == 4){
            rpp.src = "resources/img/m00100.png";
          }
          if (rs % 64 == 5){
            rpp.src = "resources/img/m00101.png";
          }
          if (rs % 64 == 6){
            rpp.src = "resources/img/m00110.png";
          }
          if (rs % 64 == 7){
            rpp.src = "resources/img/m00111.png";
          }
          if (rs % 64 == 8){
            rpp.src = "resources/img/m01000.png";
          }
          if (rs % 64 == 9){
            rpp.src = "resources/img/m01001.png";
          }
          if (rs % 64 == 10){
            rpp.src = "resources/img/m01010.png";
          }
          if (rs % 64 == 11){
            rpp.src = "resources/img/m01011.png";
          }
          if (rs % 64 == 12){
            rpp.src = "resources/img/m01100.png";
          }
          if (rs % 64 == 13){
            rpp.src = "resources/img/m01101.png";
          }
          if (rs % 64 == 14){
            rpp.src = "resources/img/m01110.png";
          }
          if (rs % 64 == 15){
            rpp.src = "resources/img/m01111.png";
          }
          if (rs % 64 == 16){
            rpp.src = "resources/img/m10000.png";
          }
          if (rs % 64 == 17){
            rpp.src = "resources/img/m10001.png";
          }
          if (rs % 64 == 18){
            rpp.src = "resources/img/m10010.png";
          }
          if (rs % 64 == 19){
            rpp.src = "resources/img/m10011.png";
          }
          if (rs % 64 == 20){
            rpp.src = "resources/img/m10100.png";
          }
          if (rs % 64 == 21){
            rpp.src = "resources/img/m10101.png";
          }
          if (rs % 64 == 22){
            rpp.src = "resources/img/m10110.png";
          }
          if (rs % 64 == 23){
            rpp.src = "resources/img/m10111.png";
          }
          if (rs % 64 == 24){
            rpp.src = "resources/img/m11000.png";
          }
          if (rs % 64 == 25){
            rpp.src = "resources/img/m11001.png";
          }
          if (rs % 64 == 26){
            rpp.src = "resources/img/m11010.png";
          }
          if (rs % 64 == 27){
            rpp.src = "resources/img/m11011.png";
          }
          if (rs % 64 == 28){
            rpp.src = "resources/img/m11100.png";
          }
          if (rs % 64 == 29){
            rpp.src = "resources/img/m11101.png";
          }
          if (rs % 64 == 30){
            rpp.src = "resources/img/m11110.png";
          }
          if (rs % 64 == 31){
            rpp.src = "resources/img/m11111.png";
          }
          if (rs % 64 == 32){
            rpp.src = "resources/img/f00000.png";
          }
          if (rs % 64 == 33){
            rpp.src = "resources/img/f00001.png";
          }
          if (rs % 64 == 34){
            rpp.src = "resources/img/f00010.png";
          }
          if (rs % 64 == 35){
            rpp.src = "resources/img/f00011.png";
          }
          if (rs % 64 == 36){
            rpp.src = "resources/img/f00100.png";
          }
          if (rs % 64 == 37){
            rpp.src = "resources/img/f00101.png";
          }
          if (rs % 64 == 38){
            rpp.src = "resources/img/f00110.png";
          }
          if (rs % 64 == 39){
            rpp.src = "resources/img/f00111.png";
          }
          if (rs % 64 == 40){
            rpp.src = "resources/img/f01000.png";
          }
          if (rs % 64 == 41){
            rpp.src = "resources/img/f01001.png";
          }
          if (rs % 64 == 42){
            rpp.src = "resources/img/f01010.png";
          }
          if (rs % 64 == 43){
            rpp.src = "resources/img/f01011.png";
          }
          if (rs % 64 == 44){
            rpp.src = "resources/img/f01100.png";
          }
          if (rs % 64 == 45){
            rpp.src = "resources/img/f01101.png";
          }
          if (rs % 64 == 46){
            rpp.src = "resources/img/f01110.png";
          }
          if (rs % 64 == 47){
            rpp.src = "resources/img/f01111.png";
          }
          if (rs % 64 == 48){
            rpp.src = "resources/img/f10000.png";
          }
          if (rs % 64 == 49){
            rpp.src = "resources/img/f10001.png";
          }
          if (rs % 64 == 50){
            rpp.src = "resources/img/f10010.png";
          }
          if (rs % 64 == 51){
            rpp.src = "resources/img/f10011.png";
          }
          if (rs % 64 == 52){
            rpp.src = "resources/img/f10100.png";
          }
          if (rs % 64 == 53){
            rpp.src = "resources/img/f10101.png";
          }
          if (rs % 64 == 54){
            rpp.src = "resources/img/f10110.png";
          }
          if (rs % 64 == 55){
            rpp.src = "resources/img/f10111.png";
          }
          if (rs % 64 == 56){
            rpp.src = "resources/img/f11000.png";
          }
          if (rs % 64 == 57){
            rpp.src = "resources/img/f11001.png";
          }
          if (rs % 64 == 58){
            rpp.src = "resources/img/f11010.png";
          }
          if (rs % 64 == 59){
            rpp.src = "resources/img/f11011.png";
          }
          if (rs % 64 == 60){
            rpp.src = "resources/img/f11100.png";
          }
          if (rs % 64 == 61){
            rpp.src = "resources/img/f11101.png";
          }
          if (rs % 64 == 62){
            rpp.src = "resources/img/f11110.png";
          }
          if (rs % 64 == 63){
            rpp.src = "resources/img/f11111.png";
          }
          document.getElementById("aa1").style.display = "none";
          document.getElementById("bb1").style.display = "none";
          document.getElementById("det").innerHTML = list[rs]["detail"];
          document.getElementById("pct").innerHTML = list[rs]["percent"];
          var iss = document.bb;
          iss.src = "";
        }
        else if (tt == 6 && rs < 64 && rs >= 32){
          var is = document.aa;
          is.src =  "";
          var rpp = document.rsp;
          if (rs % 64 == 0){
            rpp.src = "resources/img/m00000.png";
          }
          if (rs % 64 == 1){
            rpp.src = "resources/img/m00001.png";
          }
          if (rs % 64 == 2){
            rpp.src = "resources/img/m00010.png";
          }
          if (rs % 64 == 3){
            rpp.src = "resources/img/m00011.png";
          }
          if (rs % 64 == 4){
            rpp.src = "resources/img/m00100.png";
          }
          if (rs % 64 == 5){
            rpp.src = "resources/img/m00101.png";
          }
          if (rs % 64 == 6){
            rpp.src = "resources/img/m00110.png";
          }
          if (rs % 64 == 7){
            rpp.src = "resources/img/m00111.png";
          }
          if (rs % 64 == 8){
            rpp.src = "resources/img/m01000.png";
          }
          if (rs % 64 == 9){
            rpp.src = "resources/img/m01001.png";
          }
          if (rs % 64 == 10){
            rpp.src = "resources/img/m01010.png";
          }
          if (rs % 64 == 11){
            rpp.src = "resources/img/m01011.png";
          }
          if (rs % 64 == 12){
            rpp.src = "resources/img/m01100.png";
          }
          if (rs % 64 == 13){
            rpp.src = "resources/img/m01101.png";
          }
          if (rs % 64 == 14){
            rpp.src = "resources/img/m01110.png";
          }
          if (rs % 64 == 15){
            rpp.src = "resources/img/m01111.png";
          }
          if (rs % 64 == 16){
            rpp.src = "resources/img/m10000.png";
          }
          if (rs % 64 == 17){
            rpp.src = "resources/img/m10001.png";
          }
          if (rs % 64 == 18){
            rpp.src = "resources/img/m10010.png";
          }
          if (rs % 64 == 19){
            rpp.src = "resources/img/m10011.png";
          }
          if (rs % 64 == 20){
            rpp.src = "resources/img/m10100.png";
          }
          if (rs % 64 == 21){
            rpp.src = "resources/img/m10101.png";
          }
          if (rs % 64 == 22){
            rpp.src = "resources/img/m10110.png";
          }
          if (rs % 64 == 23){
            rpp.src = "resources/img/m10111.png";
          }
          if (rs % 64 == 24){
            rpp.src = "resources/img/m11000.png";
          }
          if (rs % 64 == 25){
            rpp.src = "resources/img/m11001.png";
          }
          if (rs % 64 == 26){
            rpp.src = "resources/img/m11010.png";
          }
          if (rs % 64 == 27){
            rpp.src = "resources/img/m11011.png";
          }
          if (rs % 64 == 28){
            rpp.src = "resources/img/m11100.png";
          }
          if (rs % 64 == 29){
            rpp.src = "resources/img/m11101.png";
          }
          if (rs % 64 == 30){
            rpp.src = "resources/img/m11110.png";
          }
          if (rs % 64 == 31){
            rpp.src = "resources/img/m11111.png";
          }
          if (rs % 64 == 32){
            rpp.src = "resources/img/f00000.png";
          }
          if (rs % 64 == 33){
            rpp.src = "resources/img/f00001.png";
          }
          if (rs % 64 == 34){
            rpp.src = "resources/img/f00010.png";
          }
          if (rs % 64 == 35){
            rpp.src = "resources/img/f00011.png";
          }
          if (rs % 64 == 36){
            rpp.src = "resources/img/f00100.png";
          }
          if (rs % 64 == 37){
            rpp.src = "resources/img/f00101.png";
          }
          if (rs % 64 == 38){
            rpp.src = "resources/img/f00110.png";
          }
          if (rs % 64 == 39){
            rpp.src = "resources/img/f00111.png";
          }
          if (rs % 64 == 40){
            rpp.src = "resources/img/f01000.png";
          }
          if (rs % 64 == 41){
            rpp.src = "resources/img/f01001.png";
          }
          if (rs % 64 == 42){
            rpp.src = "resources/img/f01010.png";
          }
          if (rs % 64 == 43){
            rpp.src = "resources/img/f01011.png";
          }
          if (rs % 64 == 44){
            rpp.src = "resources/img/f01100.png";
          }
          if (rs % 64 == 45){
            rpp.src = "resources/img/f01101.png";
          }
          if (rs % 64 == 46){
            rpp.src = "resources/img/f01110.png";
          }
          if (rs % 64 == 47){
            rpp.src = "resources/img/f01111.png";
          }
          if (rs % 64 == 48){
            rpp.src = "resources/img/f10000.png";
          }
          if (rs % 64 == 49){
            rpp.src = "resources/img/f10001.png";
          }
          if (rs % 64 == 50){
            rpp.src = "resources/img/f10010.png";
          }
          if (rs % 64 == 51){
            rpp.src = "resources/img/f10011.png";
          }
          if (rs % 64 == 52){
            rpp.src = "resources/img/f10100.png";
          }
          if (rs % 64 == 53){
            rpp.src = "resources/img/f10101.png";
          }
          if (rs % 64 == 54){
            rpp.src = "resources/img/f10110.png";
          }
          if (rs % 64 == 55){
            rpp.src = "resources/img/f10111.png";
          }
          if (rs % 64 == 56){
            rpp.src = "resources/img/f11000.png";
          }
          if (rs % 64 == 57){
            rpp.src = "resources/img/f11001.png";
          }
          if (rs % 64 == 58){
            rpp.src = "resources/img/f11010.png";
          }
          if (rs % 64 == 59){
            rpp.src = "resources/img/f11011.png";
          }
          if (rs % 64 == 60){
            rpp.src = "resources/img/f11100.png";
          }
          if (rs % 64 == 61){
            rpp.src = "resources/img/f11101.png";
          }
          if (rs % 64 == 62){
            rpp.src = "resources/img/f11110.png";
          }
          if (rs % 64 == 63){
            rpp.src = "resources/img/f11111.png";
          }
          document.getElementById("aa1").style.display = "none";
          document.getElementById("bb1").style.display = "none";
          document.getElementById("det").innerHTML = list[rs]["detail"];
          document.getElementById("pct").innerHTML = list[rs]["percent"];
          var iss = document.bb;
          iss.src = "";
        }
        else if (tt == 0 && rs >= 64){
          var is = document.aa;
          is.src =  "resources/img/mq.png";
          var iss = document.bb;
          iss.src = "resources/img/fq.png";
        }
        else if (tt == 1 && rs >= 64){
          var is = document.aa;
          is.src =  "resources/img/q1_0.png";
          var iss = document.bb;
          iss.src = "resources/img/q1_1.png";
        }
        else if (tt == 2 && rs >= 64){
          var is = document.aa;
          is.src =  "resources/img/q2_0.png";
          var iss = document.bb;
          iss.src = "resources/img/q2_1.png";
        }
        else if (tt == 3 && rs >= 64){
          var is = document.aa;
          is.src =  "resources/img/q3_0.png";
          var iss = document.bb;
          iss.src = "resources/img/q3_1.png";
        }
        else if (tt == 4 && rs >= 64){
          var is = document.aa;
          is.src =  "resources/img/q4_0.png";
          var iss = document.bb;
          iss.src = "resources/img/q4_1.png";
        }
        else if (tt == 5 && rs >= 64){
          var is = document.aa;
          is.src =  "resources/img/q5_0.png";
          var iss = document.bb;
          iss.src = "resources/img/q5_1.png";
        }
        else if (tt == 6 && rs >= 64){
          document.getElementById("aa1").style.display = "none";
          document.getElementById("bb1").style.display = "none";
          var is = document.aa;
          is.src =  "";
          var rpp = document.rsp;
          if (rs % 64 == 0){
            rpp.src = "resources/img/m00000.png";
          }
          if (rs % 64 == 1){
            rpp.src = "resources/img/m00001.png";
          }
          if (rs % 64 == 2){
            rpp.src = "resources/img/m00010.png";
          }
          if (rs % 64 == 3){
            rpp.src = "resources/img/m00011.png";
          }
          if (rs % 64 == 4){
            rpp.src = "resources/img/m00100.png";
          }
          if (rs % 64 == 5){
            rpp.src = "resources/img/m00101.png";
          }
          if (rs % 64 == 6){
            rpp.src = "resources/img/m00110.png";
          }
          if (rs % 64 == 7){
            rpp.src = "resources/img/m00111.png";
          }
          if (rs % 64 == 8){
            rpp.src = "resources/img/m01000.png";
          }
          if (rs % 64 == 9){
            rpp.src = "resources/img/m01001.png";
          }
          if (rs % 64 == 10){
            rpp.src = "resources/img/m01010.png";
          }
          if (rs % 64 == 11){
            rpp.src = "resources/img/m01011.png";
          }
          if (rs % 64 == 12){
            rpp.src = "resources/img/m01100.png";
          }
          if (rs % 64 == 13){
            rpp.src = "resources/img/m01101.png";
          }
          if (rs % 64 == 14){
            rpp.src = "resources/img/m01110.png";
          }
          if (rs % 64 == 15){
            rpp.src = "resources/img/m01111.png";
          }
          if (rs % 64 == 16){
            rpp.src = "resources/img/m10000.png";
          }
          if (rs % 64 == 17){
            rpp.src = "resources/img/m10001.png";
          }
          if (rs % 64 == 18){
            rpp.src = "resources/img/m10010.png";
          }
          if (rs % 64 == 19){
            rpp.src = "resources/img/m10011.png";
          }
          if (rs % 64 == 20){
            rpp.src = "resources/img/m10100.png";
          }
          if (rs % 64 == 21){
            rpp.src = "resources/img/m10101.png";
          }
          if (rs % 64 == 22){
            rpp.src = "resources/img/m10110.png";
          }
          if (rs % 64 == 23){
            rpp.src = "resources/img/m10111.png";
          }
          if (rs % 64 == 24){
            rpp.src = "resources/img/m11000.png";
          }
          if (rs % 64 == 25){
            rpp.src = "resources/img/m11001.png";
          }
          if (rs % 64 == 26){
            rpp.src = "resources/img/m11010.png";
          }
          if (rs % 64 == 27){
            rpp.src = "resources/img/m11011.png";
          }
          if (rs % 64 == 28){
            rpp.src = "resources/img/m11100.png";
          }
          if (rs % 64 == 29){
            rpp.src = "resources/img/m11101.png";
          }
          if (rs % 64 == 30){
            rpp.src = "resources/img/m11110.png";
          }
          if (rs % 64 == 31){
            rpp.src = "resources/img/m11111.png";
          }
          if (rs % 64 == 32){
            rpp.src = "resources/img/f00000.png";
          }
          if (rs % 64 == 33){
            rpp.src = "resources/img/f00001.png";
          }
          if (rs % 64 == 34){
            rpp.src = "resources/img/f00010.png";
          }
          if (rs % 64 == 35){
            rpp.src = "resources/img/f00011.png";
          }
          if (rs % 64 == 36){
            rpp.src = "resources/img/f00100.png";
          }
          if (rs % 64 == 37){
            rpp.src = "resources/img/f00101.png";
          }
          if (rs % 64 == 38){
            rpp.src = "resources/img/f00110.png";
          }
          if (rs % 64 == 39){
            rpp.src = "resources/img/f00111.png";
          }
          if (rs % 64 == 40){
            rpp.src = "resources/img/f01000.png";
          }
          if (rs % 64 == 41){
            rpp.src = "resources/img/f01001.png";
          }
          if (rs % 64 == 42){
            rpp.src = "resources/img/f01010.png";
          }
          if (rs % 64 == 43){
            rpp.src = "resources/img/f01011.png";
          }
          if (rs % 64 == 44){
            rpp.src = "resources/img/f01100.png";
          }
          if (rs % 64 == 45){
            rpp.src = "resources/img/f01101.png";
          }
          if (rs % 64 == 46){
            rpp.src = "resources/img/f01110.png";
          }
          if (rs % 64 == 47){
            rpp.src = "resources/img/f01111.png";
          }
          if (rs % 64 == 48){
            rpp.src = "resources/img/f10000.png";
          }
          if (rs % 64 == 49){
            rpp.src = "resources/img/f10001.png";
          }
          if (rs % 64 == 50){
            rpp.src = "resources/img/f10010.png";
          }
          if (rs % 64 == 51){
            rpp.src = "resources/img/f10011.png";
          }
          if (rs % 64 == 52){
            rpp.src = "resources/img/f10100.png";
          }
          if (rs % 64 == 53){
            rpp.src = "resources/img/f10101.png";
          }
          if (rs % 64 == 54){
            rpp.src = "resources/img/f10110.png";
          }
          if (rs % 64 == 55){
            rpp.src = "resources/img/f10111.png";
          }
          if (rs % 64 == 56){
            rpp.src = "resources/img/f11000.png";
          }
          if (rs % 64 == 57){
            rpp.src = "resources/img/f11001.png";
          }
          if (rs % 64 == 58){
            rpp.src = "resources/img/f11010.png";
          }
          if (rs % 64 == 59){
            rpp.src = "resources/img/f11011.png";
          }
          if (rs % 64 == 60){
            rpp.src = "resources/img/f11100.png";
          }
          if (rs % 64 == 61){
            rpp.src = "resources/img/f11101.png";
          }
          if (rs % 64 == 62){
            rpp.src = "resources/img/f11110.png";
          }
          if (rs % 64 == 63){
            rpp.src = "resources/img/f11111.png";
          }
          var iss = document.bb;
          iss.src = "";
          document.getElementById("det").innerHTML = list[rs]["detail"];
          document.getElementById("pct").innerHTML = '';
        }

        if(rs2 != 0 && tt == 6){


                rr1 = rs % 32;
                rr1a = (rr1 - (rr1%16))/16;
                rr1b = (rr1 - 16*rr1a -(rr1%8))/8;
                rr1c = (rr1 - 16*rr1a - 8*rr1b -(rr1%4))/4;
                rr1d = (rr1 - 16*rr1a - 8*rr1b - 4*rr1c -(rr1%2))/2;
                rr1e = rr1%2;

                rs2 = rs2 - 1;
                rr2 = rs2 % 32;
                rr2a = (rr2 - (rr2%16))/16;
                rr2b = (rr2 - 16*rr2a -(rr2%8))/8;
                rr2c = (rr2 - 16*rr2a - 8*rr2b -(rr2%4))/4;
                rr2d = (rr2 - 16*rr2a - 8*rr2b - 4*rr2c -(rr2%2))/2;
                rr2e = rr2%2;

                var rsta = rr1a + rr2a;
                var rstb = rr1b + rr2b;
                var rstc = rr1c + rr2c;
                var rstd = rr1d + rr2d;
                var rste = rr1e + rr2e;
                if (rsta == 2){
                  rst += 20;
                }
                else if (rsta == 1){
                  rst += 11;
                }
                else if (rsta == 0){
                  rst += 15;
                }
                if (rstb == 2){
                  rst += 16;
                }
                else if (rstb == 1){
                  rst += 3;
                }
                else if (rstb == 0){
                  rst += 20;
                }
                if (rstc == 2){
                  rst += 20;
                }
                else if (rstc == 1){
                  rst += 13;
                }
                else if (rstc == 0){
                  rst += 10;
                }
                if (rstd == 2){
                  rst += 2;
                }
                else if (rstd == 1){
                  rst += 20;
                }
                else if (rstd == 0){
                  rst += 5;
                }
                if (rste == 2){
                  rst += 20;
                }
                else if (rste == 1){
                  rst += 2;
                }
                else if (rste == 0){
                  rst += 20;
                }
        }

        if(tt <= 5){
          tt++;
        }

        if(rs >= 300){
        alert(rs);
      }
      }
      

     
</script>

	<div class="container">
			<div class="text-center"><br><br><br><br>
				<h2 id="qs">
				<br>이상형의 캐릭터를 만들고 싶으면 <span style="color:salmon;">'이상형 만들기'</span>
				<br>나의 캐릭터를 만들고 싶으면 <span style="color:salmon;">'나 만들기'</span>를 선택해주세요.</h2>
				<h1 id="nm"></h1>
				<h2 id="nd"></h2>

			</div>
		<div class="jumbotron">
			<div class="row">
				<div class="text-center">
					<br>
					<br>

					<div class="col-lg-6">
						<div id="aa1" style="display: block">
							<img name="aa" src="resources/img/favq.png" height="300" class="img-rounded"
								onclick="cl1();qqc();qcl();favmc();favfc();mec()">
						</div>
						<img name="rsp" src="" height="300" class="img-rounded">
					</div>

					<div class="col-lg-6">
						<div id="bb1" style="display: block">
							<img name="bb" src="resources/img/meq.png" height="300" class="img-rounded"
								onclick="cl2();qqc();qcl();favmc();favfc();mec()">
						</div>
						<div class="text-left">
							<h5 id="det"></h5>
							<h5 id="pct"></h5>
						</div>
						<br>
						<br>
					</div>
				</div>
			</div>


		</div>
	</div>
	<br>
	<br>



	<script type="text/javascript">



    var list = [{"code":"resources/img/m00000","name":"신비의 동물 청룡","detail":"당신의 이상형은 단정한 스타일에 차분한 성격의, 때론 혼자만의 시간의 시간을 즐기는 남자입니다! 하지만 자신이 자신 있는 것엔 active하게 참여하며 리드할 줄 아는 사람이군요! 마치 아마추어 오케스트라의 지휘자처럼 고독하지만서도 카리스마 넘치는 모습에 모두의 인기를 사겠는걸요?","percent":"현재 100명 중 3명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/img/m00000.png","num":0},
{"code":"resources/m00001","name":"피아노를 치는 허스키","detail":"당신의 이상형은 단정한 스타일에 차분한 성격이지만 여러 사람들과 함께 active하게 지내며 리더쉽이 있는 남자입니다! 분위기 넘치게 피아노를 치는 허스키처럼 차분한 카리스마의 정석이군요! 마치 엄친아 학생회장 선배같은 사람입니다.","percent":"현재 100명 중 4명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m00001.png","num":1},
{"code":"resources/m00010","name":"꽃에 물을 주는 다람쥐 ","detail":"당신의 이상형은 단정한 스타일에 차분한 성격의, 각자의 시간을 존중해줄 수 있는 사람입니다. 보호본능을 마구 일으키는 마성의 남자군요! 혼자 꽃에 물을 주며 생각에 잠겨있을 때마다 그의 이야기를 들어주고자 하는 당신, 왠지 챙겨주고 싶은 후배가 있다거나 그렇진 않나요?","percent":"현재 100명 중 5명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m00010.png","num":2},
{"code":"resources/m00011","name":"외발자전거를 타는 미어캣","detail":"당신의 이상형은 단정한 스타일에 차분한 성격의, 아슬아슬한 외발자전거를 타는 미어캣처럼 보호본능을 일으키는 남자입니다. 그치만 놀 땐 놀 줄 아는 사람입니다. 주변 사람도 잘 챙기는 그에게는 특별한 개성과 매력이 엿보이는 걸요?","percent":"현재 100명 중 6명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m00011.png","num":3},
{"code":"resources/m00100","name":"정장 입고 춤추는 여우 ","detail":"당신의 이상형은 단정한 스타일에 이따금씩 각자의 시간을 존중해줄 수 있는 사람이지만서도 연애에 있어서 적극적으로 당신을 리드하며 active한 취미생활을 공유할 수 있는 발랄한 남자입니다. 추운 겨울날 모직 코트 속에서 핫팩을 꺼내 주며 VR게임하러 가자고 하는데요?","percent":"현재 100명 중 7명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m00100.png","num":4},
{"code":"resources/m00101","name":"삶이 즐거운 트럼프카드  ","detail":"당신의 이상형은 당신을 리드해 함께 활발히 취미생활을 즐기러 다니고 싶어하는 팔색조의 소유자입니다! 그렇지만 반전 매력으로 깔끔하고 단정한 스타일의 정석인데요, 댄디하면서도 다양한 모습인 트럼프카드에 비유할 수 있겠군요! 인디 음악 축제를 함께 가자며 티켓을 사들고 데리러 와주는 남자를 만나고 싶으신가요?","percent":"현재 100명 중 7명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m00101.png","num":5},
{"code":"resources/m00110","name":"덩치보다 큰 백팩을 맨 펭귄 ","detail":"이따금씩 각자의 시간을 존중해주지만 왠지 보듬어주고싶고 곁에 머무르고 싶은 남자가 이상형이시군요! 하지만 마냥 나약하기만 한 걸 좋아하는 건 아닐테고, 사회생활은 활발히 밝게 잘 해내는데요. 단체 행사에 빠지진 않지만 종종 혼밥을 즐기는 그, 함께 해주고싶으신가요?","percent":"현재 100명 중 0명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m00110.png","num":6},
{"code":"resources/m00111","name":"순진무구한 참새 ","detail":"당신의 이상형은 깨발랄하게 사람들과 함께하는 걸 좋아하는 사람입니다. 그치만 순진무구한 참새처럼 이따금씩 덜렁대서 당신이 보듬어주고 항상 눈앞에 두고싶은 남자를 찾고 있으시군요! 혹시 왁자지껄 발랄한 연하를 만나고싶진 않으신가요?","percent":"현재 100명 중 8명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m00111.png","num":7},
{"code":"resources/m01000","name":"정장입은 바위 ","detail":"당신의 이상형은 묵묵하고 듬직한 사람이네요. 당신은 까불거리는 어린 남자들을 싫어합니다. 차분하게 자신의 일을 해나가는 그의 모습에 당신은 큰 매력을 느낍니다. 그라면 언제든 기대도 포근하게 받아줄거 같네요.","percent":"현재 100명 중 7명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m01000.png","num":8},
{"code":"resources/m01001","name":"넥타이 맨 늑대 ","detail":"당신의 이상형은 차분하고 어른스러운 사람이군요. 그는 많은 말을 하지 않아도 자연스럽게 무리의 중심에 서게 되는 사람입니다. 리더십있게 사람들을 이끌어가는 그의 모습에 당신도 어느새 완전히 홀려버렸습니다.","percent":"현재 100명 중 6명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m01001.png","num":9},
{"code":"resources/m01010","name":"영화를 보는 아기여우 ","detail":"당신의 이상형은 조용조용하게 노력하는 스타일이군요. 볕이 좋은 날에 도서관에서 책을 읽고 있을 것만 같아요. 어쩌면 당신에게 책을 추천해줄지도 모르겠군요. 왠지 지켜줘야 할 것 같은 그와 함께하고 싶으신가요?","percent":"현재 100명 중 5명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m01010.png","num":10},
{"code":"resources/m01011","name":"편지쓰는 아기여우 ","detail":"당신의 이상형은 조곤조곤하게 자기 일을 해나가지만 때론 강단있는 모습을 보여 당신을 설레게 하는군요. 차분하게 당신과 가까워지려 노력하는 그의 모습이 당신을 감동시켰나요? 그는 당신에게 마음을 전하려 지금 편지를 쓰고 있는 것 같군요.","percent":"현재 100명 중 4명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m01011.png","num":11},
{"code":"resources/m01100","name":"젤리 먹는 곰 ","detail":"당신의 이상형은 홀로 있을 때 외로움을 타는 스타일은 아닙니다. 자신의 감정을 잘 컨트롤 할 수 있는 밝으면서도 어른스러운 사람이군요. 때로는 사람들과 선을 긋는듯한 절제하는 모습을 보이기도 하죠. 그의 바운더리 안으로 들어가고 싶으신가요?","percent":"현재 100명 중 3명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m01100.png","num":12},
{"code":"resources/m01101","name":"훌라후프를 돌리는 곰 ","detail":"당신의 이상형은 조용히 있는데도 사람들이 너무나 좋아하는 타입이네요. 한마디 한마디가 왠지 여러분의 기분을 좋게 만들어줍니다. 자기도 모르는 새 인싸가 되어버린 사람이네요.","percent":"현재 100명 중 4명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m01101.png","num":13},
{"code":"resources/m01110","name":"낯가리는 아기토끼 ","detail":"당신의 이상형은 낯을 가리는 사람이네요. 하지만 친해진다면 그의 발랄한 성격을 확인할 수 있을 거에요. 다른 사람들에겐 무뚝뚝하게 굴지만 당신에겐 애교를 부리겠군요. 동아리에서 눈이 마주쳤던 그 연하남이 생각나시나요?","percent":"현재 100명 중 5명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m01110.png","num":14},
{"code":"resources/m01111","name":"귀염뽀짝 아기토끼 ","detail":"당신의 이상형은 발랄하고 귀여운 스타일이네요. 그의 똘망똘망한 눈빛에 당신은 완전히 반해버렸습니다. 많이 움직이는 걸 귀찮아하지만 사람들과 함께 있는 건 좋아하는군요. 당신에게 사소한 연락을 자꾸만 보내는데 그마저도 너무 귀엽고 좋군요.","percent":"현재 100명 중 6명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m01111.png","num":15},
{"code":"resources/m10000","name":"비보잉하는 코뿔소 ","detail":"당신의 이상형은 진지하고 차분한 남자군요. 하지만 반전으로 열정 넘치게 춤을 추기도 하죠. 땀 흘리며 춤에 열중하는 그의 반전 매력에 당신은 완전 빠져버렸습니다.","percent":"현재 100명 중 7명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m10000.png","num":16},
{"code":"resources/m10001","name":"신비의 동물 백호 ","detail":"당신의 이상형은 편안하지만 동시에 긴장감을 주는 어른스러운 남자군요. 운동이면 운동, 공부면 공부, 어느쪽도 놓치지 않는 완벽한 사람입니다. 마치 학교에서 마주친 인기많은 선배를 떠올리게 하네요.","percent":"현재 100명 중 7명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m10001.png","num":17},
{"code":"resources/m10010","name":"스케이트보드 타는 고슴도치 ","detail":"당신의 이상형은 차분하고 때로는 보호본능을 자극하는 사람이군요. 귀여워 보이기도 하지만 홀로 노력하는 모습에 새로운 매력을 느끼게 하죠.","percent":"현재 100명 중 8명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m10010.png","num":18},
{"code":"resources/m10011","name":"풍선을 든 크림빵 ","detail":"당신의 이상형은 조곤조곤하고 귀여운 남자입니다. 차분하지만 보호본능을 자극하는 그의 모습에 끌리고 계시는군요. 그는 당신과 함께 노래방을 가는 걸 즐기기도 합니다.","percent":"현재 100명 중 8명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m10011.png","num":19},
{"code":"resources/m10100","name":"내맘대로 주황 여우 ","detail":"당신의 이상형은 아주 매력적인 남자군요. 그의 화려한 말솜씨에 어느새 넘어가기 일수입니다. 하지만 은근히 곁을 쉽게 내주지 않아 더 애가 타죠. 조금 조심하셔야 할 수도 있겠어요. 당신을 때론 울릴 수도 있거든요.","percent":"현재 100명 중 9명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m10100.png","num":20},
{"code":"resources/m10101","name":"테니스 채를 든 리트리버 ","detail":"당신의 이상형은 여러 사람들에게 인기있는 스타일이군요. 낯을 가리지 않고 타인과 쉽게 친해지는 성격에 그는 언제나 인싸에 위치해 있습니다. 당신도 그와 함께 한다면 인싸가 되고 말겠습니다.","percent":"현재 100명 중 10명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m10101.png","num":21},
{"code":"resources/m10110","name":"게임 중인 너구리 ","detail":"당신의 이상형은 활발하지만 혼자서도 씩씩하게 일하는 남자군요. 때로 드러나는 그의 여린 모습이 당신의 보호본능을 자극하기도 합니다. 게임을 아주 잘 할 가능성이 높습니다. pc방에 너무 자주 가지는 않는지 관찰해보세요.","percent":"현재 100명 중 11명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m10110.png","num":22},
{"code":"resources/m10111","name":"꼬리 흔드는 포메라니안 ","detail":"당신의 이상형은 정말이지 귀여운 사람이군요. 활발하게 애쓰는 모습을 보여주지만 당신의 눈에는 마냥 귀엽습니다. 어딘지 허당끼가 보이는 그를 당신은 자꾸 보호해 주고 싶어하네요.","percent":"현재 100명 중 10명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m10111.png","num":23},
{"code":"resources/m11000","name":"묵묵히 친절을 베푸는 코뿔소  ","detail":"당신의 이상형은 편안한 스타일로 차분하게 당신을 리드해주는 사람입니다. 이따금씩 각자의 시간을 존중해줄 수 있으며 활동적인 데이트보단 정적으로 둘만의 시간을 보내는 연애를 바라시군요! 술 마시고 들어간 다음날 찾아와 묵묵히 숙취해소 음료를 말없이 건네주고 돌아가는 그에게 끌리시나요?","percent":"현재 100명 중 13명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m11000.png","num":24},
{"code":"resources/m11001","name":"캠퍼스룩을 입은 고래 ","detail":"당신의 이상형은 캐쥬얼한 스타일로 당신과 일상을 함께하며 편안한 연애를 할 수 있는 사람이군요! 차분하게 당신을 이끌어주는 동갑내기 친구같은 남자와 후드집업 뒤집어쓰고 만화카페에서 뒹굴뒹굴하는 데이트를 꿈꾸고 있으신가요? ","percent":"현재 100명 중 7명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m11001.png","num":25},
{"code":"resources/m11010","name":"나른한 표정으로 책을 끼고 웅크린 실타래  ","detail":"당신의 이상형은 차분한 성격에 홀로 고독한 삶을 영위해 보호본능을 마구 일으키는 사람입니다. 골방에서 담요를 두르고 책을 읽고 있는 연하남을 찾아가 따뜻한 차를 홀짝이는 데이트를 꿈꾸고 계시군요. 나른하고 편안한 실타래로 함께 엮이면 행복할 것 같습니다.","percent":"현재 100명 중 6명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m11010.png","num":26},
{"code":"resources/m11011","name":"후드집업을 입고서 울먹거리는 참새  ","detail":"당신의 이상형은 당신과 모든 일상을 공유하고 싶어하면서 당신에게 의존하는 사람이군요. 보호본능을 마구 일으키는 남자를 보듬어주고 싶으신가요? 후드집업을 입고서 울먹거리는 참새 같은 남자를 주변에서 찾아보심이 어떨까요?","percent":"현재 100명 중 6명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m11011.png","num":27},
{"code":"resources/m11100","name":"웃으며 인사하는 선배 코끼리  ","detail":"편안한 스타일로 당신을 이끄는 이상형을 원하시는군요. 발랄한 성격이지만 혼자만의 시간을 즐기기도 하는 당신의 이상형은 어제 혼자 본 심야영화가 재밌었다며 다음에 함께 보러 가자고 하네요! 듬직하고 스윗한 코끼리가 생각납니다.","percent":"현재 100명 중 5명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m11100.png","num":28},
{"code":"resources/m11101","name":"밝은 표정으로 통화하는 안경 낀 사모예드","detail":"당신의 이상형은 환한 표정으로 당신에게 통화를 걸어 서로의 일상을 나눌 수 있는 남자입니다. 만화카페에서 뒹굴거리며 꽁냥꽁냥할 수 있는 편안한 연애를 추구하시는군요! 그러면서도 사모예드처럼 듬직한 그에게 끌리시나요?","percent":"현재 100명 중 4명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m11101.png","num":29},
{"code":"resources/m11110","name":"베게를 껴안은 곰인형 ","detail":"당신의 이상형은 꽤나 집순이군요. 침대와 물아일체 되어 가만히 굴러다니는 걸 좋아합니다. 밝은 표정의 그가 조용히 올려다 보면 왠지 심장이 아프고 보호해주고 싶은 마음이 들곤 하죠.","percent":"현재 100명 중 7명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m11110.png","num":30},
{"code":"resources/m11111","name":"신나서 두팔 벌린 아르마딜로 ","detail":"당신의 이상형은 조잘조잘 당신과 이야기하는 걸 좋아하는 귀여운 사람입니다. 과외비가 들어왔다고 맛있는걸 사주고 싶어 상기된 표정으로 당신을 기다리는군요! 많이 움직이는걸 귀찮아하지만 그런 모습조차 아껴주고 싶습니다. ","percent":"현재 100명 중 8명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/m11111.png","num":31},
{"code":"resources/f00000","name":"바이올린 키는 샴고양이","detail":"당신의 이상형은 단정한 스타일에 차분한 성격의, 때론 혼자만의 시간의 시간을 즐기는 사람입니다! 하지만 자신이 자신 있는 것엔 활발하게 참여하며 리드할 줄 아는 사람이군요! 마치 연습에 빠지지 않는 성실한 음대생처럼 고독하지만서도 카리스마 넘치는 당신의 이상형을 두고 현재 100명 중 4명이 경쟁하고 있습니다!","percent":"현재 100명 중 7명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f00000.png","num":32},
{"code":"resources/f00001","name":"블랙 원피스를 입은 표범","detail":"당신의 이상형은 단정한 스타일에 차분한 성격이지만 여러 사람들과 함께 active하게 지내며 리더쉽이 있는 여자입니다. 분위기 넘치게 블랙 원피스를 입은 표범처럼 차분한 카리스마의 정석이군요! 마치 조곤조곤 회의를 휘어잡는 멋쟁이 상사같습니다.","percent":"현재 100명 중 8명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f00001.png","num":33},
{"code":"resources/f00010","name":"비를 맞으며 노래를 부르는 병아리","detail":"당신의 이상형은 단정한 스타일에 차분한 성격이며, 각자의 시간을 어느정도 존중해줄 수 있는 사람이군요. 보호본능을 마구 일으키는 마성의 여자입니다. 부슬비를 맞으며 노래를 부르는 그녀의 이야기가 왠지 궁금한 당신, 왠지 챙겨주고 싶은 후배가 있다거나 그렇진 않나요? ","percent":"현재 100명 중 9명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f00010.png","num":34},
{"code":"resources/f00011","name":"스파게티 먹는 강아지","detail":"당신의 이상형은 단정한 스타일에 차분한 성격의, 왠지 모르게 보호본능을 일으키는 여자입니다. 그치만 놀 땐 놀 줄 알아서 당신과 함께 많은 시간을 보내줄 수 있는 그런 사람이 이상형이시군요. 함께 스파게티를 먹으며 입가에 묻은 소스를 닦아주고 싶으신가요? ","percent":"현재 100명 중 11명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f00011.png","num":35},
{"code":"resources/f00100","name":"노란 원피스 입은 흰 여우","detail":"당신의 이상형은 단정한 스타일에 이따금씩 각자의 시간을 존중해줄 수 있는 사람이지만서도 연애에 있어서 적극적으로 당신을 리드하며 active한 취미생활을 공유할 수 있는 발랄한 여자입니다. 노란 원피스를 입고 당신에게 함께 춤추자고 손을 내미는 그녀를 보고만 있어도 절로 비타민이 충전되는 기분일텐데요.","percent":"현재 100명 중 12명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f00100.png","num":36},
{"code":"resources/f00101","name":"삶이 즐거운 트럼프카드","detail":"당신의 이상형은 당신을 리드해 함께 활발히 취미생활을 즐기러 다니고 싶어하는 팔색조의 소유자입니다! 그렇지만 반전 매력으로 깔끔하고 단정한 스타일의 정석인데요, 옴므파탈 느낌이 물씬 나는 트럼프카드에 비유할 수 있겠군요! 마치 스타트업의 에너지 넘치는 젊은 팀장님 같습니다.","percent":"현재 100명 중 9명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f00101.png","num":37},
{"code":"resources/f00110","name":"덩치보다 큰 백팩을 맨 펭귄","detail":"이따금씩 각자의 시간을 존중해주지만 왠지 보듬어주고싶고 곁에 머무르고 싶은 여자가 이상형이시군요! 하지만 마냥 나약하기만 한 걸 좋아하는 건 아닐테고, 사회생활은 활발히 밝게 잘 해내는 당신의 이상형은 자기 덩치만한 큰 백팩을 매고 아등바등 매사에 열심히인 펭귄같습니다. 단체 행사에 빠지진 않지만 종종 혼밥을 즐겨 당신이 함께 해주고싶은가요? ","percent":"현재 100명 중 8명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f00110.png","num":38},
{"code":"resources/f00111","name":"순진무구한 뱁새","detail":"당신의 이상형은 깨발랄하게 사람들과 함께하는 걸 좋아하는 사람입니다. 그치만 순진무구한 뱁새처럼 이따금씩 덜렁대서 당신이 보듬어주고 항상 눈앞에 두고싶은 여자를 찾고 있으시군요! 혹시 왁자지껄 발랄한 연하를 만나고싶진 않으신가요? ","percent":"현재 100명 중 7명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f00111.png","num":39},
{"code":"resources/f01000","name":"신비의 동물 현무","detail":"당신의 이상형은 차분하게 당신의 얘기를 잘 들어주고 현명한 답을 내어줄 사람이네요. 당신은 촐랑대지 않고 묵묵히 자신의 일을 해나가는 그녀의 모습에 당신은 큰 매력을 느낍니다. 그녀라면 언제든 기대도 포근하게 받아줄거 같네요.","percent":"현재 100명 중 6명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f01000.png","num":40},
{"code":"resources/f01001","name":"와인 마시는 백조","detail":"당신의 이상형은 차분하고 어른스러운 여자군요. 그녀는 많은 말을 하지 않아도 자연스럽게 무리의 중심에 서게 되는 사람입니다. 리더십있게 사람들을 이끌어가는 그녀의 모습에 당신도 어느새 완전히 홀려버렸습니다. ","percent":"현재 100명 중 5명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f01001.png","num":41},
{"code":"resources/f01010","name":"코코아 안에서 목욕하는 마시멜로","detail":"당신의 이상형은 조용조용하게 노력하는 스타일이군요. 코코아 속에서 목욕하며 책을 읽고 있을 것만 같아요. 어쩌면 당신에게 책을 추천해줄지도 모르겠군요. 그녀를 왠지 지켜줘야 할 것 같지 않나요?","percent":"현재 100명 중 4명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f01010.png","num":42},
{"code":"resources/f01011","name":"편지를 주는 컵케잌","detail":"당신의 이상형은 조곤조곤하게 자기 일을 해나가지만 때론 강단있는 모습을 보여 당신을 설레게 하는군요. 차분하게 당신과 가까워지려 노력하는 그녀의 모습이 당신을 감동시켰나요? 그녀는 당신에게 마음을 전하려 지금 편지를 쓰고 있는 것 같군요. ","percent":"현재 100명 중 5명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f01011.png","num":43},
{"code":"resources/f01100","name":"안경을 쓴 페르시안 고양이","detail":"당신의 이상형은 홀로 있을 때 외로움을 타는 스타일은 아닙니다. 자신의 감정을 잘 컨트롤 할 수 있는 밝으면서도 어른스러운 사람이군요. 바운더리가 확실하지만 그 안에서는 마구 퍼주는 사람이네요. 그녀의 바운더리 안으로 들어가고픈가요? ","percent":"현재 100명 중 6명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f01100.png","num":44},
{"code":"resources/f01101","name":"책읽는 푸들","detail":"당신의 이상형은 조용히 있는데도 사람들이 너무나 좋아하는 타입이네요. 마치 홀로 책을 읽고 있지만 모두가 애정을 보이는 푸들 같아요. 한마디 한마디가 왠지 여러분의 기분을 좋게 만들어줍니다. 자기도 모르는 새에 인싸가 되어버린 사람이네요. ","percent":"현재 100명 중 9명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f01101.png","num":45},
{"code":"resources/f01110","name":"낯가리는 아기토끼","detail":"당신의 이상형은 낯을 좀 가리는 사람이네요. 하지만 친해진다면 그녀의 발랄한 성격을 확인할 수 있을 거에요. 다른 사람들에겐 무심하게 굴지만 당신에겐 애교를 부리겠군요. 마치 낯가리는 아기토끼의 모습 같아요. 혹시 동아리에서 눈이 마주쳤던 그 여자 분이 생각나진 않나요? ","percent":"현재 100명 중 8명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f01110.png","num":46},
{"code":"resources/f01111","name":"뽀짝거리는 아기토끼","detail":"당신의 이상형은 발랄하고 귀여운 스타일이네요. 그녀의 똘망똘망한 눈빛에 당신은 완전히 뿅 가버렸습니다. 많이 움직이는 걸 귀찮아하지만 사람들과 함께 있는 건 좋아하는 그녀군요. 당신에게 사소한 연락을 자꾸만 보내는데 그마저도 너무 귀엽고 좋군요.","percent":"현재 100명 중 7명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f01111.png","num":47},
{"code":"resources/f10000","name":"신비의 동물 주작","detail":"당신은 멋진 누나를 찾고 있군요. 강렬한 인상의 활동적이고 쿨한 사람입니다. 그런데 어딘가 비밀이 있는 것 같기도 합니다. 때론 오만한 눈빛을 보이는 그녀는 혼자서도 빛나는 사람이군요. ","percent":"현재 100명 중 6명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f10000.png","num":48},
{"code":"resources/f10001","name":"항공점퍼를 입은 호랑이","detail":"당신의 이상형은 당찬 여성이군요. 혹시 그녀가 태권도 동아리 부장을 맡고 있지는 않나요? 열정넘치지만 동시에 차분한 그녀의 어른스러움에 당신이 끌리고 있군요. 매일 당신을 설레게 할 그녀를 찾아보심이 어떨까요?","percent":"현재 100명 중 5명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f10001.png","num":49},
{"code":"resources/f10010","name":"해바라기씨 먹는 햄스터","detail":"당신의 이상형은 편안한 분위기를 좋아합니다. 화낼 때도 언성을 높이지 않는 차분한 사람이죠. 그녀의 취미는 당신과 맛집 찾으러 다니기! 오물오물 음식을 먹는 모습에 당신은 빠져들었죠. ","percent":"현재 100명 중 4명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f10010.png","num":50},
{"code":"resources/f10011","name":"챗바퀴 도는 햄스터","detail":"당신의 이상형은 작고 사랑스러운 사람이군요. 그녀는 사람들과 어울리기를 좋아해요. 친구들과 나가 노는 것도 즐기죠. 하지만 신중함을 잃지는 않아요. 음식 하나를 고를 때도 진지한 그녀가 당신은 마냥 귀엽습니다. ","percent":"현재 100명 중 5명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f10011.png","num":51},
{"code":"resources/f10100","name":"위스키 마시는 구미호","detail":"당신의 이상형은 아주 매력적인 여자군요. 그녀의 화려한 말솜씨에 어느새 넘어가기 일수입니다. 하지만 은근히 곁을 쉽게 내주지 않아 더 애가 타죠. 조금 조심하셔야 할 수도 있겠어요. 당신을 때론 울릴 수도 있거든요. ","percent":"현재 100명 중 6명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f10100.png","num":52},
{"code":"resources/f10101","name":"맥주 마시는 구미호","detail":"당신의 이상형은 매력적이고 인기가 많은 스타일이군요. 낯을 가리지 않고 타인과 쉽게 친해지는 성격에 그녀는 언제나 친구가 많습니다. 인싸인 그녀가 웃음지을 때 당신도 모르게 웃고 있지 않나요? ","percent":"현재 100명 중 7명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f10101.png","num":53},
{"code":"resources/f10110","name":"조개집 만드는 해달 ","detail":"당신의 이상형은 활발하지만 혼자서도 씩씩하게 일하는 여자군요. 때로 상처받은 모습을 보여 당신의 보호본능을 자극하지만 그녀는 어느새 극복해 냅니다. 기분이 좋으면 마구 나오는 애교에 좋아 죽지않도록 노력하세요.","percent":"현재 100명 중 8명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f10110.png","num":54},
{"code":"resources/f10111","name":"치어리딩하는 다람쥐","detail":"당신의 이상형은 귀여운 사람이군요. 근데 허당끼가 좀 있어요. 발발거리고 돌아다니는 걸 좋아해무슨 사고를 칠까 눈을 뗄 수 없는게 또 다른 매력이죠. 오 술도 잘 마시네요, 아니 금새 취하지만 좋아하네요. 언제나 깨발랄한 그녀와 함께라면 항상 행복할 것만 같습니다.","percent":"현재 100명 중 9명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f10111.png","num":55},
{"code":"resources/f11000","name":"아메리카노를 마시는 암사슴","detail":"당신의 이상형은 편안한 스타일로 차분하게 당신을 리드해주는 사람입니다. 이따금씩 각자의 시간을 존중해줄 수 있으며 활동적인 데이트보단 정적으로 둘만의 시간을 보내는 연애를 바라시군요! 볕이 잘 드는 카페에서 혼자 책 읽는 모습이 아메리카노를 마시는 암사슴 같이 우아합니다.","percent":"현재 100명 중 10명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f11000.png","num":56},
{"code":"resources/f11001","name":"술취해서 나른한 표정의 양","detail":"당신의 이상형은 캐쥬얼한 스타일로 당신과 일상을 함께하며 편안한 연애를 할 수 있는 사람이군요! 차분하게 당신을 이끌어주는 누나같은 여자와 후드집업 뒤집어쓰고 집앞 포차에서 소주 한 잔 하는 데이트를 꿈꾸고 있으신가요?","percent":"현재 100명 중 5명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f11001.png","num":57},
{"code":"resources/f11010","name":"졸고 있는 모찌떡","detail":"당신의 이상형은 차분한 성격에 혼자만의 삶을 영위해 보호본능을 마구 일으키는 사람입니다. 골방에서 담요를 두르고 책을 읽고 있는 모찌떡같은 이상형을 찾아가 따뜻한 차를 홀짝이는 데이트를 꿈꾸고 있으신가요? ","percent":"현재 100명 중 12명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f11010.png","num":58},
{"code":"resources/f11011","name":"얼굴을 붉히면서 수줍음을 떠는 타꼬야끼","detail":"당신의 이상형은 당신과 모든 일상을 공유하고 싶어하면서 당신에게 의존하는 사람이군요. 보호본능을 마구 일으키는 사람을 보듬어주고 싶으신가요? 얼굴을 붉히며 수줍게 같이 떡볶이 먹으러 가자고 묻는 여자가 주변에 있지는 않으신가요?","percent":"현재 100명 중 11명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f11011.png","num":59},
{"code":"resources/f11100","name":"카페라떼 마시는 너구리","detail":"편안한 스타일로 당신을 이끄는 이상형을 원하시는군요. 발랄한 성격이지만 혼자만의 시간을 즐기기도 하는 당신의 이상형은 어제 혼자 간 카페의 카페라떼가 맛있었다며 다음에 함께 마시러 가자고 하네요! 곁에 함께 있으면 온화한 미소에 절로 기분이 좋아질 것 같은걸요?","percent":"현재 100명 중 7명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f11100.png","num":60},
{"code":"resources/f11101","name":"고깔을 쓰고 폭죽을 터트리는 유쾌한 표정의 두더지","detail":"당신의 이상형은 일상을 함께 나누고 서로의 매 순간을 아끼는 사람입니다. 으리으리한 레스토랑보단 방에서 파자마에 고깔을 쓰고 폭죽을 터트리는 편안한 연애를 추구하시는군요! 함께 있으면 당신까지 절로 유쾌해지는 그녀와 함께하고 싶으신가요?","percent":"현재 100명 중 8명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f11101.png","num":61},
{"code":"resources/f11110","name":"넷플릭스 보는 물개","detail":"당신의 이상형은 꽤나 집순이군요. 침대와 물아일체가 되어 넷플릭스 보는 걸 좋아합니다. 그치만 밝은 표정의 그녀가 조용히 올려다 보면 왠지 심장이 콩닥대고 보호해주고 싶은 마음이 들곤 하죠. ","percent":"현재 100명 중 5명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f11110.png","num":62},
{"code":"resources/f11111","name":"대나무를 껴안은 레서팬더","detail":"당신의 이상형은 조잘조잘 당신과 이야기하는 걸 좋아하는 귀여운 사람입니다. 대나무를 껴안은 래서팬더처럼 당신에게 딱붙어 많이 움직이는걸 귀찮아하는 집순이지만 술자리엔 은근 빠지지 않는 그녀를 챙겨주고 싶으시군요.","percent":"현재 100명 중 6명이 당신과 같은 이상형을 두고 경쟁하고 있습니다!","pic":"resources/f11111.png","num":63},
{"code":"resources/m00000","name":"신비의 동물 청룡","detail":"당신은 단정한 스타일에 차분한 성격의, 때론 혼자만의 시간의 시간을 즐기는 사람입니다! 하지만 스스로 자신 있는 것엔 적극적으로 참여하며 리드할 줄 아는 사람이군요! 마치 아마추어 오케스트라의 지휘자처럼 고독하지만서도 카리스마 넘치네요.","percent":"","pic":"resources/m00000.png","num":64},
{"code":"resources/m00001","name":"피아노를 치는 허스키","detail":"당신은 단정한 스타일에 차분한 성격이지만 여러 사람들과 함께 활동적으로 지내는, 리더쉽이 있는 사람입니다. 분위기 넘치게 피아노를 치는 허스키처럼 차분한 카리스마의 정석이군요! 마치 엄친아 학생회장 선배같아요.","percent":"","pic":"resources/m00001.png","num":65},
{"code":"resources/m00010","name":"꽃에 물을 주는 다람쥐 ","detail":"당신은 단정한 스타일에 차분한 성격입니다. 보호본능을 마구 일으키는 마성의 남자군요! 혼자 꽃에 물을 주며 생각에 잠겨있는 당신의 이야기를 모두가 궁금해 할 것 같아요. 왠지 모르게 챙겨주고 싶어질 것 같네요.","percent":"","pic":"resources/m00010.png","num":66},
{"code":"resources/m00011","name":"외발자전거를 타는 미어캣","detail":"당신은 단정한 스타일에 차분한 성격의, 아슬아슬한 외발자전거를 타는 미어캣처럼 보호본능을 일으키는 남자입니다. 그치만 놀 땐 놀 줄 아시는군요. 주변 사람도 잘 챙기는 당신에게는 특별한 개성과 매력이 엿보이네요.","percent":"","pic":"resources/m00011.png","num":67},
{"code":"resources/m00100","name":"정장 입고 춤추는 여우 ","detail":"당신은 단정한 스타일에 원하는 것을 위해 적극적으로 임할 수 있는, 리더쉽 있는 사람입니다. 활동적인 취미를 즐겨하고, 듬직하면서도, 유쾌한 면모를 갖고 있네요. 추운 겨울날 모직 코트 속에서 핫팩을 꺼내 주며 VR게임하러 가자고 말할 것만 같아요.","percent":"","pic":"resources/m00100.png","num":68},
{"code":"resources/m00101","name":"삶이 즐거운 트럼프카드  ","detail":"당신은 주변 사람들을 리드해 함께 활발히 취미생활을 즐기러 다니고 싶어하는 팔색조의 소유자입니다! 그렇지만 반전 매력으로 깔끔하고 단정한 스타일의 정석인데요, 댄디하면서도 다양한 모습인 트럼프카드에 비유할 수 있겠군요! 인디 음악 축제를 함께 가자며 티켓을 사들고 데리러 올 것만 같아요.","percent":"","pic":"resources/m00101.png","num":69},
{"code":"resources/m00110","name":"덩치보다 큰 백팩을 맨 펭귄 ","detail":"당신은 귀여우면서도 믿음직스러운 사람이군요! 단체 행사에 빠지지 않지만 종종 혼밥도 즐기는 당신, 혼자서도 여기저기 잘 놀러다니실 것 같아요! 곳곳에서 귀여움을 받지만 나약한 것은 전혀 아니고, 사회생활은 활발히 밝게 잘 해내는 당신은 자기 덩치만한 큰 백팩을 매고 아등바등 매사에 열심인 펭귄같습니다.","percent":"","pic":"resources/m00110.png","num":70},
{"code":"resources/m00111","name":"순진무구한 참새 ","detail":"당신은 깨발랄하게 사람들과 함께하는 걸 좋아하는 사람입니다. 그치만 순진무구한 참새처럼 이따금씩 덜렁대서 보듬어주고 항상 눈앞에 두고싶은 사람이기도 하네요. 짹짹 발랄한 모습이 왠지 모르게 귀여운 당신은 항상 모임에서 환영받는군요.","percent":"","pic":"resources/m00111.png","num":71},
{"code":"resources/m01000","name":"정장입은 바위 ","detail":"당신은 묵묵하고 듬직한 사람이군요. 예의를 잘 지키려고 하고 우직한, 사려깊은 성격이기도 합니다. 차분하게 자신의 일을 해나가는 당신의 모습은 언제든 기대도 포근하게 받아줄거 같네요.","percent":"","pic":"resources/m01000.png","num":72},
{"code":"resources/m01001","name":"넥타이 맨 늑대 ","detail":"당신은 차분하고 어른스러운 사람이군요. 어마어마한 존재감을 가진 당신은 많은 말을 하지 않아도 자연스럽게 무리의 중심에 서게 되는 사람입니다. 당신의 타고난 카리스마는 대체불가능이에요.","percent":"","pic":"resources/m01001.png","num":73},
{"code":"resources/m01010","name":"영화를 보는 아기여우 ","detail":"당신은 조용조용하게 노력하는 스타일이군요. 혼자서의 시간도 잘 즐길줄 알아서, 볕이 좋은 날에 도서관에서 책을 읽고 있을 것만 같아요. 어쩌면 책을 추천해줄지도 모르겠군요. 왠지 지켜줘야 할 것 같은 마음도 드네요.","percent":"","pic":"resources/m01010.png","num":74},
{"code":"resources/m01011","name":"편지쓰는 아기여우 ","detail":"당신은 조곤조곤하게 자기 일을 해나가지만 때론 강단있는 모습을 보입니다. 조금 느릴지 몰라도 마음먹은 일은 꼭 해내고 마는 당신의 모습은 누군가에게는 감동으로 다가가기도 하는군요. 이런 당신의 모습은 편지에 마음을 꾹꾹 담아 쓰는 아기 여우를 떠오르게 하네요.","percent":"","pic":"resources/m01011.png","num":75},
{"code":"resources/m01100","name":"젤리 먹는 곰 ","detail":"당신은 외로움을 타는 스타일은 아닙니다. 자신의 감정을 잘 컨트롤 할 수 있는 밝으면서도 어른스러운 사람이군요. 때로는 사람들과 선을 긋는듯한 절제하는 모습을 보이기도 하죠. 하지만 그 선 안으로 들어가면 의외의 모습들도 보여줄 것만 같아요.","percent":"","pic":"resources/m01100.png","num":76},
{"code":"resources/m01101","name":"훌라후프를 돌리는 곰 ","detail":"당신은 조용히 있는데도 사람들이 너무나 좋아하는 타입이네요. 무심코 건넨 한마디 한마디에 다들 웃음을 짓는군요. 당신만의 특별한 매력이 가득해서 그런가봐요. 자기도 모르는 새 인싸가 되어버린 사람이네요.","percent":"","pic":"resources/m01101.png","num":77},
{"code":"resources/m01110","name":"낯가리는 아기토끼 ","detail":"당신은 낯을 좀 가리는 사람이네요. 하지만 친해진다면 당신의 발랄한 성격을 확인할 수 있을 거에요. 당신의 바운더리 밖의 사람들에겐 무심하게 굴지만, 특별하다고 생각되는 사람들 앞에서는 무장해제 되는군요. 혹시 귀엽다는 말을 자주 듣지는 않나요? 마치 낯가리는 아기토끼의 모습 같아요.","percent":"","pic":"resources/m01110.png","num":78},
{"code":"resources/m01111","name":"귀염뽀짝 아기토끼 ","detail":"당신은 발랄하고 귀여운 스타일이네요. 많이 움직이는 걸 귀찮아하지만 사람들과 함께 있는 건 좋아하시는군요. 당신의 똘망똘망한 눈빛에 다들 심쿵하고 있을 것 같아요. 존재만으로 누군가에게 힐링이 되고 있을 거예요.","percent":"","pic":"resources/m01111.png","num":79},
{"code":"resources/m10000","name":"비보잉하는 코뿔소 ","detail":"당신은 진지하고 차분한 사람이군요. 하지만 반전으로 열정 넘치게 춤추는 코뿔소처럼, 의외의 반전매력이 있네요. 무슨 생각을 하는지 모르겠는 진지한 얼굴 뒤에 온갖 열정이 숨어있는 당신이 궁금하네요.","percent":"","pic":"resources/m10000.png","num":80},
{"code":"resources/m10001","name":"신비의 동물 백호 ","detail":"당신은 편안하지만 동시에 긴장감을 주는 어른스러운 사람이군요. 운동이면 운동, 공부면 공부, 어느쪽도 놓치지 않는 완벽한 사람입니다. 마치 학교에서 마주친 인기많은 선배를 떠올리게 하네요.","percent":"","pic":"resources/m10001.png","num":81},
{"code":"resources/m10010","name":"스케이트보드 타는 고슴도치 ","detail":"당신은 차분하고 때로는 보호본능을 자극하는 사람이군요. 귀여워 보이기도 하지만 홀로 노력하는 모습에 새로운 매력을 느끼게 하죠. 타고난 친화력에 어디서든 사랑받기도 합니다.","percent":"","pic":"resources/m10010.png","num":82},
{"code":"resources/m10011","name":"풍선을 든 크림빵 ","detail":"당신은 조곤조곤하고 귀여운 사람입니다. 보호본능을 자극하는 나른하고 편안한 매력을 갖고 있네요. 풍선을 들고 두둥실 떠다니는 크림빵처럼, 활동적이고 새로운 것들에도 차분하게 도전하기도 합니다.","percent":"","pic":"resources/m10011.png","num":83},
{"code":"resources/m10100","name":"내맘대로 주황 여우 ","detail":"당신은 아주 매력적인 사람이군요. 마냥 재미있는 사람 같다가도, 함부로 할 수 없는 카리스마를 풍기고 있어요. 당신은 왠지 자꾸 궁금해지는 사람이지만, 은근히 곁을 쉽게 내주지 않아 더 애가 타죠. 당신 때문에 눈물 흘린 사람들이 꽤 있을지도 모르겠다는 예감이 드는군요.","percent":"","pic":"resources/m10100.png","num":84},
{"code":"resources/m10101","name":"테니스 채를 든 리트리버 ","detail":"든든하고 활동적인 당신은 여러 사람들에게 인기있는 스타일이군요. 낯을 가리지 않고 타인과 쉽게 친해지는 성격에 당신은 언제나 인싸의 길만 걷고 있습니다. 당신의 유쾌하면서도 선을 넘지 않는 유머감각은 많은 사람들에게 즐거움을 줄 것 같군요.","percent":"","pic":"resources/m10101.png","num":85},
{"code":"resources/m10110","name":"게임 중인 너구리 ","detail":"당신은 활발하지만 혼자서도 씩씩하게 일하는 남자군요. 여린 면도 있지만, 잘 이겨낼 강인함도 갖고 있어요. 게임을 아주 잘 할 가능성이 높습니다. Pc방에서 만날 수 있을 것만 같네요.","percent":"","pic":"resources/m10110.png","num":86},
{"code":"resources/m10111","name":"꼬리 흔드는 포메라니안 ","detail":"허당끼 가득한 당신은 정말이지 귀여운 사람이군요. 뭘 하든 다른 사람들의 당신의 눈에는 마냥 귀엽기 일쑤입니다. 눈을 떼면 사고를 칠까 자꾸 주시하게 되는 당신의 옆에는 사람이 많네요.","percent":"","pic":"resources/m10111.png","num":87},
{"code":"resources/m11000","name":"묵묵히 친절을 베푸는 코뿔소  ","detail":"당신은 편안한 스타일로 차분한 리더쉽을 가진 사람입니다. 시끄러운 것보다는 조용한 걸 좋아하며, 언제나 든든한 당신! 술 마시고 들어간 다음날 찾아와 묵묵히 숙취해소 음료를 말없이 건네주고 돌아가는 코뿔소가 생각나는군요.","percent":"","pic":"resources/m11000.png","num":88},
{"code":"resources/m11001","name":"캠퍼스룩을 입은 고래 ","detail":"당신은 편하면서도 무시할 수 없는 무게를 가진 사람이네요. 의외의 장난끼도 갖고 있지만, 동시에 어른스럽기도 합니다. 당신은 그냥 믿음이 가면서도 함께 있으면 재미있는, 듬직하고 차분한 사람이군요!","percent":"","pic":"resources/m11001.png","num":89},
{"code":"resources/m11010","name":"나른한 표정으로 책을 끼고 웅크린 실타래  ","detail":"당신은 차분한 성격에 홀로 고독한 삶을 영위해 보호본능을 마구 일으키는 사람입니다. 생각도 많고 혼자서 잘 지내는데 왠지 모르게 자꾸 건드려보고 싶은 마음이 드네요. 함께 따뜻한 차를 홀짝이고 싶은, 나른하고 편안한 사람이군요.","percent":"","pic":"resources/m11010.png","num":90},
{"code":"resources/m11011","name":"후드집업을 입고서 울먹거리는 참새  ","detail":"마음이 여린 당신은 사람을 엄청 좋아하네. 사소한 것도 지나치지 않고 다른 사람들과 나누는 재미를 아시는군요. 거창하고 커다란 일이 아니더라도 소중히 여기는 당신의 마음을 모두가 알아줄 거예요.","percent":"","pic":"resources/m11011.png","num":91},
{"code":"resources/m11100","name":"웃으며 인사하는 선배 코끼리  ","detail":"당신은 편안하게 사람들을 이끄는 리더십을 가졌네요. 따뜻하면서도 강렬한 존재감을 가진 당신의 말이라면 뭐든 믿음이 갈 것 같아요. 혼자만의 시간을 즐기기도 하지만, 주변 사람들에게 따뜻하고 스윗한 면모도 아낌없이 보여주고 있네요.","percent":"","pic":"resources/m11100.png","num":92},
{"code":"resources/m11101","name":"밝은 표정으로 통화하는 안경 낀 사모예드","detail":"당신은 환한 표정으로 주변까지 밝혀주는 사람이네요! 사모예드처럼 듬직하면서도 사랑스러운 면모까지 갖고 있습니다. 일상 안에서 특별함을 찾을 줄 아는 당신 옆에 있으면 유쾌함이 전해질 것만 같아요!","percent":"","pic":"resources/m11101.png","num":93},
{"code":"resources/m11110","name":"베게를 껴안은 곰인형 ","detail":"당신은 꽤나 집돌이군요. 침대와 물아일체 되어 가만히 굴러다니는 걸 좋아합니다. 쾌활하고 사랑스러운 당신은 주변 사람들의 사랑을 받지만, 혼자만의 시간도 당신에겐 아주 중요합니다. 뒹굴뒹굴하는 시간은 꼭 필요하니까요!","percent":"","pic":"resources/m11110.png","num":94},
{"code":"resources/m11111","name":"신나서 두팔 벌린 아르마딜로 ","detail":"당신은 조잘조잘 친구들과 이야기하는 걸 좋아하는 귀여운 사람입니다. 많이 움직이는 건 싫어하지만, 단체 행사에는 은근히 성실하게 나가요. 주변 사람들을 아끼고, 사소한 것들도 나누는 걸 좋아하는 스윗한 사람이네요.","percent":"","pic":"resources/m11111.png","num":95},
{"code":"resources/f00000","name":"바이올린 키는 샴고양이","detail":"당신은 스스로 자신있는 일에 몰두할 줄 아는 멋있는 사람이군요. 언뜻 봤을 때는 몰라보기 쉽지만, 혼자만의 시간을 즐길 줄 알고 차분한 당신은 당신만의 깊이가 있는 사람이네요. 스스로의 열정을 갈고 닦아서 매진할 줄 아는 당신의 고독하면서도 카리스마 넘치는 모습은 연습에 빠지지 않고 매진하는 성실한 음대생을 떠올리게 하네요.","percent":"","pic":"resources/f00000.png","num":96},
{"code":"resources/f00001","name":"블랙 원피스를 입은 표범","detail":"당신은 차분하지만 강렬한 카리스마를 가졌군요! 조곤조곤한 당신의 말은 왜인지 거부할 수 없는 무게를 갖고 있어요. 마치 조곤조곤 회의를 휘어잡는 멋쟁이 상사같은 당신의 카리스마에 반한 사람들이 한둘이 아닐 것 같아요.","percent":"","pic":"resources/f00001.png","num":97},
{"code":"resources/f00010","name":"비를 맞으며 노래를 부르는 병아리","detail":"당신은 보호본능을 마구마구 일으키는 마성의 여자군요! 차분하고 조용한 것 같으면서도, 혼자서 이것저것 알차게 잘 하면서 지내고 있네요! 부슬비를 맞으면서 노래를 부르는 병아리처럼, 당신은 왠지 호기심을 불러일으키는, 자꾸만 더 알아가고 싶은 사람입니다.","percent":"","pic":"resources/f00010.png","num":98},
{"code":"resources/f00011","name":"스파게티 먹는 강아지","detail":"당신은 어르스러운 듯하면서도 귀여운 구석이 많은 사람이네요. 조용조용 차분할 것 같으면서도 놀 땐 놀 줄 아는 당신! 주변 사람들도 잘 챙기시네요. 이런 당신은 스파게티를 먹으며 소스를 입에 묻힌 강아지를 떠오르게 하는걸요?","percent":"","pic":"resources/f00011.png","num":99},
{"code":"resources/f00100","name":"노란 원피스 입은 흰 여우","detail":"자신만의 확고한 기준을 갖고, 적극적이면서도 선을 넘지 않는 당신! 이런 차분한 카리스마가 숨겨져있는 든든한 당신에게는 왠지 기대고 싶어질 것 같아요. 그러면서도 발랄하고 싱그러운 당신만의 에너지를 갖고 계시는군요!","percent":"","pic":"resources/f00100.png","num":100},
{"code":"resources/f00101","name":"삶이 즐거운 트럼프카드","detail":"당신은 주변 사람들을 리드해 함께 활발히 취미생활을 즐기러 다니고 싶어하는 팔색조의 소유자입니다! 그렇지만 반전 매력으로 깔끔하고 단정한 스타일의 정석이기도 하네요. 딱딱 정돈되어 있으면서도 어디에나 재미있게 어울리는 트럼프카드에 비유할 수 있겠군요! 마치 스타트업의 에너지 넘치는 젊은 팀장님 같은 느낌이 나는걸요?","percent":"","pic":"resources/f00101.png","num":101},
{"code":"resources/f00110","name":"덩치보다 큰 백팩을 맨 펭귄","detail":"당신은 귀여우면서도 믿음직스러운 사람이군요! 단체 행사에 빠지지 않지만 종종 혼밥도 즐기는 당신, 혼자서도 여기저기 잘 놀러다니실 것 같아요! 곳곳에서 귀여움을 받지만  나약한 것은 전혀 아니고, 사회생활은 활발히 밝게 잘 해내는 당신은 자기 덩치만한 큰 백팩을 매고 아등바등 매사에 열심인 펭귄같습니다.","percent":"","pic":"resources/f00110.png","num":102},
{"code":"resources/f00111","name":"순진무구한 뱁새","detail":"당신은 깨발랄하게 사람들과 함께하는 걸 좋아하는 사람입니다. 이따금씩 덜렁대서 보듬어주고 싶으면서도 다른 사람들을 즐겁게 만들어주며 어느 모임에서든 환영받는 사람이군요. 짹짹 시끄러운 모습이 왠지 모르게 매력적인 당신은 순진무구한 뱁새를 떠오르게 하네요!","percent":"","pic":"resources/f00111.png","num":103},
{"code":"resources/f01000","name":"신비의 동물 현무","detail":"당신은 차분하게 사람들의 얘기를 잘 들어주고 현명한 답을 내어줄 사람이네요. 촐랑대지 않고 묵묵히 자신의 일을 해나가는 당신의 모습에 모두가 매력을 느낄 거예요. 당시니라면 언제든 기대도 포근하게 받아줄거 같네요.","percent":"","pic":"resources/f01000.png","num":104},
{"code":"resources/f01001","name":"와인 마시는 백조","detail":"당신은 차분하고 어른스러운 여자군요. 당신은 많은 말을 하지 않아도 자연스럽게 무리의 중심에 서게 되는 사람입니다. 리더십있게 사람들을 이끌어가는 당신의 모습에 모두가 어느새 완전히 홀려버렸습니다.","percent":"","pic":"resources/f01001.png","num":105},
{"code":"resources/f01010","name":"코코아 안에서 목욕하는 마시멜로","detail":"당신은 조용조용하게 노력하는 스타일이네요. 코코아 속에서 목욕하며 책을 읽고 있을 것만 같아요. 어쩌면 주변 사람들에게 책을 추천해줄지도 모르겠군요. 당신을 보면 왠지 지켜주고 싶은 마음이 들지만 사실 혼자서도 아주 잘 지내고 있군요.","percent":"","pic":"resources/f01010.png","num":106},
{"code":"resources/f01011","name":"편지를 주는 컵케잌","detail":"당신은 조곤조곤하게 자기 일을 해나가지만 때론 강단있는 모습을 보여주는 사람이군요. 달콤한 컵케잌처럼 귀여운 면모를 가지면서도, 조금 쑥쓰러울 때도 있지만 마음 먹은 일은 꼭 해내는 당신은 하고 싶은 말을 편지에 담은 컵케잌을 떠오르게 해요. 이런 당신의 진심은 결국 모두에게 전해질 거예요.","percent":"","pic":"resources/f01011.png","num":107},
{"code":"resources/f01100","name":"안경을 쓴 페르시안 고양이","detail":"당신은 자신의 감정을 잘 컨트롤 할 수 있는 밝으면서도 어른스러운 사람이군요. 당신은 홀로 있을 때 외로움을 타는 스타일은 아닙니다. 바운더리가 확실하지만 그 안에서는 마구 퍼주는 당신은 누구에게나 믿음직스러운 사람이네요.","percent":"","pic":"resources/f01100.png","num":108},
{"code":"resources/f01101","name":"책읽는 푸들","detail":"당신은 조용히 있는데도 사람들이 너무나 좋아하는 타입이네요. 마치 홀로 책을 읽고 있지만 모두가 애정을 보이는 푸들 같아요. 당신의 한마디 한마디가 왠지 주변 사람들의 기분을 좋게 만들어줍니다. 자기도 모르는 새에 인싸가 되어버린 사람이네요.","percent":"","pic":"resources/f01101.png","num":109},
{"code":"resources/f01110","name":"낯가리는 아기토끼","detail":"당신은 낯을 좀 가리는 사람이네요. 하지만 친해진다면 당신의 발랄한 성격을 확인할 수 있을 거에요. 당신의 바운더리 밖의 사람들에겐 무심하게 굴지만, 특별하다고 생각되는 사람들 앞에서는 무장해제 되는군요. 혹시 귀엽다는 말을 자주 듣지는 않나요? 마치 낯가리는 아기토끼의 모습 같아요.","percent":"","pic":"resources/f01110.png","num":110},
{"code":"resources/f01111","name":"뽀짝거리는 아기토끼","detail":"당신은 발랄하고 귀여운 스타일이네요. 많이 움직이는 걸 귀찮아하지만 사람들과 함께 있는 건 좋아하시는군요. 당신의 똘망똘망한 눈빛에 다들 심쿵하고 있을 것 같아요. 존재만으로 누군가에게 힐링이 되고 있을 거예요.","percent":"","pic":"resources/f01111.png","num":111},
{"code":"resources/f10000","name":"신비의 동물 주작","detail":"당신은 강렬한 인상의 활동적이고 쿨한 사람입니다. 누가 봐도 멋진 언니같은 당신에게는 어딘가 비밀이 있는 것 같기도 합니다. 다가가기 어려운 당신은 혼자서도 빛나는 사람이군요. 당신은 한 번 보면 절대 잊지 못할 사람이에요.","percent":"","pic":"resources/f10000.png","num":112},
{"code":"resources/f10001","name":"항공점퍼를 입은 호랑이","detail":"당신은 열정이 넘치는 당찬 사람이군요. 어른스럽고 차분하게 일을 착착 진행하는 당신에게 혹시 사람들이 자꾸 감투를 부탁하지는 않나요? 당신의 유쾌하고 든든한 리더십을 거부할 수 있는 사람은 없을 거예요!","percent":"","pic":"resources/f10001.png","num":113},
{"code":"resources/f10010","name":"해바라기씨 먹는 햄스터","detail":"당신은 편안한 분위기를 좋아합니다. 화낼 때도 언성을 높이지 않는 차분한 사람이죠. 조곤조곤하면서도 왠지 모를 귀여움을 받는 당신, 혹시 당신의 취미가 맛집 찾아다니기는 아닌가요? 오물오물 해바라기씨를 먹는 햄스터처럼 말이에요!","percent":"","pic":"resources/f10010.png","num":114},
{"code":"resources/f10011","name":"챗바퀴 도는 햄스터","detail":"당신은 사람들과 어울리기를 좋아하는 사랑스러운 사람이군요. 하지만 신중함을 잃지는 않아요. 늘 열심이기도 하죠. 음식 하나를 고를 때도 진지한 그녀를 사람들은 마냥 귀여워합니다.","percent":"","pic":"resources/f10011.png","num":115},
{"code":"resources/f10100","name":"위스키 마시는 구미호","detail":"당신은 아주 매력적인 여자군요. 당신의 화려한 말솜씨에 어느새 넘어가기 일수입니다. 하지만 은근히 곁을 쉽게 내주지 않아 더 애가 타죠. 당신 때문에 눈물 흘린 사람이 한 둘이 아니겠어요.","percent":"","pic":"resources/f10100.png","num":116},
{"code":"resources/f10101","name":"맥주 마시는 구미호","detail":"당신은 매력적이고 인기가 많은 스타일이군요. 낯을 가리지 않고 타인과 쉽게 친해지는 성격에 언제나 친구가 많습니다. 쾌활하게 사람들을 리드하는 당신의 매력은 마치 구미호처럼 사람들을 이끌어요.","percent":"","pic":"resources/f10101.png","num":117},
{"code":"resources/f10110","name":"조개집 만드는 해달","detail":"당신은 활발하지만 혼자서도 씩씩하게 일하는 사람이군요. 감정에 예민한 당신은 상처 받는 순간들에 많이 힘들어하기도 하지만 잘 극복해낼 강인함도 갖고 있어요. 열심히 조개집을 만드는 해달처럼, 귀여움부터 열정까지 다 가졌군요!","percent":"","pic":"resources/f10110.png","num":118},
{"code":"resources/f10111","name":"치어리딩하는 다람쥐","detail":"당신은 허당끼가 조금 있는 귀여운 사람이군요. 발발거리고 돌아다니는 걸 좋아해 무슨 사고를 칠까 눈을 뗄 수 없는게 또 다른 매력이죠. 오, 술도 잘 마시네요, 아니 금새 취하지만 좋아하네요. 언제나 깨발랄한 당신 주위에는 언제나 사람이 많네요!","percent":"","pic":"resources/f10111.png","num":119},
{"code":"resources/f11000","name":"아메리카노를 마시는 암사슴","detail":"당신은 차분하게 다른 사람들을 리드해줍니다. 단아한 당신은 볕이 잘 드는 카페에서 혼자 책 읽으며 아메리카노를 마시는 암사슴 같아요. 시끄럽고 활동적인 것보다는 조용하고 편한 것을 좋아하는 당신에게는 늘 여유가 흘러넘치는 것 같아요.","percent":"","pic":"resources/f11000.png","num":120},
{"code":"resources/f11001","name":"술취해서 나른한 표정의 양","detail":"당신은 어른스러우면서도 조금 허당끼가 있는 사람이군요! 일상을 누군가와 나누는 것을 좋아하지만, 요란한 것보다는 편안한 것을 추구하는 것 같아요. 집앞 포차에서 소주 한 잔 하는 걸 좋아하실 것만 같은 당신은 헤롱헤롱 귀여운 양을 떠올리게 하네요.","percent":"","pic":"resources/f11001.png","num":121},
{"code":"resources/f11010","name":"졸고 있는 모찌떡","detail":"당신은 차분한 성격이면서 보호본능을 마구 일으키는 사람입니다. 골방에서 담요를 두르고 책을 읽고 있는 모찌떡처럼, 생각도 많고 혼자서 잘 지내는데 왠지 모르게 귀여운 마음이 자꾸 들어요. 함께 따뜻한 차를 홀짝이고 싶은, 나른하고 편안한 사람이네요.","percent":"","pic":"resources/f11010.png","num":122},
{"code":"resources/f11011","name":"얼굴을 붉히면서 수줍음을 떠는 타꼬야끼","detail":"당신은 부끄러움은 많지만 사실 사람을 엄청 좋아하는군요. 사소한 것도 지나치지 않고 다른 사람들과 나누는 재미를 아는 사람이네요. 거창하고 커다란 일이 아니더라도 소중히 여기는 당신의 마음을 모두가 알아줄 거예요.","percent":"","pic":"resources/f11011.png","num":123},
{"code":"resources/f11100","name":"카페라떼 마시는 너구리","detail":"당신은 보기만해도 편안해지는 사람이군요. 당신의 온화한 미소에 절로 기분이 좋아질 것 같아요. 그러면서도 당신만의 유쾌함과 발랄함을 갖고 편안하게 사람들을 이끄시네요. 어제 혼자 갔던 카페의 라떼가 맛있었다며 같이 가자고 말해올 것만 같아요.","percent":"","pic":"resources/f11100.png","num":124},
{"code":"resources/f11101","name":"고깔을 쓰고 폭죽을 터트리는 유쾌한 표정의 두더지","detail":"당신은 일상 속의 특별함을 찾아낼 줄 아는 사람이네요. 으리으리한 레스토랑보단 방에서 파자마에 고깔을 쓰고 폭죽을 터트리는 편안하고도 신나는 일들을 추구하시는군요! 함께 있으면 주변까지 절로 유쾌해질 것만 같아요.","percent":"","pic":"resources/f11101.png","num":125},
{"code":"resources/f11110","name":"넷플릭스 보는 물개","detail":"당신은 꽤나 집순이군요. 침대와 물아일체가 되어 핸드폰 보는 걸 좋아합니다. 쾌활하고 사랑스러운 당신은 주변 사람들의 사랑을 받지만, 혼자만의 시간도 당신에겐 아주 중요합니다. 뒹굴뒹굴하는 시간은 꼭 필요하니까요!","percent":"","pic":"resources/f11110.png","num":126},
{"code":"resources/f11111","name":"대나무를 껴안은 레서팬더","detail":"당신은 조잘조잘 이야기하는 걸 좋아하는 귀여운 사람입니다. 대나무를 껴안은 래서팬더처럼 많이 움직이는걸 귀찮아하는 집순이지만, 술자리엔 은근 빠지지 않는군요. 편한 사람들과 편한 곳에서 수다떠는 것을 최고로 행복해하네요!","percent":"","pic":"resources/f11111.png","num":127}];
    </script>
	<br>
	<br>
	
	
<div class="options__ouvgd text-center">
	<a href="FUN_2_test2" class="ui inverted red button" style="width:400px; font-size:20px;">처음으로</a>
</div><br><br>










 


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
