<%@ page language="java" contentType="text/html; charset=EUC-KR"
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
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">

	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('resources/images/meeting.jpg');"
		data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-start">
			<div class="col-md-9 ftco-animate pb-4">
				<h1 class="mb-3 bread">Meeting</h1>
				<p class="breadcrumbs">
					<span class="mr-2"><a href="../">Home <i
							class="ion-ios-arrow-forward"></i></a></span> <span>Meeting <i
						class="ion-ios-arrow-forward"></i></span>
				</p>
			</div>
		</div>
	</div>
	</section>

	<section class="ftco-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-9 pr-lg-4">
				<div class="row">

					<c:forEach var="list" varStatus="i" items="${list }">
						<div class="col-md-6-1 col-lg-4 ftco-animate">
							<div class="project">
								<div class="img">
<!-- 									<div class="vr"> -->
<!-- 										<span>Sale</span> -->
<!-- 									</div> -->
									<a
										href="../MeeterDetail?meeter_board_no=${list.meeter_board_no }">
										<img src="resources/images/destination-1.jpg"
										class="img-fluid" alt="Colorlib Template">
									</a>
								</div>
								<div class="text">
									<h4 class="price">
										<c:choose>
											<c:when test="${list.current_member == list.total_member}">
												<span class="old-price">${list.current_member }/${list.total_member}</span>
											</c:when>
											<c:otherwise>
												${list.current_member }&nbsp/&nbsp${list.total_member }
											</c:otherwise>
										</c:choose>
									</h4>
										<c:choose>
											<c:when test="${list.board_write_date == list.board_modify_date}">
												<span>${list.board_write_date }</span>
											</c:when>
											<c:otherwise>
												<span>${list.board_modify_date }&nbsp(수정됨)</span>
											</c:otherwise>
										</c:choose>
									<h3>
										<a href="../MeeterDetail"><p class="jg">${list.title }</p></a>
									</h3>
									<div class="star d-flex clearfix">
<!-- 										<div class="mr-auto float-left"> -->
<!-- 											<span class="ion-ios-star"></span> <span class="ion-ios-star"></span> -->
<!-- 											<span class="ion-ios-star"></span> <span class="ion-ios-star"></span> -->
<!-- 											<span class="ion-ios-star"></span> -->
<!-- 										</div> -->
										<div class="float-right">
											<span class="rate"><a href="#">조회수 :
													${list.board_count }</a></span>
										</div>
									</div>
								</div>
<!-- 								<a href="images/destination-1.jpg" -->
<!-- 									class="icon image-popup d-flex justify-content-center align-items-center"> -->
<!-- 									<span class="icon-expand"></span> -->
<!-- 								</a> -->
							</div>
						</div>
					</c:forEach>

				</div>
				<div class="row mt-5" style="margin-bottom:3rem;">
					<div class="col text-center">
						<div class="block-27">
							<ul>
								<c:choose>
									<c:when test="${pageCriteria.keyword == null}">
										<!-- 전체 리스트 출력 시 -->
										<c:if test="${pageMaker.prev }">
											<li><a
												href='<c:url value="/MeeterMain?page=${pageMaker.startPage-1 }"/>'>&lt;</a></li>
										</c:if>
										<c:forEach begin="${pageMaker.startPage }"
											end="${pageMaker.endPage }" var="idx">
											<c:choose>
												<c:when test="${idx == pageCriteria.page}">
													<li class="active"><a
														href='<c:url value="/MeeterMain?page=${idx }"/>'>${idx }</a></li>
												</c:when>
												<c:otherwise>
													<li><a
														href='<c:url value="/MeeterMain?page=${idx }"/>'>${idx }</a></li>
												</c:otherwise>
											</c:choose>
										</c:forEach>
										<c:if test="${pageMaker.next && pageMaker.endPage >0 }">
											<li><a
												href='<c:url value="/MeeterMain?page=${pageMaker.endPage+1 }"/>'>&gt;</a></li>
										</c:if>
									</c:when>

									<c:otherwise>
										<!-- 검색된 키워드로 리스트 출력 시 -->
										<c:if test="${pageMaker.prev }">
											<li><a
												href='<c:url value="/NoticeSearchList?keyword=${pageCriteria.keyword }&page=${pageMaker.startPage-1 }"/>'>&lt;</a></li>
										</c:if>
										<c:forEach begin="${pageMaker.startPage }"
											end="${pageMaker.endPage }" var="idx">
											<c:choose>
												<c:when test="${idx == pageCriteria.page}">
													<li class="active"><a
														href='<c:url value="/NoticeSearchList?keyword=${pageCriteria.keyword }&page=${idx }"/>'>${idx }</a></li>
												</c:when>
												<c:otherwise>
													<li><a
														href='<c:url value="/NoticeSearchList?keyword=${pageCriteria.keyword }&page=${idx }"/>'>${idx }</a></li>
												</c:otherwise>
											</c:choose>
										</c:forEach>
										<c:if test="${pageMaker.next && pageMaker.endPage >0 }">
											<li><a
												href='<c:url value="/NoticeSearchList?keyword=${pageCriteria.keyword }&page=${pageMaker.endPage+1 }"/>'>&gt;</a></li>
										</c:if>
									</c:otherwise>
								</c:choose>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- end -->
			<div class="col-lg-3 p-4 bg-light">
				<div class="search-wrap-1 ftco-animate">

					<br> <br>
					<h2 class="mb-3">Member Recruit</h2>
					<form action="#" class="search-property-1">
						<div class="row">
							<div class="col-lg-12 align-self-end">
								<div class="form-group">
									<div class="form-field">
										<input type="submit" value="Create"
											class="form-control btn btn-primary">
									</div>
								</div>
							</div>
						</div>
					</form>
					<br> <br> <br> <br>

					<h2 class="mb-3">Find Places</h2>
					<form action="#" class="search-property-1">
						<div class="row">
							<div class="col-lg-12 align-items-end mb-3">
								<div class="form-group">
									<label for="#">Destination</label>
									<div class="form-field">
										<div class="icon">
											<span class="ion-ios-search"></span>
										</div>
										<input type="text" class="form-control"
											placeholder="Search place">
									</div>
								</div>
							</div>
							<div class="col-lg-12 align-items-end mb-3">
								<div class="form-group">
									<label for="#">Check-in date</label>
									<div class="form-field">
										<div class="icon">
											<span class="ion-ios-calendar"></span>
										</div>
										<input type="text" class="form-control checkin_date"
											placeholder="Check In Date">
									</div>
								</div>
							</div>
							<div class="col-lg-12 align-items-end mb-3">
								<div class="form-group">
									<label for="#">Check-out date</label>
									<div class="form-field">
										<div class="icon">
											<span class="ion-ios-calendar"></span>
										</div>
										<input type="text" class="form-control checkout_date"
											placeholder="Check Out Date">
									</div>
								</div>
							</div>
							<div class="col-lg-12 align-items-end mb-3">
								<div class="form-group">
									<label for="#">Price Limit</label>
									<div class="form-field">
										<div class="select-wrap">
											<div class="icon">
												<span class="ion-ios-arrow-down"></span>
											</div>
											<select name="" id="" class="form-control">
												<option value="">$5,000</option>
												<option value="">$10,000</option>
												<option value="">$50,000</option>
												<option value="">$100,000</option>
												<option value="">$200,000</option>
												<option value="">$300,000</option>
												<option value="">$400,000</option>
												<option value="">$500,000</option>
												<option value="">$600,000</option>
												<option value="">$700,000</option>
												<option value="">$800,000</option>
												<option value="">$900,000</option>
												<option value="">$1,000,000</option>
												<option value="">$2,000,000</option>
											</select>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-12 align-self-end">
								<div class="form-group">
									<div class="form-field">
										<input type="submit" value="Search"
											class="form-control btn btn-primary">
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
			<!-- end -->
		</div>
	</div>
	</section>

	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px"> <circle
			class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4"
			stroke="#eeeeee" /> <circle class="path" cx="24" cy="24" r="22"
			fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>

</body>
</html>