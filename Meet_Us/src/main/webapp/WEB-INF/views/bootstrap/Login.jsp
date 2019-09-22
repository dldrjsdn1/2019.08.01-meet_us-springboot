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

   <section class="hero-wrap hero-wrap-2" style="background-image: url('resources/images/welcome.jpg');" data-stellar-background-ratio="0.5">
   <div class="overlay"></div>
   <div class="container">
      <div
         class="row no-gutters slider-text align-items-end justify-content-start">
         <div class="col-md-9 ftco-animate pb-4">
            <h1 class="mb-3 bread">Login&nbsp</h1>
            <p class="breadcrumbs">
               <span class="mr-2"> <a href="../">Home <i class="ion-ios-arrow-forward"></i></a>
               </span> <span class="mr-2">Login <i class="ion-ios-arrow-forward"></i>
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
				<p class="jg" style="font-size: 30px;">로그인</p>
			</div>
		</div>
		<div class="row"></div>
	</div>
	</section>


<!-- 	<section> -->
<!--    		<div class="container"> -->
<!--       <div class="comment-form-wrap"> -->
         
<!--          <div class="col-md-12 "> -->
<!--             <form action="#" class="search-property-1"> -->
<!--                <div class="col-lg align-items-end" > -->
<!--                   <div class="form-group"> -->
<!--                      <div class="form-field"style="text-align: center; padding-bottom:10px;"> -->
<!-- <!--                         <div class="icon"> --> 
<!-- <!--                            <span class="ion-ios-search"></span> --> 
<!-- <!--                         </div> -->
<!--                         <input type="text" style="width: 300px; display: inline;" class="form-control" placeholder="ID"> -->
<!--                      </div> -->
<!--                   </div> -->
<!--                </div> -->
<!--                <div class="col-lg align-items-end"> -->
<!--                   <div class="form-group"> -->
<!--                      <div class="form-field" style="text-align: center;"> -->
<!-- <!--                         <div class="icon"> --> 
<!-- <!--                            <span class="ion-ios-calendar"></span> --> 
<!-- <!--                         </div> --> 
<!--                         <input type="text" style="width: 300px; display: inline;" class="form-control checkin_date" placeholder="Password"> -->
<!--                      </div> -->
<!--                   </div> -->
<!--                </div> -->
<!--                <br> -->
<!--                <div class="col-lg align-self-end"> -->
<!--                   <div class="form-group" style="text-align: center; padding-bottom:10px;"> -->
<!--                      <div class="form-field"> -->
<!--                         <input type="submit" style="width: 300px; display: inline;" value="Login" class="form-control btn btn-primary"> -->
<!--                      </div> -->
<!--                   </div> -->
<!--                </div> -->
<!--                <div class="form-group" style="text-align: center;"> -->
<!-- <!--                   <a onclick="selectS()">회원가입&nbsp&nbsp&nbsp|</a> --> 
<!-- 				  <a href ="../selectSocial">회원가입&nbsp&nbsp&nbsp|</a> -->
<!--                   <a href="../IdSearch">&nbsp&nbsp아이디 찾기&nbsp&nbsp&nbsp|</a> -->
<!--                   <a href="../PasswordSearch">&nbsp&nbsp비밀번호 찾기</a> -->
<!--                </div> -->
<!--             </form> -->
<!--          </div> -->
<!--       </div> -->
      
      

<!--      </div> -->
<!--    </section> -->
   
<!--    <h3 class="mb-5">&nbsp</h3>    -->

<!-- </body> -->
<!-- <script type="text/javascript"> -->
<!-- // 	function selectS(){ -->
<%-- // 		location.href="${pageContext.request.contextPath}bootstrap/selectSocial"; --%>
<!-- // 	} -->
<!-- </script> -->
<!-- </html> -->

   
    <section>
         <div class="container">
      <div class="comment-form-wrap">
         <div class="col-md-12 ">
            <form action="${pageContext.request.contextPath}/LoginPage" method="post" class="search-property-1" name="loginUser">
               <div class="col-lg align-items-end" >
                  <div class="form-group">
                     <div class="form-field"style="text-align: center; padding-bottom:10px;">
                        <div class="icon">
                           <span class="ion-ios-search"></span>
                        </div>
                        <input type="text" style="width: 400px; display: inline;" class="form-control" id="user_id" name="user_id" placeholder="ID" >
                           <div class="check_font" id="id_check"></div>
                     </div>
                  </div>
               </div>
               
               
               <div class="col-lg align-items-end">
                  <div class="form-group">
                     <div class="form-field" style="text-align: center;">
                        <div class="icon">
                           <span class="ion-ios-calendar"></span>
                        </div>
                        <input type="password" style="width: 400px; display: inline;" class="form-control checkin_date" id="user_password" name="user_password" placeholder="Password">
                         <div class="check_font" id="pw_check"></div>
                     </div>
                  </div>
               </div>
               <br>
               <div class="col-lg align-self-end">
                  <div class="form-group" style="text-align: center; padding-bottom:10px;">
                     <div class="form-field">
                        <input type="button" style="width: 400px; display: inline;" value="Login" class="form-control btn btn-primary" onclick="userLogin()">
                         <c:if test="${error eq 404 }">
                            <p style="color: RED">인증을 하지 않은 사용자이거나, 아이디와 비밀번호가 다릅니다 : (</p>
                         </c:if>
                     </div>
                  </div>
               </div>
               <div class="form-group" style="text-align: center;">
              <a href ="../signUp">회원가입&nbsp&nbsp&nbsp|</a>
                  <a href="../IdSearch">&nbsp&nbsp아이디 찾기&nbsp&nbsp&nbsp|</a>
                  <a href="../PasswordSearch">&nbsp&nbsp비밀번호 찾기</a>
               </div>
            </form>
         </div>
      </div>

     </div>
   </section>
   
   <h3 class="mb-5">&nbsp</h3>   

</body>
<script type="text/javascript">
   function selectS(){
      location.href="${pageContext.request.contextPath}bootstrap/selectSocial";
   }

   
   function userLogin(){
      var form = document.loginUser;
      let user_id = $('#user_id').val();
      let user_password = $('#user_password').val();
      let count = 0;
      
   
      
      if(user_id.length==0){
         $("#id_check").text("비었어요 : (");
          $("#id_check").css("color", "red");
          $("#reg_submit").attr("disabled", true);
          count++;
      }
      
      if(user_password.length==0){
         $("#pw_check").text("비었어요 : (");
          $("#pw_check").css("color", "red");
          $("#reg_submit").attr("disabled", true);
          count++;
      }

      alert(count);
      
      if(count != 0 ){
         return;
      }
      form.submit();
      
   }
   
   
   
   
</script>

</html>