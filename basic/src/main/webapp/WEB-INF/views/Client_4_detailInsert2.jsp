<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html class="no-js">
   <head>

	   <title>기본폼	</title>

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
			 src="https://code.jquery.com/jquery-3.1.1.min.js"
			 integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
			 crossorigin="anonymous"></script>
		   <script src="resources/js/semantic.min.js"></script>
<!-- Client_4_detailInsert1.do -->
   </head>


   

<section id="fh5co-testimonials" data-section="testimonials">

   
   <div class="row">	
	   <div class="col-md-12 section-heading text-center">
		   <h2>당신을 어필해보아요!</h2>
	   </div>
	   <div class="col-md-05 section-heading text-center">
		   <h1>당신의 얼굴이 궁금해요 사진을 올려주세요!</h1>
	   </div>
	   <div class="options__ouvgd text-center">
	   	<form method="POST" action="updatePhotoClientDetailInfo" enctype="multipart/form-data">
		   <input type="file" id="file" name="file" accept="image/*" onchange="setThumbnail(event);" style="width:200px;
		   		 height: 50px; font-size:20px; margin-left: 700px " maxlength="500"/>
		    <div id="image_container"></div> 
		    <button class="btn btn-primary" type="submit" >저장</button>
		</form>
		    <script> 
		    function setThumbnail(event) { 
		    	var reader = new FileReader(); 
		    	reader.onload = function(event) { 
		    		var img = document.createElement("img"); 
		    		img.setAttribute("src", event.target.result); 
		    		document.querySelector("div#image_container").appendChild(img); 
		    		}; 
		    	reader.readAsDataURL(event.target.files[0]); } 
		    </script>

	   </div>
   </div>

</section>




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
   <script
	   src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
   <script src="resources/js/google_map.js"></script>
   <script src="resources/js/main.js"></script>

</body>

</html>

