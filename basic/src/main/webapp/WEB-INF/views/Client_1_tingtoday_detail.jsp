<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!---------------------------------- header end ---------------------------------->

<!--여기에 내용 넣으세요-->
<br><br>
<section data-section="home" style=data-stellar-background-ratio="0.5">
	<div class="gradient"></div>
			<div class="container">				
				<div class="text-wrap" style="top:100px; background-color: white;padding: 20px;" align="center";>
				<h1 style="text-align: left;">작성한 팅투데이</h1>
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<tbody>
					<!-- <tr>
						
						<td colspan="2" style="background-color:#52D3AA; "></td>
					</tr> -->
					<tr>
						<td style="width: 20%;border-right:  1px solid #dddddd; background-color: #52D3AA;"><font color="black">닉네임</font></td>
						<td colspan="2"><font color="black"></font></td>
					</tr>
					<tr>
						<td style="width: 20%;border-right:  1px solid #dddddd; background-color: #52D3AA;"><font color="black">작성일</font></td>
						<td colspan="2"><font color="black"></font></td>
					</tr>
					<tr>						
						<td style="width: 20%;border-right:  1px solid #dddddd; background-color: #52D3AA;"><font color="black">내용</font></td>						
						<td colspan="2" style="  widows: 20%; text-align: left">
						<!-- <p><input type="image" src="dwdw.jpg"></p> -->
						<font color="black"></font></td>
					</tr>
				</tbody>
			</table>
			<div style="padding:20px;">
				<a href="#" class="btn btn-primary">목록</a>
				<a onclick="return confirm('수정 하시겠어요?')" href="#" class="btn btn-primary">수정</a>
				<a onclick="return confirm('삭제 하시겠어요?')" href="#" class="btn btn-primary">삭제</a>
			</div>
	</section>
<br><br>

