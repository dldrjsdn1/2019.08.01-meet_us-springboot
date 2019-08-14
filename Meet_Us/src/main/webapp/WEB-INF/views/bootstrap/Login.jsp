<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Meet us</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<!-- 주소 값 -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<!-- 카카오 api -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

	<section class="hero-wrap hero-wrap-2" style="background-image: url('resources/images/bg_4.jpg');" data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-start">
			<div class="col-md-9 ftco-animate pb-4">
				<h1 class="mb-3 bread">Login</h1>
				<p class="breadcrumbs">
					<span class="mr-2"> <a href="../">Home <i class="ion-ios-arrow-forward"></i></a>
					</span> <span class="mr-2"> <a href="../Notice">Sign Up <i class="ion-ios-arrow-forward"></i></a>
					</span>
				</p>
			</div>
		</div>
	</div>
	</section>
	
	 <section>
   		<div class="container">

      <div class="comment-form-wrap pt-5">
         
         <div class="col-md-12 p-5">
            <form action="#" class="search-property-1">
               <div class="col-lg align-items-end" >
                  <div class="form-group">
                     <div class="form-field"style="text-align: center; padding-bottom:10px;">
                        <div class="icon">
                           <span class="ion-ios-search"></span>
                        </div>
                        <input type="text" style="width: 40%; display: inline;" class="form-control" placeholder="ID">
                     </div>
                  </div>
               </div>
               <div class="col-lg align-items-end">
                  <div class="form-group">
                     <div class="form-field" style="text-align: center;">
                        <div class="icon">
                           <span class="ion-ios-calendar"></span>
                        </div>
                        <input type="text" style="width: 40%; display: inline;" class="form-control checkin_date" placeholder="Password">
                     </div>
                  </div>
               </div>
               <br>
               <div class="col-lg align-self-end">
                  <div class="form-group" style="text-align: center; padding-bottom:10px;">
                     <div class="form-field">
                        <input type="submit" style="width: 40%; display: inline;" value="Login" class="form-control btn btn-primary">
                     </div>
                  </div>
               </div>
               <div class="form-group" style="text-align: center;">
                  <a href="#">회원가입&nbsp&nbsp&nbsp|</a>
                  <a href="#">&nbsp&nbsp아이디 찾기&nbsp&nbsp&nbsp|</a>
                  <a href="#">&nbsp&nbsp비밀번호 찾기</a>
                
                  
<!--        네이티브 앱 키 Tooltip  26f41a7b71ca942c324e791fded62756 재발급 -->
<!-- 		REST API 키 Tooltip  51842c99904f5e62277ee17ee6d97da2 재발급 -->
<!-- 		JavaScript 키 Tooltip  b6164a1e476a98c774b246adb6bdf93d 재발급 -->
<!-- 		Admin 키 Tooltip  49ca4e0a99911e8ef472225612af95e4 -->
 				<c:if test="${userId eq null}">
      				  <a href="https://kauth.kakao.com/oauth/authorize?client_id=51842c99904f5e62277ee17ee6d97da2&redirect_uri=http://localhost:8087/kakaoLogin&response_type=code"> 
            		  	<img src="/img/kakao_account_login_btn_medium_wide_ov.png">
       				 </a>
    			</c:if>
			    <c:if test="${userId ne null}">
			       <h1>로그인 성공입니다</h1>
        		   <input type="button" value="로그아웃" onclick="location.href='/logout'">
			    </c:if>
               </div>
            </form>
         </div>
      </div>

     </div>
   </section>
   
   <h3 class="mb-5">&nbsp</h3>   

</body>
</html>