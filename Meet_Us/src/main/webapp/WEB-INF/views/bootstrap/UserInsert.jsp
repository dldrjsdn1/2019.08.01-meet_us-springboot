<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Meet us</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>


<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	  
	  <section class="hero-wrap hero-wrap-2" style="background-image: url('resources/images/bg_4.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-4">
            <h1 class="mb-3 bread">Sign Up</h1>
            <p class="breadcrumbs">
            <span class="mr-2">
            	<a href="../">Home <i class="ion-ios-arrow-forward"></i></a>
            	</span> 
            <span class="mr-2">
            	<a href="../Notice">Sign Up <i class="ion-ios-arrow-forward"></i></a>
            </span> 
            </p>
          </div>
        </div>
      </div>
    </section>
    
	<div class="container">
			<!-- END comment-list -->
			<div class="comment-form-wrap pt-5" >
				<!-- form -->
				<form action="#" class="p-5 bg-light">
					<!--아이디 -->
					<div class="form-group">
						<label for="user_id">아이디</label>
						<input type="text" class="form-control" id="user_id" name="user_id " placeholder="ID" required>
						<div class="check_font" id="id_check"></div>
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
					
					<div class="form-group">
						<input type="submit" value="Post Comment" class="btn py-3 px-4 btn-primary">
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
		let pattonNum= /[^0-9]/g;
// 		alert(!pattonNum.test(user_id));
		
		if(user_id.length == 0){
			$("#id_check").text("비었어요 : (");
			$("#id_check").css("color", "red");
			$("#reg_submit").attr("disabled", true);
		}else if(patton.test(user_id)){
			$("#id_check").text("특수문자는 힘들어요 : (");
			$("#id_check").css("color", "red");
			$("#reg_submit").attr("disabled", true);
		}else if(!pattonNum.test(user_id)){
			$("#id_check").text("숫자만 넣으면 안되요 : (");
			$("#id_check").css("color", "red");
			$("#reg_submit").attr("disabled", true);
		}
		else{
		$.ajax({
			//controller 확인 주소
			url : '${pageContext.request.contextPath}/idIsCheck?user_id='+ user_id,
			type : 'GET',
			success : function(data) {
				if (data == 1) {
						// 1 : 아이디가 중복되는 문구
						$("#id_check").text("사용중인 아이디입니다 :p");
						$("#id_check").css("color", "red");
						$("#reg_submit").attr("disabled", true);
				} else {
					if(user_id.length != user_id.replace(/\s/gi, "").length){
						$('#id_check').text('공백이 있으면 안되요 :(');
						$('#id_check').css('color', 'red');
						$("#reg_submit").attr("disabled", true);	
					}else if(user_id.length < 4){
						$('#id_check').text('아이디 길이가 너무 짧아요 :(');
						$('#id_check').css('color', 'red');
						$("#reg_submit").attr("disabled", true);	
					}else if(user_id.length > 8){
						$('#id_check').text('아이디 길이가 너무 길어요 :(');
						$('#id_check').css('color', 'red');
						$("#reg_submit").attr("disabled", true);	
					}else{
						$("#id_check").text("사용 가능하십니다 :)");
						$('#id_check').css('color', 'blue');
						$("#reg_submit").attr("disabled", true);
						signCheck++;
					}
				}
				}, error : function() {
						console.log("실패");
				}
			});
			}
		});
							
							
	$("#user_passwordConfig").blur(function() {
			let user_password = $('#user_password').val();
			let user_passwordConfig = $('#user_passwordConfig').val();
			let patton = /[\{\}\[\]\/?.,;:|\)*~`!^\-+<>@\#$%&\\\=\(\'\"]/gi;
			let pattonNum= /[^0-9]/g;
// 			alert("같은지 확인"+ (user_password==user_passwordConfig));
			//특수문자가 없으면 false
// 			alert("특수문자 확인"+patton.test(user_password));
			//숫자만 있으면 false
// 			alert("숫자만 확인"+pattonNum.test(user_password));
				if(user_password==user_passwordConfig){
					if(user_password.replace(/\s/gi, "") == user_password){
						if(user_password.length < 4){
							$("#password_check").text("길이가 너무 짧아요 :(");
							$('#password_check').css('color', 'red');
							$("#reg_submit").attr("disabled", true);
						}else if(user_password.length > 11){
							$("#password_check").text("길이가 너무 길어요 :(");
							$('#password_check').css('color', 'red');
							$("#reg_submit").attr("disabled", true);
						}else if(pattonNum.test(user_password)){
							$("#password_check").text("사용하시면 되는 비밀번호 입니다 :)");
							$('#password_check').css('color', 'blue');
							$("#reg_submit").attr("disabled", true);
							signCheck++;
						}else{
							$("#password_check").text("비밀번호 형식은 문자와 숫자가 들어가는 5~10글자 사이입니다 :)");
							$('#password_check').css('color', 'red');
							$("#reg_submit").attr("disabled", true);
						}
					}else{
						$("#password_check").text("공백이 들어가면 안되요 :(");
						$('#password_check').css('color', 'red');
						$("#reg_submit").attr("disabled", true);
					}
				}else{
					$("#password_check").text("비밀번호가 달라요 :(");
					$('#password_check').css('color', 'red');
					$("#reg_submit").attr("disabled", true);
				}
		});
					

</script>

</html>