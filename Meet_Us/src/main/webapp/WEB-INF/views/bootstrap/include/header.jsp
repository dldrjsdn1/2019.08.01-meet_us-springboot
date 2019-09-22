<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="../">Meet Us</a>
	      <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
 
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav nav ml-auto">
	          <li class="nav-item"><a href="../" class="nav-link"><span>Home</span></a></li>
	          <li class="nav-item"><a href="../Map" class="nav-link"><span>Map</span></a></li>
	          <li class="nav-item"><a href="../MeeterMain" class="nav-link"><span>Meeting</span></a></li>
	          <li class="nav-item"><a href="../Notice" class="nav-link"><span>Notice</span></a></li>
	          <li class="nav-item"><a href="../Developers" class="nav-link"><span>Developers</span></a></li>
	          <!-- 여기 부분 수정 -->
              <a>${user }</a>
	          <li class="nav-item"><a href="../Login" class="nav-link"><span><strong>Login</strong></span></a></li>

	          
	        </ul>
	      </div>
	    </div>
	  </nav>

</body>
</html>

