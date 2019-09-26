<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>Meet us</title>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<!-- 주소 값 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">

	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('resources/images/bg_4.jpg');"
		data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-start">
			<div class="col-md-9 ftco-animate pb-4">
				<h1 class="mb-3 bread">Sign Up</h1>
				<p class="breadcrumbs">
					<span class="mr-2"> <a href="../">Home <i
							class="ion-ios-arrow-forward"></i></a>
					</span> <span class="mr-2"> <a href="../Notice">Sign Up <i
							class="ion-ios-arrow-forward"></i></a>
					</span>
				</p>
			</div>
		</div>
	</div>
	</section>
	<div class="container">
		<!-- END comment-list -->
		<div class="comment-form-wrap pt-5">
			<h3 class="mb-5">Sign Up</h3>

			<!-- form -->
			<form action="${pageContext.request.contextPath}/SuccessPage" method="post" class="p-5 bg-light" name="userinput">
			
				<!-- 제목 -->
				<div class="form-group">
					<label for="user_id">제목</label> 
					<input type="text" class="form-control" id="title" name="title" placeholder="제목을 작성해주세요.">
				</div>

				<!-- 내용 -->
				<div class="form-group">
					<label for="message">내용</label>
					<textarea name="contents" id="contents" cols="30" rows="10" class="form-control"></textarea>
				</div>

				<!-- 멤버 인원 -->
				<div class="form-group">
					<label for="user_name">모집할 멤버 인원</label> 
					<input type="text" class="form-control" id="total_member" name="total_member" placeholder="모집 인원 수를 입력해주세요.">
				</div>

				<!-- 모이는 장소 -->
				<div class="form-group">
					<label for="user_name">만나는 장소</label> 
					<input type="text" class="form-control" id="meeting_place" name="meeting_place" placeholder="모집 인원 수를 입력해주세요.">
				</div>
				
				<!-- 모이는 날짜 -->
				<div class="form-group">
					<label for="user_name">만나는 날짜</label> 
					<input type="text" class="form-control" id="meeting_date" name="meeting_date" placeholder="모집 인원 수를 입력해주세요.">
				</div>
				
				<!-- 모이는 날짜 -->
				<div class="form-group">
					<label for="user_name">만나는 목적</label> 
					<select name="metting_purpose" id="metting_purpose">
						<option value='0000'>-- 선택 --</option>
						<option value='0001'>주류</option>
						<option value='0002'>스터디</option>
						<option value='0003'>운동</option>
						<option value='0004'>프로젝트</option>
						<option value='0005'>등등 etc..</option>
					</select>
<!-- 					<input type="text" class="form-control" id="metting_purpose" name="metting_purpose" placeholder="모집 인원 수를 입력해주세요."> -->
				</div>
				
				limit_area;
				limit_age;
				limit_gender;

				<!-- 리스트박스 -->
				<div class="form-group">
					<label for="user_age">생일년도</label> <br /> 
					<select name="user_age" id="user_age">
						<option value='0000'>-- 선택 --</option>
						<option value='0001'></option>
					</select>
					<div class="check_font" id="age_check"></div>
				</div>

				<!-- 라디오 박스 -->
				<div class="form-group">
					<label for="user_gender">성별</label> <br /> <input type='radio'
						name='user_gender' id='user_gender' value='f' />여성&nbsp;&nbsp; <input
						type='radio' name='user_gender' id='user_gender' value='m' />남성
					<div class="check_font" id="gender_check"></div>
				</div>

<%-- 				<input type="hidden" value="${key}" name="key" id="key"> --%>
				<div class="form-group">
					<input type="button" value="Post Comment"
						class="btn py-3 px-4 btn-primary" onclick="userSubmit()">
				</div>



			</form>
			
			
			
			
		</div>
	</div>

</body>

</html>