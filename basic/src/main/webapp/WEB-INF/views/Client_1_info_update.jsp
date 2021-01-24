<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<!---------------------------------- header end ---------------------------------->
   <section id="fh5co-testimonials" data-section="love">
      <div class="container">
         <div class="row">
         </div>
      </div>
   </section>



   <!--  게시판상세페이지 -->

	<section id="fh5co-intro">
		<div class="container">
			<div class=" section-heading text-center">
				<div align="center"
					style="width: 70%; height: auto; border: 1px solid #E6E6E6; border-radius: 1em; margin: 0 auto; margin-top: 50px; padding-bottom: 50px;">

					<div class="ui compact menu" style="float: right; border: 1px solid #E6E6E6; border-radius: 1em;border-style: none;">
						<div class="ui simple dropdown item">
							<font _mstmutation="1" _msthash="2126644" _msttexthash="21094424">
								도움말 / 지원 </font><i class="dropdown icon"></i>
							<div class="menu">
								<div class="item" _msthash="3034434" _msttexthash="10065549">선택1
								</div>
								<div class="item" _msthash="3035396" _msttexthash="10065666">비밀번호리셋
								</div>
								<div class="item" _msthash="3036358" _msttexthash="82082">선택3
								</div>
							</div>
						</div>
					</div>
					
					<p style="padding-top: 40px; width: 250px; margin: 0 auto;">
						<font size="50pt">나의 프로필</font>
					</p>
					<br>
					<p style="width: 40%; margin: 0 auto;padding-right: 100px; font-size: 20px;">
						이름 : ${myDetailInfo.name}
					</p>
					<br>
					
				<form method="POST" action="updateClientDetailInfo">
					<div class="field input">
						<label for="editUserNameInput1">닉네임&nbsp;</label><input type="text"
							name="nickname" id="editUserNameInput1" placeholder="닉네임" value="${myDetailInfo.nickname}">
					</div>
					<br>
					<div>
							<h1>자기 소개</h1>
						<p class="hidden"></p>
						<div class="field text">
							<textarea  style="resize: none; width: 300px; height: 100px" name="selfIntro" placeholder="자기 소개">${myDetailInfo.selfIntro}</textarea>
						</div>
					</div>


					<div class="box profileFacts" style="width: 90%; height: auto; border-top: 1px solid #E6E6E6;  margin: 0 auto;margin-top: 30px; padding-top: 30px;"">
					
							<h1>내정보</h1>

					

						<div class="grid cols-1 cols-m-2 form whiteForm factForm">



							<p>
							<div>
								<label for="factFormField-Height">키</label>
								<div>
									<select id="factFormField-Height" name="height"><option
											value="${myDetailInfo.height}">${myDetailInfo.height}cm</option>
										<option value="140">140 cm</option>
										<option value="141">141 cm</option>
										<option value="142">142 cm</option>
										<option value="143">143 cm</option>
										<option value="144">144 cm</option>
										<option value="145">145 cm</option>
										<option value="146">146 cm</option>
										<option value="147">147 cm</option>
										<option value="148">148 cm</option>
										<option value="149">149 cm</option>
										<option value="150">150 cm</option>
										<option value="151">151 cm</option>
										<option value="152">152 cm</option>
										<option value="153">153 cm</option>
										<option value="154">154 cm</option>
										<option value="155">155 cm</option>
										<option value="156">156 cm</option>
										<option value="157">157 cm</option>
										<option value="158">158 cm</option>
										<option value="159">159 cm</option>
										<option value="160">160 cm</option>
										<option value="161">161 cm</option>
										<option value="162">162 cm</option>
										<option value="163">163 cm</option>
										<option value="164">164 cm</option>
										<option value="165">165 cm</option>
										<option value="166">166 cm</option>
										<option value="167">167 cm</option>
										<option value="168">168 cm</option>
										<option value="169">169 cm</option>
										<option value="170">170 cm</option>
										<option value="171">171 cm</option>
										<option value="172">172 cm</option>
										<option value="173">173 cm</option>
										<option value="174">174 cm</option>
										<option value="175">175 cm</option>
										<option value="176">176 cm</option>
										<option value="177">177 cm</option>
										<option value="178">178 cm</option>
										<option value="179">179 cm</option>
										<option value="180">180 cm</option>
										<option value="181">181 cm</option>
										<option value="182">182 cm</option>
										<option value="183">183 cm</option>
										<option value="184">184 cm</option>
										<option value="185">185 cm</option>
										<option value="186">186 cm</option>
										<option value="187">187 cm</option>
										<option value="188">188 cm</option>
										<option value="189">189 cm</option>
										<option value="190">190 cm</option>
										<option value="191">191 cm</option>
										<option value="192">192 cm</option>
										<option value="193">193 cm</option>
										<option value="194">194 cm</option>
										<option value="195">195 cm</option>
										<option value="196">196 cm</option>
										<option value="197">197 cm</option>
										<option value="198">198 cm</option>
										<option value="199">199 cm</option>
										<option value="200">200 cm</option>
										<option value="201">201 cm</option>
										<option value="202">202 cm</option>
										<option value="203">203 cm</option>
										<option value="204">204 cm</option>
										<option value="205">205 cm</option>
										<option value="206">206 cm</option>
										<option value="207">207 cm</option>
										<option value="208">208 cm</option>
										<option value="209">209 cm</option>
										<option value="210">210 cm</option>
										<option value="211">211 cm</option>
										<option value="212">212 cm</option>
										<option value="213">213 cm</option>
										<option value="214">214 cm</option>
										<option value="215">215 cm</option>
										<option value="216">216 cm</option>
										<option value="217">217 cm</option>
										<option value="218">218 cm</option>
										<option value="219">219 cm</option>
										<option value="220">220 cm</option></select>
								</div>
							</div>
							</p>

							<p>
							<div>
								<label for="factFormField-Body">체형</label>
								<div>
									<select id="factFormField-Body" name="bodyShape"><option
											value="${myDetailInfo.bodyShape}">${myDetailInfo.bodyShape}</option>
										<option value="날씬함">날씬함</option>
										<option value="정상">정상</option>
										<option value="탄탄한">탄탄한</option>
										<option value="근육질의">근육질의</option>
										<option value="통통한">통통한</option></select>
								</div>
							</div>
							</p>

							<p>
							<div>
								<label for="factFormField-Smoker">흡연자</label>
								<div>
									<select id="factFormField-Smoker" name="smoke"><option
											value="${myDetailInfo.smoke}">${myDetailInfo.smoke}</option>
										<option value="비흡연자">비-흡연자</option>
										<option value="전흡연자">전-흡연자</option>
										<option value="간헐">간헐적 흡연자</option>
										<option value="규칙">규칙적 흡연자</option></select>
								</div>
							</div>
							</p>


							<p>
							<div>
								<label for="factFormField-Alcohol">음주</label>
								<div>
									<select id="factFormField-Alcohol" name="drink"><option
											value="${myDetailInfo.drink}">${myDetailInfo.drink}</option>
										<option value="전혀">전혀</option>
										<option value="가끔">가끔</option>
										<option value="즐겨함">즐겨함</option></select>
								</div>
							</div>
							</p>


							<p>
							<div>
								<label for="factFormField-Education">학력</label>
								<div>
									<select id="factFormField-Education" name="education"><option
											value="${myDetailInfo.education}">${myDetailInfo.education}</option>
										<option value="마치지 않음">마치지 않음</option>
										<option value="직업 학교">직업 학교</option>
										<option value="중고등학교">중고등학교</option>
										<option value="고등학교">고등학교</option>
										<option value="고등학교 디플로마">고등학교 디플로마</option>
										<option value="대학/대학교">대학/대학교</option>
										<option value="대학원">대학원</option></select>
								</div>
							</div>
							</p>

							<p>
							<div>
								<label for="factFormField-Profession">직업</label>
								<div>
									<select id="factFormField-Profession" name="job"><option
											value="${myDetailInfo.job}">${myDetailInfo.job}</option>
										<option value="구직중">구직중</option>
										<option value="견습생">견습생</option>
										<option value="직원">직원</option>
										<option value="공무원">공무원</option>
										<option value="주부">주부</option>
										<option value="은퇴함">은퇴함</option>
										<option value="개인 사업">개인 사업</option>
										<option value="학생">학생</option></select>
								</div>
							</div>
							</p>

							<p>
							<div>
								<label for="factFormField-Relationship status">종교</label>
								<div>
									<select id="factFormField-Relationship status" name="religion"><option
											value="${myDetailInfo.religion}">${myDetailInfo.religion}</option>
										<option value="기독교">기독교</option>
										<option value="불교">불교</option>
										<option value="천주교">천주교</option>
										<option value="힌두교">힌두교</option>
										<option value="크리스찬교">크리스찬교</option>
										<option value="무교">무교</option></select>
								</div>
								<div class="fiield" style=" padding: 10px 0px 10px 0px">
							<h2><input type="submit" class="btn" value="저장하기"></h2>
								</div>
							</div>

							</div>
						</section>
						