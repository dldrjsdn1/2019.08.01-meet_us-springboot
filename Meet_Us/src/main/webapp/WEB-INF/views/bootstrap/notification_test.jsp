<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>notification test</title>

<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://code.getmdl.io/1.2.1/material.indigo-pink.min.css">
<script defer src="https://code.getmdl.io/1.2.1/material.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/notification/styles/index.css">

</head>
<body>


	<!-- <button id='btn1'>Ŭ������ ����</button> -->



	<div
		style="margin-bottom: 0; border-style: solid; border-color: #e2c0bb; border-width: 4px; padding: 5px;">
		<h3 class="heading-sidebar" style="margin-bottom: 0;">
			<p class="jg" id="meetingPlaceId" style="margin-bottom: 0;">'
				+MeetingPlace+ '</p>
		</h3>
		<p id="meetingPlaceAddressId"
			style="font-size: 80%; margin-bottom: 0;">'+address+'</p>
		<button type="button" onclick="urlSave()" class="btn btn-dark btn-sm"
			style="width: 100%; margin-top: 10px; background-color: #e2c0bb; border-color: #e2c0bb;">URL
			����</button>
	</div>
	'

	<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
	<script>
		function copyToClipboard(val) {
			var t = document.createElement("textarea");
			document.body.appendChild(t);
			t.value = val;
			t.select();
			document.execCommand('copy');
			document.body.removeChild(t);
		}
		function urlSave() {
			copyToClipboard('�̰ǿ�');
			alert('����Ǿ����ϴ�.');
		};
	</script>
</body>

</html>



<!-- notification test -->

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