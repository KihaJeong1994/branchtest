<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 채팅</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>


		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" >
		
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">
		<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.js"></script>
		<link rel="stylesheet" href="../resources/css/chat.css">
		<script>
		var from_id=0;
		var to_id = ${sessionScope.clientIdx};
		
		$(document).ready(function(){
			
			
			
			$('#action_menu_btn').click(function(){
				$('.action_menu').toggle();
			});
			
			
			$(".contacts").find("li").click(function(){  
				
			   from_id= parseInt($(this).find('span').text());  
			
	    	   $("#detailfrom").empty();
			   $(".contacts > li").removeClass("active"); 		   
			   $("#detailfrom").append('<span>'+from_id+'</span>');
			   $(this).addClass("active");
			
			   msgsetting();
			   
			  
			   
			  })

				});
		</script>
		<script type="text/javascript">

		
		 
		 function send() {
		
			 
			 var list={"content":$('#sendmsg').val(),"to_id":to_id,"from_id":from_id};
			 
			 
			 $.ajax({ 
					url :'insert_data', 
					type : 'post', 
					contentType: 'application/json; charset=UTF-8',
					dataType : 'json', 					
					data: JSON.stringify(list),
					success: function(data){ } 
				});
					

			   console.log(list);
			   $('#sendmsg').val('');
			   
			   msgsetting();
		
			
			
		}
		 
		 function msgsetting(){
			 
			
	

			 var info={"to_id":to_id,"from_id":from_id};
			 
			 
			 $.ajax({ 
					url :'select_data', 
					type : 'post', 
					contentType: 'application/json; charset=UTF-8',
					dataType : 'json', 					
					data: JSON.stringify(info),
					success: function(data){
				
					$('#msg').empty();
					$.each(data, function(key, data){
											
						
					/*================왼쪽==========================================  */	
						if(data.to_id===from_id){
					
						 $('#msg').append(
								
									'<div class="d-flex justify-content-start mb-4"><div class="img_cont_msg"><img src="../resources/images/tempmsg.png" class="rounded-circle user_img_msg"></div><div class="msg_cotainer">'+
									data.content+							
									'<span class="msg_time">'+
									data.chattime + 
									'</span></div></div>'	
									
							);  //end_append 
						}
					 /*================오른쪽==========================================  */	
					 else if(data.to_id===to_id){
						$('#msg').append(
							    
									'<div class="d-flex justify-content-end mb-4"><div class="msg_cotainer_send">'+
									data.content+							
									'<span class="msg_time_send">'+
									data.chattime + 
									'</span></div></div>'	
									
							);  //end_append 
					 }
					 $('.msg_card_body').scrollTop($('.msg_card_body')[0].scrollHeight);
					});//end_each
					
			
							
										
					} // end ajax
					
					
				});//end 
			
		 }//end msgsetting
		 

		
		</script>
	
		
		
</head>
<body>
	<body>
		<div class="container-fluid h-100">
	<button  id="Client_0_main" class="btn btn-default btn-lg">마이페이지로 돌아가기</button>
			<div class="row justify-content-center h-100">
			
			
				<div class="col-md-4 col-xl-3 chat"><div class="card mb-sm-3 mb-md-0 contacts_card">
					<div class="card-header">
						<div class="input-group">
							<input type="text" placeholder="Search..." name="" class="form-control search">
							<div class="input-group-prepend">
								<span class="input-group-text search_btn"><i class="fas fa-search"></i></span>
							</div>
						</div>
					</div>
					<div class="card-body contacts_body">
						<ul class="contacts">
						
							
								<c:forEach items="${chatlist }" var="chat">
								<li >
								<div class="d-flex bd-highlight">
								<div class="img_cont">	
									<img src="../resources/images/tempmsg.png" class="rounded-circle user_img">
									
								</div>
								<div class="user_info">
								<span>${chat.from_id}</span>
							
	
								</div>
								</div>
								</li>
								
								</c:forEach>
								
							
					
						
						</ul>
					</div>
					<div class="card-footer"></div>
				</div></div>
				<div class="col-md-8 col-xl-6 chat">
					<div class="card">
						<div class="card-header msg_head">
							<div class="d-flex bd-highlight">
								<div class="img_cont">
									<img src="../resources/images/tempmsg.png" class="rounded-circle user_img">
									<span class="online_icon"></span>
								</div>
								<div class="user_info" id ="detailfrom">
									
									<!-- <p>1767 Messages</p> -->
								</div>
								
							</div>
							<span id="action_menu_btn"><i class="fas fa-ellipsis-v"></i></span>
							<div class="action_menu">
								<ul>
									<li><i class="fas fa-user-circle"></i> View profile</li>
									<li><i class="fas fa-users"></i> Add to close friends</li>
									<li><i class="fas fa-plus"></i> Add to group</li>
									<li><i class="fas fa-ban"></i> Block</li>
								</ul>
							</div>
						</div>
						<div class="card-body msg_card_body">
						
							
							<div id="msg"></div>
						
							
							
        							
						</div>
						<div class="card-footer">
							<div class="input-group">
								<div class="input-group-append">
									<span class="input-group-text attach_btn"><i class="fas fa-paperclip"></i></span>
								</div>
								<textarea id="sendmsg"  class="form-control type_msg" placeholder="메세지를 입력하세요"></textarea>
								<div class="input-group-append">
			
									<button type="button" onclick="send()">
											<span class="input-group-text send_btn"><i class="fas fa-location-arrow"></i></span>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		


	</body>
</html>