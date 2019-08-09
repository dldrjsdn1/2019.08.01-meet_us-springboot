<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>Meet us</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<!-- 주소 값 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

	<section class="hero-wrap hero-wrap-2" style="background-image: url('resources/images/bg_4.jpg');" data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-start">
			<div class="col-md-9 ftco-animate pb-4">
				<h1 class="mb-3 bread">Sign Up</h1>
				<p class="breadcrumbs">
					<span class="mr-2"> <a href="../">Home <i class="ion-ios-arrow-forward"></i></a>
					</span> <span class="mr-2"> <a href="../Notice">Sign Up <i class="ion-ios-arrow-forward"></i></a>
					</span>
				</p>
			</div>
		</div>
	</div>
	</section>

	<div class="container">
		<!-- END comment-list -->
		<div class="comment-form-wrap pt-5">
			<!-- form -->
			<form action="${pageContext.request.contextPath}/userInsert" method="get" class="p-5 bg-light" name="userinput">
				<!--아이디 -->
				<div class="form-group">
					<label for="user_id">아이디</label> 
					<input type="text" class="form-control" id="user_id" name="user_id" placeholder="ID" required>
					<div class="check_font" id="id_check"></div>
				</div>

				<!--이름 -->
				<!--번호 안들어가게 수정 -->
				<div class="form-group">
					<label for="user_name">이름</label> 
					<input type="text" class="form-control" id="user_name" name="user_name" placeholder="name" required>
					<div class="check_font" id="name_check"></div>
				</div>

				<!--비밀번호 -->
				<div class="form-group">
					<label for="user_password">비밀번호</label> 
					<input type="password" class="form-control" id="user_password" name="user_password" placeholder="password" required>
				</div>

				<div class="form-group">
					<label for="user_passwordConfig">비밀번호 확인</label> 
					<input type="password" class="form-control" id="user_passwordConfig" name="user_passwordConfig" placeholder="password" required>
					<div class="check_font" id="password_check"></div>
				</div>

				<!--이메일 -->
				<div class="form-group">
					<label for="user_email">이메일</label> 
					<input type="text" class="form-control" id="user_email" name="user_email" placeholder="@email.com" required>
					<div class="check_font" id="email_check"></div>
				</div>

				<div class="form-group">
					<label for="user_age">생일년도</label>
					<br/>
					<select name="user_age">
						<option value='0000'>-- 선택 --</option>
						<%
							Date a = new Date();
							String result = a + "";
							int result1 = Integer.parseInt(result.substring(result.length()-4 , result.length()));
							String result2 =result.substring(result.length()-4 , result.length());
							
							for(int i = 1950; i < result1; i++){
								 %><option value="<% out.print(i); %>"><% out.print(i); %></option><%
							}
						%>
					
					</select>
					<div class="check_font" id="age_check"></div>
				</div>
				
				<div class="form-group">
					<label for="user_gender">성별</label> 
					<br/>
					<input type='radio' name='user_gender' id='user_gender' value='f' />여성&nbsp;&nbsp;                      
  					<input type='radio' name='user_gender' id='user_gender' value='m' />남성
					<div class="check_font" id="gender_check"></div>
				</div>

				<div class="form-group">  
				<label for="user_gender">우편주소</label>  
				<br/>                
					<input class="form-control" style="width: 40%; display: inline;" placeholder="우편번호" name="addr1" id="addr1" type="text" readonly="readonly" >
    				<button type="button" class="btn btn-default" onclick="execPostCode();"><i class="fa fa-search"></i> 우편번호 찾기</button>                               
				</div>
				<div class="form-group">
    				<input type="text" class="form-control" style="top: 5px;" placeholder="도로명 주소" name="user_defaultAddress" id="user_defaultAddress"  readonly="readonly" />
				</div>

				<div class="form-group">
					<input type="button" value="Post Comment" class="btn py-3 px-4 btn-primary" onclick="userSubmit()">
				</div>
				
			</form>
		</div>
	</div>
	

	

</body>

<script>
	let signCheck = 0;

	// 아이디 유효성 검사(1 = 중복 / 0 != 중복)
	$("#user_id").blur(function() {
						let user_id = $('#user_id').val();
						let patton = /[\{\}\[\]\/?.,;:|\)*~`!^\-+<>@\#$%&\\\=\(\'\"]/gi;
						let pattonNum = /[^0-9]/g;

						if (user_id.length == 0) {
							$("#id_check").text("비었어요 : (");
							$("#id_check").css("color", "red");
							$("#reg_submit").attr("disabled", true);
						} else if (patton.test(user_id)) {
							$("#id_check").text("특수문자는 힘들어요 : (");
							$("#id_check").css("color", "red");
							$("#reg_submit").attr("disabled", true);
						} else if (!pattonNum.test(user_id)) {
							$("#id_check").text("숫자만 넣으면 안되요 : (");
							$("#id_check").css("color", "red");
							$("#reg_submit").attr("disabled", true);
						} else {
							$.ajax({
										//controller 확인 주소
										url : '${pageContext.request.contextPath}/idIsCheck?user_id='+user_id,
										type : 'GET',
										success : function(data) {
											if (data == 1) {
												// 1 : 아이디가 중복되는 문구
												$("#id_check").text("사용중인 아이디입니다 :p");
												$("#id_check").css("color","red");
												$("#reg_submit").attr("disabled", true);
											} else {
												if (user_id.length != user_id.replace(/\s/gi, "").length) {
													$('#id_check').text('공백이 있으면 안되요 :(');
													$('#id_check').css('color','red');
													$("#reg_submit").attr("disabled", true);
												} else if (user_id.length < 4) {
													$('#id_check').text('아이디 길이가 너무 짧아요 :(');
													$('#id_check').css('color','red');
													$("#reg_submit").attr("disabled", true);
												} else if (user_id.length > 8) {
													$('#id_check').text('아이디 길이가 너무 길어요 :(');
													$('#id_check').css('color','red');
													$("#reg_submit").attr("disabled", true);
												} else {
													$("#id_check").text("사용 가능하십니다 :)");
													$('#id_check').css('color','blue');
													$("#reg_submit").attr("disabled", true);
													signCheck++;
												}
											}
										},
										error : function() {
											console.log("실패");
										}
									});
						}
					});

	$("#user_passwordConfig").blur(function() {
						let user_password = $('#user_password').val();
						let user_passwordConfig = $('#user_passwordConfig')
								.val();
						let patton = /[\{\}\[\]\/?.,;:|\)*~`!^\-+<>@\#$%&\\\=\(\'\"]/gi;
						let pattonNum = /[^0-9]/g;
						if (user_password == user_passwordConfig) {
							if (user_password.replace(/\s/gi, "") == user_password) {
								if (user_password.length < 4) {
									$("#password_check").text("길이가 너무 짧아요 :(");
									$('#password_check').css('color', 'red');
									$("#reg_submit").attr("disabled", true);
								} else if (user_password.length > 11) {
									$("#password_check").text("길이가 너무 길어요 :(");
									$('#password_check').css('color', 'red');
									$("#reg_submit").attr("disabled", true);
								} else if (pattonNum.test(user_password)) {
									$("#password_check").text(
											"사용하시면 되는 비밀번호 입니다 :)");
									$('#password_check').css('color', 'blue');
									$("#reg_submit").attr("disabled", true);
									signCheck++;
								} else {
									$("#password_check").text("비밀번호 형식은 문자와 숫자가 들어가는 5~10글자 사이입니다 :)");
									$('#password_check').css('color', 'red');
									$("#reg_submit").attr("disabled", true);
								}
							} else {
								$("#password_check").text("공백이 들어가면 안되요 :(");
								$('#password_check').css('color', 'red');
								$("#reg_submit").attr("disabled", true);
							}
						} else {
							$("#password_check").text("비밀번호가 달라요 :(");
							$('#password_check').css('color', 'red');
							$("#reg_submit").attr("disabled", true);
						}
					});
							
	$("#user_name").blur(function() {
						let user_name = $('#user_name').val();
						let patton = /[\{\}\[\]\/?.,;:|\)*~`!^\-+<>@\#$%&\\\=\(\'\"]/gi;
						let pattonNum = /[^0-9]/g;

						if (user_name.length == 0) {
							$("#name_check").text("공백은 안되요 :(");
							$('#name_check').css('color', 'red');
							$("#reg_submit").attr("disabled", true);
						} else if (user_name.replace(/\s/gi, "") == user_name) {
							if (patton.test(user_name)) {
								$("#name_check").text("특수문자 안되요 :(");
								$('#name_check').css('color', 'red');
								$("#reg_submit").attr("disabled", true);
							} else if (!pattonNum.test(user_password)) {
								$("#name_check").text("이름안에 숫자가 들어가 있습니다 :(");
								$('#name_check').css('color', 'red');
								$("#reg_submit").attr("disabled", true);
							} else {
								$("#name_check").text("사용 가능하십니다 :)");
								$('#name_check').css('color', 'blue');
								$("#reg_submit").attr("disabled", true);
								signCheck++;
							}
						} else if (user_name.length < 2
								&& user_name.replace(/\s/gi, "") == user_name) {
							$("#name_check").text("이름이 너무 짧아요 :(");
							$('#name_check').css('color', 'red');
							$("#reg_submit").attr("disabled", true);
						} else {
							$("#name_check").text("이름안에 공백이 있으면 안되요 :(");
							$('#name_check').css('color', 'red');
							$("#reg_submit").attr("disabled", true);
						}
					});

	$("#user_email").blur(function() {
						let user_email = $('#user_email').val();
						let exptext = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
						if (exptext.test(user_email)) {
							$.ajax({
										//controller 확인 주소
										url : '${pageContext.request.contextPath}/emailIsCheck?user_email='+ user_email,
										type : 'GET',
										success : function(data) {
											if (data == 1) {
												// 1 : 아이디가 중복되는 문구
												$("#email_check").text("사용중인 아이디입니다 :p");
												$("#email_check").css("color","red");
												$("#reg_submit").attr("disabled", true);
											} else {
												if (user_email.length != user_email.replace(/\s/gi, "").length) {
													$('#email_check').text('공백이 있으면 안되요 :(');
													$('#email_check').css('color', 'red');
													$("#reg_submit").attr("disabled", true);
												} else {
													$("#email_check").text("사용 가능하십니다 :)");
													$('#email_check').css('color', 'blue');
													$("#reg_submit").attr("disabled", true);
													signCheck++;
												}
											}
										},
										error : function() {
											console.log("실패");
										}
									});
						} else {
							$("#email_check").text("형식을 맞춰주세요 aaaaa@gmail.com  :(");
							$('#email_check').css('color', 'red');
							$("#reg_submit").attr("disabled", true);
						}
					});
							
				
							
					function execPostCode() {
				         new daum.Postcode({
				             oncomplete: function(data) {
				                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				 
				                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
				                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
				                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
				 
				                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
				                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
				                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
				                    extraRoadAddr += data.bname;
				                }
				                // 건물명이 있고, 공동주택일 경우 추가한다.
				                if(data.buildingName !== '' && data.apartment === 'Y'){
				                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
				                }
				                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
				                if(extraRoadAddr !== ''){
				                    extraRoadAddr = ' (' + extraRoadAddr + ')';
				                }
				                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
				                if(fullRoadAddr !== ''){
				                    fullRoadAddr += extraRoadAddr;
				                }
				 
				                // 우편번호와 주소 정보를 해당 필드에 넣는다.
				                console.log(data.zonecode);
				                console.log(fullRoadAddr);
				                
				                
				                $("[name=addr1]").val(data.zonecode);
				                $("[name=user_defaultAddress]").val(fullRoadAddr);
				                if(fullRoadAddr.length !=0 ){
				                	signCheck++;
				                }
				                /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
				                document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
				                document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
				            }
				         }).open();
				     }
					
					
					function userSubmit(){
						var form = document.userinput;
						if(signCheck==5){
							form.submit();
						}
					}
</script>

</html>