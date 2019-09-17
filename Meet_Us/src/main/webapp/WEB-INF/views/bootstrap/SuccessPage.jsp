<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
            <h1 class="mb-3 bread">회원 가입을 축하드립니다.</h1>
            <p class="breadcrumbs">
               <span class="mr-2"> <a href="../">Home <i class="ion-ios-arrow-forward"></i></a>
               </span> <span class="mr-2"> <a href="../Notice">Sign Up <i class="ion-ios-arrow-forward"></i></a>
               </span>
            </p>
         </div>
      </div>
   </div>
   </section>
	    <c:if test="${key eq 1}">
	  	  <h1>이메일 인증을 해주세요</h1>
	    </c:if>
	    
 		 <c:if test="${key eq 2}">
	  	  <h1>회원 가입이 완료 되었습니다</h1>
	    </c:if>
	    
	     <c:if test="${key eq 3}">
	  	  <h1>이미 가입된 아이디 입니다.</h1>
	    </c:if>
	    
	     <c:if test="${key eq 99}">
	  	  <h1>이메일 인증이 완료된 사용자입니다.</h1>
	  	  <h1>${user_email}</h1>
	    </c:if>
	    
	     <c:if test="${key eq 66}">
	  	  <h1>잘못됨 방식에 접근입니다.</h1>
	    </c:if>
</body>
</html>