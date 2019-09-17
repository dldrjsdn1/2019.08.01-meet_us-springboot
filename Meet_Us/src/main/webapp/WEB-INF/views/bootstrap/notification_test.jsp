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

   <section class="hero-wrap hero-wrap-2" style="background-image: url('resources/images/happy.jpg');" data-stellar-background-ratio="0.5">
   <div class="overlay"></div>
   <div class="container">
      <div
         class="row no-gutters slider-text align-items-end justify-content-start">
         <div class="col-md-9 ftco-animate pb-4">
            <h1 class="mb-3 bread"><p class="jg" style="font-size:30px;">회원 가입을 축하드립니다.</p></h1>
            <p class="breadcrumbs">
               <span class="mr-2"> <a href="../">Home <i class="ion-ios-arrow-forward"></i></a>
               </span> <span class="mr-2"> <a href="../Login">Login <i class="ion-ios-arrow-forward"></i></a>
               </span>
            </p>
         </div>
      </div>
   </div>
	</section>
	
	<section class="ftco-section" style="padding: 2em 0;">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-12 heading-section text-center ftco-animate">
				<span class="subheading">Meet Us</span>
				<p class="jg" style="font-size: 30px;">회원인증</p>
				<c:if test="${key eq 1}">
				<a href="../Login" class="btn btn-primary" style="margin:3rem;"><p class="jg" style="margin:20px;">회원 인증 이메일을 전송했습니다.<br>이메일에서 회원인증을 해주세요.</p></a>
				</c:if>
				<c:if test="${key eq 2}">
				<a href="../Login" class="btn btn-primary" style="margin: 3rem;"><p class="jg" style="margin: 20px;">회원 가입이 완료 되었습니다</p></a>
				</c:if>
				<c:if test="${key eq 3}">
				<a href="../Login" class="btn btn-primary" style="margin: 3rem;"><p class="jg" style="margin: 20px;">이미 가입된 아이디 입니다.</p></a>
				</c:if>
				<c:if test="${key eq 99}">
				<a href="../Login" class="btn btn-primary" style="margin: 3rem;"><p class="jg" style="margin: 20px;"> 이메일 인증이 완료된 사용자입니다.<br>${user_email}</p></a>
				</c:if>
				<c:if test="${key eq 66}">
				<a href="../Login" class="btn btn-primary" style="margin: 3rem;"><p class="jg" style="margin: 20px;">잘못됨 방식에 접근입니다.</p></a>
				</c:if>
			</div>
		</div>
		<div class="row"></div>
	</div>
	</section>
	   
</body>
</html>
<%-- <%@ page language="java" contentType="text/html; charset=EUC-KR" --%>
<%--     pageEncoding="EUC-KR"%> --%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR"> -->
<!-- <title>notification test</title> -->

<!--   <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"> -->
<!--   <link rel="stylesheet" href="https://code.getmdl.io/1.2.1/material.indigo-pink.min.css"> -->
<!--   <script defer src="https://code.getmdl.io/1.2.1/material.min.js"></script> -->
<%--   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/notification/styles/index.css"> --%>
<!-- </head> -->
<!-- <body> -->
<!--   <header> -->
<!--     <h1>Push Codelab</h1> -->
<!--   </header> -->

<!--   <main> -->
<!--     <p>Welcome to the push messaging codelab. The button below needs to be -->
<!--     fixed to support subscribing to push.</p> -->
<!--     <p> -->
<!--       <button disabled class="js-push-btn mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect"> -->
<!--         Enable Push Messaging -->
<!--       </button> -->
      
<!--         <button onclick="test()"> -->
<!--         test -->
<!--       </button> -->
<!--     </p> -->
<!--     <section class="subscription-details js-subscription-details is-invisible"> -->
<!--       <p>Once you've subscribed your user, you'd send their subscription to your -->
<!--       server to store in a database so that when you want to send a message -->
<!--       you can lookup the subscription and send a message to it.</p> -->
<!--       <p>To simplify things for this code lab copy the following details -->
<!--       into the <a href="https://web-push-codelab.glitch.me//">Push Companion -->
<!--       Site</a> and it'll send a push message for you, using the application -->
<!--       server keys on the site - so make sure they match.</p> -->
<!--       <pre id="test"><code class="js-subscription-json"></code></pre> -->
      
<!--     </section> -->
<!--   </main> -->
<!--   <script> -->
<!-- //   var userdata = document.ElementById('test').value; -->
<!-- //   const subscriptionDetails = -->
<!-- // 	    document.querySelector('.js-subscription-details').value; -->
<!-- //   function test(){ -->
<!-- // 	  alert(subscription); -->
<!-- //   } -->
  
  
<!--   </script> -->
<!--   <script src="/resources/notification/scripts/main.js"></script> -->
  
<!--   <script src="https://code.getmdl.io/1.2.1/material.min.js"></script> -->
<!-- </body> -->
<!-- </html> -->