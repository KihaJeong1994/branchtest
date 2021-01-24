<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Elate &mdash; 100% Free Fully Responsive HTML5 Template</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />
	
	<script language="javascript">
	function moveCloseOff() {		
	  opener.location.href="payment.jsp";	
	  
	  self.close()  
	  
	}				
	function showPopup() { window.open("paymentFinish.jsp");
		close()
	}
	
	  </script>

	  
	  
  <!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,600,400italic,700' rel='stylesheet' type='text/css'>
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="elate-master/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="elate-master/css/icomoon.css">
	<!-- Simple Line Icons -->
	<link rel="stylesheet" href="elate-master/css/simple-line-icons.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="elate-master/css/magnific-popup.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="elate-master/css/bootstrap.css">

	<!-- 
	Default Theme Style 
	You can change the style.css (default color purple) to one of these styles
	
	1. pink.css
	2. blue.css
	3. turquoise.css
	4. orange.css
	5. lightblue.css
	6. brown.css
	7. green.css

	-->
	<link rel="stylesheet" href="elate-master/css/style.css">

	<!-- Styleswitcher ( This style is for demo purposes only, you may delete this anytime. ) -->
	<link rel="stylesheet" id="theme-switch" href="elate-master/css/style.css">
	<!-- End demo purposes only -->


	<style>
	/* For demo purpose only */
	
	/* For Demo Purposes Only ( You can delete this anytime :-) */
	#colour-variations {
		padding: 10px;
		-webkit-transition: 0.5s;
	  	-o-transition: 0.5s;
	  	transition: 0.5s;
		width: 140px;
		position: fixed;
		left: 0;
		top: 100px;
		z-index: 999999;
		background: #fff;
		/*border-radius: 4px;*/
		border-top-right-radius: 4px;
		border-bottom-right-radius: 4px;
		-webkit-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
		-moz-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
		-ms-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
		box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
	}
	#colour-variations.sleep {
		margin-left: -140px;
	}
	#colour-variations h3 {
		text-align: center;;
		font-size: 11px;
		letter-spacing: 2px;
		text-transform: uppercase;
		color: #777;
		margin: 0 0 10px 0;
		padding: 0;;
	}
	#colour-variations ul,
	#colour-variations ul li {
		padding: 0;
		margin: 0;
	}
	#colour-variations li {
		list-style: none;
		display: block;
		margin-bottom: 5px!important;
		float: left;
		width: 100%;
	}
	#colour-variations li a {
		width: 100%;
		position: relative;
		display: block;
		overflow: hidden;
		-webkit-border-radius: 4px;
		-moz-border-radius: 4px;
		-ms-border-radius: 4px;
		border-radius: 4px;
		-webkit-transition: 0.4s;
		-o-transition: 0.4s;
		transition: 0.4s;
	}
	#colour-variations li a:hover {
	  	opacity: .9;
	}
	#colour-variations li a > span {
		width: 33.33%;
		height: 20px;
		float: left;
		display: -moz-inline-stack;
		display: inline-block;
		zoom: 1;
		*display: inline;
	}
	

	.option-toggle {
		position: absolute;
		right: 0;
		top: 0;
		margin-top: 5px;
		margin-right: -30px;
		width: 30px;
		height: 30px;
		background: #f64662;
		text-align: center;
		border-top-right-radius: 4px;
		border-bottom-right-radius: 4px;
		color: #fff;
		cursor: pointer;
		-webkit-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
		-moz-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
		-ms-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
		box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
	}
	.option-toggle i {
		top: 2px;
		position: relative;
	}
	.option-toggle:hover, .option-toggle:focus, .option-toggle:active {
		color:  #fff;
		text-decoration: none;
		outline: none;
	}
	#fh5co-home .text-wrap {
	
  	height: 700px;
  	border:2px solid 3f95ea;

	}
	.w3-table-all notranslate{
	 
	
	}

	</style>
	<!-- End demo purposes only -->


	<!-- Modernizr JS -->
	<script src="elate-master/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body>

	<section id="fh5co-home" data-section="home" style="background-image: url(images/full_image_2.jpg);" data-stellar-background-ratio="0.5">
		<div class="gradient"></div>
		<div class="container">
  			<div class="text-wrap" style="top:100px; background-color: white;" align="center">	
  				<div class="row row-bottom-padded-md">					
					<div class="col-md-6 to-animate" >														
						<div class="form-group" style="padding: 50px;">	
						
							<!-- 테이블 -->
							<table class="w3-table-all notranslate" style="width:400px;height: 400px;">							
				              <tbody>
				              	<thead><h3>상세결제</h3></thead>
				                <tr>
				                  <th style="border: 2px solid #52D3AA;width: 120px;"><h5 align="center">선택한 결제수단</h5></th>
				                  <th style="border: 2px solid #52D3AA;width: 200px;padding:10px;"><h4 align="center">
				                  <div class="form-group "><h4  class="form-control">카드결제</h4></div></h4></th>
				                </tr>
				                
				                <tr>
				                  <th style="border: 2px solid #52D3AA;width: 120px;padding:20px;"><h5 align="center">이체할은행</h5></th>
				                  <th style="border: 2px solid #52D3AA;width: 200px; height : 50px;padding:10px;">				                  
									<h4 class="form-control">
										<select name="addr">은행 선택</h4>	
											<option value="">-은행선택-</option>
												<option value="NH농협">NH농협</option>
												<option value="우리은행">우리은행</option>
												<option value="KB국민은행">KB국민은행</option>
												<option value="IBK기업은행">IBK기업은행</option>
										</select>	
									</th>						
				                </tr>
				                
				                <tr>
				                  <th style="border: 2px solid #52D3AA;width: 120px;"><h5 align="center">이체하실계좌번호</h5></th>				                  
				                  <th style="border: 2px solid #52D3AA;width: 200px; padding:10px;">		
				                  <div class="form-group "><h3  class="form-control" align="center">1223-123-123443</h3></div></th>					                  																																		                  	                 			                  
				                </tr>	
				                
				                <tr>
				                  				                  				                  						                  																																		                  		                 			                  
				                </tr>					                		                
				              </tbody>				             
				            </table>
				            <!-- 테이블 -->
				            				            
				            <div class="form-control" align="center" style="border: 2px solid #52D3AA;width: 400px; height : 150px;padding:30px;">위의 입력한 정보가 맞으며 <br>개인정보 이용에 동의합니다.<br>
				            <input type="checkbox" onclick="alert('이용약관에 동의하셧습니다.');">
				            </div>
				            				          				            					            
							<!-- 결제 버튼 -->
				            <div class="form-group" style="padding: 50px;">
							<input class="btn btn-primary btn-lg" type="button" value="결제 완료" onclick="showPopup();"/>
							<input class="btn btn-primary btn-lg"  type="button" value="결제 취소" onclick="self.close();" />			
						</div><!-- 결제 버튼 -->					
							  
					</div>	
					</div>			
				</div>
			</div>	
		</div>									
</section>

						
											

	


	
	<!-- jQuery -->
	<script src="elate-master/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="elate-master/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="elate-master/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="elate-master/js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="elate-master/js/jquery.stellar.min.js"></script>
	<!-- Counter -->
	<script src="elate-master/js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="elate-master/js/jquery.magnific-popup.min.js"></script>
	<script src="elate-master/js/magnific-popup-options.js"></script>
	<!-- Google Map -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
	<script src="elate-master/js/google_map.js"></script>

	<!-- For demo purposes only styleswitcher ( You may delete this anytime ) -->
	<script src="elate-master/js/jquery.style.switcher.js"></script>
	<script>
		$(function(){
			$('#colour-variations ul').styleSwitcher({
				defaultThemeId: 'theme-switch',
				hasPreview: false,
				cookie: {
		          	expires: 30,
		          	isManagingLoad: true
		      	}
			});	
			$('.option-toggle').click(function() {
				$('#colour-variations').toggleClass('sleep');
			});
		});
	</script>
	<!-- End demo purposes only -->

	<!-- Main JS (Do not remove) -->
	<script src="elate-master/js/main.js"></script>

	</body>
</html>