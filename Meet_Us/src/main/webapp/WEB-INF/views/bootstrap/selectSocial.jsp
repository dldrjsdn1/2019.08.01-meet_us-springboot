<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>소셜 로그인 창</h1>
	<!--        네이티브 앱 키 Tooltip  26f41a7b71ca942c324e791fded62756 재발급 -->
	<!-- 		REST API 키 Tooltip  51842c99904f5e62277ee17ee6d97da2 재발급 -->
	<!-- 		JavaScript 키 Tooltip  b6164a1e476a98c774b246adb6bdf93d 재발급 -->
	<!-- 		Admin 키 Tooltip  49ca4e0a99911e8ef472225612af95e4 -->
<!-- 	<a href="https://kauth.kakao.com/oauth/authorize?client_id=51842c99904f5e62277ee17ee6d97da2&redirect_uri=http://localhost:8087/kakaoLogin&response_type=code"> -->
	<a onclick="opener.location.href='https://kauth.kakao.com/oauth/authorize?client_id=51842c99904f5e62277ee17ee6d97da2&redirect_uri=http://localhost:8087/kakaoLogin&response_type=code';self.close()">
		<img src="/img/kakao_account_login_btn_medium_wide_ov.png">
	</a>
	

</body>
</html>