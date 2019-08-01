</html><%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<head>
<title>Meet us</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>

<script type="text/javascript">
	function noticeDetail(board_no){
		alert(board_no);
		location.href = "/NoticeDetail?board_no="+board_no;		
	}
</script>

<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">

	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('resources/images/destination-single.jpg');"
		data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-start">
			<div class="col-md-9 ftco-animate pb-4">
				<h1 class="mb-3 bread">Notice</h1>
				<p class="breadcrumbs">
					<span class="mr-2"><a href="../">Home <i
							class="ion-ios-arrow-forward"></i></a></span> <span>Notice<i
						class="ion-ios-arrow-forward"></i></span>
				</p>
			</div>
		</div>
	</div>
	</section>


	<div class="sidebar-box ftco-animate">
		<!--             	<h3 class="heading-sidebar">Notice</h3> -->
		<ul class="categories">
			<c:forEach var="list" varStatus="i" items="${list }">
				<li>
					<a href="../NoticeDetail?board_no=${list.board_no}">${list.board_title }<span>${list.board_insertdate }&nbsp&nbsp(${list.board_viewcount})</span></a>
				</li>
			</c:forEach>
		</ul>
		<!-- 		</div> -->
		
		<div class="tag-widget post-tag-container mb-5 mt-5">
              <div class="tagcloud">
                <a href="../NoticeInsert" class="tag-cloud-link">공지사항 추가</a> 
                <a href="#" class="tag-cloud-link">Tech</a>
                <a href="#" class="tag-cloud-link">Travel</a>
              </div>
            </div>

		<div class="sidebar-box">
			<form action="#" class="search-form">
				<div class="form-group">
					<span class="icon icon-search"></span> <input type="text"
						class="form-control" placeholder="Type a keyword and hit enter">
				</div>
			</form>
		</div>

		<div class="row mt-5">
			<div class="col text-center">
				<div class="block-27">
					<ul>
						<li><a href="#">&lt;</a></li>
						<li class="active"><span>1</span></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
						<li><a href="#">&gt;</a></li>
						<li><a href="../NoticeInsert">C</a></li>
						<li><a href="#">D</a></li>
						<li><a href="../NoticeModify">M</a></li>
					</ul>
				</div>
			</div>
		</div>

	</div>



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px"> <circle
			class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4"
			stroke="#eeeeee" /> <circle class="path" cx="24" cy="24" r="22"
			fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>
</body>
</html>