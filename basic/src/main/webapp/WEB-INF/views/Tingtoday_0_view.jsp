<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 현재날짜 --> 
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" var="today" />
<!-- 현재날짜 -->



   <style>
      a{
       font-family:'Jua', sans-serif
      }
      
      .pagination > li > a{      
      height: 50px;
      padding-top: 15px;
      width: 45px;
      }
      
      form > button{
      position: relative;
      left:255px;
      }
   </style>


<!---------------------------------- header end ---------------------------------->
   <section id="fh5co-testimonials" data-section="love">
      <div class="container">
         <div class="row">
            <div align="center"
               style="width: 100%; height: 100%; border: 0px solid; border-radius: 2em;"
               class="col-md-12 section-heading text-center">
               <font size="50pt">TingToday 게시판</font>
            </div>
         </div>
      </div>
   </section>



   <!--  게시판상세페이지 -->

   <section id="fh5co-intro" data-section="love">
      <div class="container">
         <div class=" section-heading text-center">
            <div align="center"
               style="width: 70%; height: auto; border: 1px solid #E6E6E6; border-radius: 1em; margin: 0 auto;">
         
         
            <form method="post" action="updateBoard" enctype="multipart/form-data" >         
               <div style="height: auto; width: 90%; text-align:left; padding-bottom: 40px">
                     <input type="hidden" id="boardIdx" name="boardIdx" class="form-control mt-4 mb-2"  style="border:none"  value="${board.boardIdx}"  >
                  <p><input type="text" id="title" name="title" class="form-control mt-4 mb-2"  style="border:none"  value="${board.title}"  ></p>
                  
                  <div class="WriterInfo" style="padding-bottom: 15px">
                     <a
                        href="#"
                        class="thumb"><img
                        src="https://t1.daumcdn.net/cfile/tistory/243FE450575F82662D"
                        alt="프로필 사진" width="80" height="80" align="left" style="margin-right: 20px"></a>
               
                     <div class="profile_area">
                        <div class="profile_info">
                           <div  style="padding-top: 10px">
                              <a id="" href="#" role="button"
                                 class="nickname"> <h1>${board.nickName}</h1>
                              </a>
                           </div>
                        </div>
                        <div class="article_info" style="padding-top: 10px">
                           <span class="date">${board.regdate}</span>
                           <%-- <span class="date"><c:out value="${today}"/></span> --%>
                        </div>
                     </div>
                     <label onclick="btnLikeFun()" class="btnLike"><svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet" focusable="false" class="style-scope yt-icon" style="pointer-events: none; display: inline-block; width: 20px; height: 20px; fill:black;"><g class="style-scope yt-icon"><path d="M1 21h4V9H1v12zm22-11c0-1.1-.9-2-2-2h-6.31l.95-4.57.03-.32c0-.41-.17-.79-.44-1.06L14.17 1 7.59 7.59C7.22 7.95 7 8.45 7 9v10c0 1.1.9 2 2 2h9c.83 0 1.54-.5 1.84-1.22l3.02-7.05c.09-.23.14-.47.14-.73v-1.91l-.01-.01L23 10z" class="style-scope yt-icon"></path></g></svg>:<label class="like">${like }</label></label>
     			  	 <label onclick="btnUnLikeFun()" class="btnUnLike"><svg viewBox="0 0 24 24" preserveAspectRatio="xMidYMid meet" focusable="false" class="style-scope yt-icon" style="pointer-events: none; display: inline-block; width: 20px; height: 20px; fill:black;"><g class="style-scope yt-icon"><path d="M15 3H6c-.83 0-1.54.5-1.84 1.22l-3.02 7.05c-.09.23-.14.47-.14.73v1.91l.01.01L1 14c0 1.1.9 2 2 2h6.31l-.95 4.57-.03.32c0 .41.17.79.44 1.06L9.83 23l6.59-6.59c.36-.36.58-.86.58-1.41V5c0-1.1-.9-2-2-2zm4 0v12h4V3h-4z" class="style-scope yt-icon"></path></g></svg>:<label class="unLike">${unLike }</label></label>
     			  
                  </div>
               </div>

   
            <!-- 내용 -->
               <div  style="height: auto; width: 90%; padding:40px 0px 40px 0px ; text-align:left; border-bottom: 1px solid #E6E6E6; border-top: 1px solid #E6E6E6;">
               
            <textarea class="form-control" rows="10" name="content" style="border:none" > ${board.originalContent}</textarea><br><br><br>
           <c:choose>
             <c:when test="${board.fsize==0}">첨부파일 없음</c:when>
            
             <c:otherwise>
                <!-- <a href='resources/upload/${list.fname}'> -->
                   <img src="resources/upload/${board.fname}" width="30%;"><br/>               
                <!-- </a>  -->
             </c:otherwise>                                     
          </c:choose><br/>   <br/>   <br/>   <br/>   <br/>   <br/>
          </div>      
              <c:if test="${sessionScope.clientIdx eq board.clientIdx}">
	            <br><input type="file" maxlength="60" size="40" style="left:-27%; position: relative;" name="file"><br>            
	            <button type="submit" class="ui teal button">수정</button>
	            <button type="button" class="ui teal button" onclick="location.href='deleteBoard?boardIdx=${board.boardIdx}'">삭제</button>   
             </c:if>
             <button type="button" class="ui teal button" onclick="location.href='Tingtoday_0_main'">목록</button>   
      </form>          
               
    
          <!-- 내용 end-->
      <!-- 댓글 -->
     <div  style="width: 90%; text-align:left">
         <p><h1>댓글</h1>
         <c:forEach items="${rvo}" var="reply">
            <div class="comment-wrap">
               <div style=" border-top: 1px solid #E6E6E6;padding: 10px;">
                    <p>
                    작성자 : ${reply.nickName}<br />
                    작성 날짜 :  <fmt:formatDate value="${reply.regDate}" pattern="yyyy-MM-dd" />
                    </p>
               </div>
                 <div style="height: auto; width: 100%; padding: 10px; text-align: left;">
                  <font size="3">${reply.content}</font>
                  <c:if test="${sessionScope.clientIdx eq reply.clientIdx}">
                  <div style="float:right">
                     <button style="border: 0;outline: 0; background-color: #FFFFFF"><h3><a href="javascript:void(0)" onclick="modifyReply(this, '${board.boardIdx}', '${reply.commentIdx}', '${reply.content}', '${reply.nickName}');">수정</a></h3></button>
                     <button style="border: 0;outline: 0; background-color: #FFFFFF"><h3><a href="deleteReply?commentIdx=${reply.commentIdx}&boardIdx=${board.boardIdx}">삭제</a></h3></button>
                  </div>
                  </c:if>            
               </div>
            </div>
              <div style="text-align: right;">
       <a class="btn btn-outline-dark heart">
           <img id="heart" src="">
       </a>
   </div>
          </c:forEach> 
              
     </div>          
     
     <form method="post" action="write" >
         <div style="width: 90%; height: auto; border: 1px solid #E6E6E6; border-radius: 1em; margin-bottom: 40px">
         <strong>
            <p><h4 style="width: 90%; text-align:left; margin: 0 auto;">${sessionScope.nickName}</h4></p>
          <textarea class="autosize" rows="1" onkeydown="resize(this)" onkeyup="resize(this)" placeholder="댓글을 남겨보세요" name="content" style=" width: 90%; height:17px; border: none;  resize: none; outline: none;"></textarea>
            <div style="width: 90%; text-align:right;">
               <input type="hidden" name="boardIdx" value="${board.boardIdx}">
               <input type="hidden" name="clientIdx" value="${sessionScope.clientIdx}">
               <button type="submit" style="border: 0;outline: 0; background-color: #FFFFFF"><h3>등록</h3></button>
            </div>
         </strong><!-- outline: none; -->
        </div>
      </form>
      </div>
      <!-- 댓글 end --> 

           
      </div>
      </div>   
   </section>
         
<!-- 댓글 -->
<script>
let likeyFl = '${likeyFl}';


function resize(obj) {
  obj.style.height = "1px";
  obj.style.height = (12+obj.scrollHeight)+"px";
}


function modifyReply(obj, boardIdx, commentIdx, content, nickName){
      
      
    var tag = "";
    tag += '<div class="edit-wrap" style="width: 100%; height: auto; border: 1px solid #E6E6E6; border-radius: 1em; margin-bottom: 40px">'
    tag +='<strong>'
    tag +='<p><h4 style="width: 90%; text-align:left; margin: 0 auto;">'+ nickName +'</h4></p>'
    tag +='<textarea class="autosize" rows="1" onkeydown="resize(this)" onkeyup="resize(this)" placeholder="댓글을 수정하세요" name="content" style=" width: 90%; height:17px; border: none; margin-left :22px; resize: none; outline: none;">'+ content +'</textarea>'
    tag +='<div style="width: 95%; text-align:right;">'
    tag +='<input type="hidden" name="boardIdx" value="${board.boardIdx}">'
    tag +='<input type="hidden" name="clientIdx" value="${board.clientIdx}">'
    tag +='<button type="submit" style="border: 0;outline: 0; background-color: #FFFFFF"><h3 onclick="modifyComplate(\''+ boardIdx +'\',\'' + commentIdx +'\',this  )">완료</h3></button>'
    tag +='</div>'
    tag +='</strong>'
    tag +='</div>'

    
   $(obj).closest(".comment-wrap").html(tag);
}


function modifyComplate( boardIdx, commentIdx, obj){
   
   
   location.href = "modifyReply?commentIdx="+ commentIdx +"&boardIdx="+  boardIdx + "&content=" + $(obj).closest(".edit-wrap").find("textarea").val();
}


function btnLikeFun(){
	let clientIdx = '${sessionScope.clientIdx}';
	let boardIdx = '${board.boardIdx}';
	let svgLike = document.querySelector('.btnLike > svg');	
	let svgUnLike = document.querySelector('.btnUnLike > svg');	
	let like = document.querySelector('.like');
	let cnt = like.innerHTML;
	
	let param = {
		clientIdx,
		boardIdx,
		likeyFL:0
	}
	
	if (svgLike.style.fill == 'black') {
		svgLike.style.fill = 'blue';
		
		cnt = parseInt(cnt) + 1;		
		if (svgUnLike.style.fill == 'blue') {
			svgUnLike.style.fill = 'black';
			let unLike = document.querySelector('.unLike');
			let unLikeCnt = unLike.innerHTML;
			unLikeCnt = parseInt(unLikeCnt) - 1;	
			unLike.innerHTML = unLikeCnt;
		}
		param.likeyFL = 1;
		
	} else {
		svgLike.style.fill = 'black';
		svgUnLike.style.fill = 'black';
		cnt = parseInt(cnt) - 1;	
	}
	console.log(param.likeyFL);
	likeAjax(param);
	like.innerHTML = cnt;
}

function btnUnLikeFun(){
	let clientIdx = '${sessionScope.clientIdx}';
	let boardIdx = '${board.boardIdx}';
	let svgLike = document.querySelector('.btnLike > svg');	
	let svgUnLike = document.querySelector('.btnUnLike > svg');	
	let unLike = document.querySelector('.unLike');
	let cnt = unLike.innerHTML;
	
	let param = {
		clientIdx,
		boardIdx,
		likeyFL:0
	}
	
	if (svgUnLike.style.fill == 'black') {
		
		svgUnLike.style.fill = 'blue';
		cnt = parseInt(cnt) + 1;	
		if (svgLike.style.fill == 'blue') {
			svgLike.style.fill = 'black';
			let like = document.querySelector('.like');
			let likeCnt = like.innerHTML;
			likeCnt = parseInt(likeCnt) - 1;	
			like.innerHTML = likeCnt;
		}
		param.likeyFL = 2;
	} else {
		svgLike.style.fill = 'black';
		svgUnLike.style.fill = 'black';
		cnt = parseInt(cnt) - 1;	
		
	}
	likeAjax(param);
	unLike.innerHTML = cnt;
}

function likeAjax(param){
	console.log(param);
	$.ajax({
		url: "like",
		type: "post",
		dataType: "text",
		data: param,
		success: function(data){

		},
		error: function (request, status, error){
			console.log(request);
			console.log(status);
			console.log(error);
		}
	});

}

function tst(){
	if (parseInt(likeyFl) == 1) {
		let svgLike = document.querySelector('.btnLike > svg');
		svgLike.style.fill = 'blue';
	} else if (parseInt(likeyFl) == 2) {
		let svgUnLike = document.querySelector('.btnUnLike > svg');
		svgUnLike.style.fill = 'blue';
	}
}
tst();
</script>

 
<!-- 댓글 end -->
<!--여기에 내용 넣으세요-->

         <div id="mainContainer" class="container">
            <div class="twoColumn">
               <section class="mainCol">
               <br><br>
               <!-- 나의 프리미엄 -->
            <div class="infoCenter"> 
            <!--  
               <h1>인기글 tingToday TOP</h1><br>
               <ul class="notifications count-3">

               <li class="primary">
               <a class="notification" href="#" >
                     <br><br><br><br><h2 style="color:white">♥하♥하♥</h2></a></li>
               <li class="primary">
               <a class="notification" href="#" >
                     <br><br><br><br><h2 style="color:white">♥김♥수♥환</h2></a></li>
               <li class="primary">
               <a class="notification" href="#" >
                     <br><br><br><br><h2 style="color:white">♥수♥환♥쌤</h2></a></li>
               <li class="primary">
               <a class="notification" href="#" >
                     <br><br><br><br><h2 style="color:white">♥하♥하♥</h2></a></li>
               <li class="primary">
               <a class="notification" href="#" >
                     <br><br><br><br><h2 style="color:white">♥하♥하♥</h2></a></li>

               </ul>-->
            </div>

<!----------------------------------------------------------------------------------------->

         
  
   
         
  
   
<!--게시판 테이블-->
         
<!-- 리모콘         
   <div class="remocon" style="display: block;position: fixed; top: 200px; left: 1690px; z-index: 1000;border: 2px solid #ddd;">                  
      <div class="remocon_main" style="border-bottom:  2px solid #ddd;text-align: center">
            <strong>리모콘</strong>                    
       </div>         
      <div class="remote_cont" style="padding: 10px;border-bottom:  2px solid #ddd;">
          <a href="#">인연 찾으러가기 </a>                           
      </div>                       
      <div class="ui large buttons">
      <button class="ui button">닫기</button>
      <div class="or"></div>
      <button class="ui button">목록</button>
      </div>            
   </div>
리모콘       -->

<!--검색창폼-->         
   <!-- <form action="#" method="POST" class="form-inline" align="right" style="padding-right: 10%">
      <div class="input-group" align="right">
         <p>                     
            <select class="form-control" name="target">
            <option value="all">전체</option>
            <option value="title">제목</option>
            <option value="nickname">작성자</option>
            </select>                     
         <input type="text" class="form-control" name="keyword" value="">         
         <button class="huge ui button">검색</button>            
         </p>
      </div>
   </form> -->
<!--검색창폼-->
         
<!--페이지-->         
<!--    <div class="page_num1" align="center" style="padding:3px;">
      <ul class="pagination">
      <li class="page-item"><a class="page-link" href="#"><</a></li>
      <li class="page-item active"><a class="page-link" href="#">1</a></li>
      <li class="page-item"><a class="page-link" href="#">2</a></li>
      <li class="page-item"><a class="page-link" href="#">3</a></li>
      <li class="page-item"><a class="page-link" href="#">4</a></li>
      <li class="page-item"><a class="page-link" href="#">5</a></li>
      <li class="page-item"><a class="page-link" href="#">6</a></li>
      <li class="page-item"><a class="page-link" href="#">7</a></li>
      <li class="page-item"><a class="page-link" href="#">8</a></li>   
      <li class="page-item"><a class="page-link" href="#">9</a></li>
      <li class="page-item"><a class="page-link" href="#">10</a></li>
      <li class="page-item"><a class="page-link" href="#">></a></li>
      </ul>
   </div> -->
<!--페이지-->   
   
<br><br>   
<br><br>

<!---------------------------------- Footer start ---------------------------------->

<!---------------------------------- Footer end ---------------------------------->