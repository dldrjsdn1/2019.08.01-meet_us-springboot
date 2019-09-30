<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>Meet Us</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

</head>
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">

	  <section class="hero-wrap hero-wrap-2" style="background-image: url('resources/images/meeting.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-4">
            <h1 class="mb-3 bread">Meeting</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="../">Home <i class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a href="../MeeterMain">Meeting <i class="ion-ios-arrow-forward"></i></a></span> <span>Meeting Detail <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>


	<section class="ftco-section ftco-services-2 ftco-no-pt">
	<div class="container-fluid px-0 bg-light">
		<div class="container">
			<div class="row tour py-5">
				<div class="col-md-my d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services text-center d-block">
						<div class="icon justify-content-center align-items-center d-flex">
							<span class="flaticon-manager"></span>
						</div>
						<div class="media-body">
							<h3 class="heading mb-3">${detail.total_member }&nbsp/&nbsp${detail.current_member}</h3>
						</div>
					</div>
				</div>
				<div class="col-md-my d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services text-center d-block">
						<div class="icon justify-content-center align-items-center d-flex">
							<span class="flaticon-calendar"></span>
						</div>
						<div class="media-body">
							<h3 class="heading mb-3">날짜</h3>
						</div>
					</div>
				</div>
				<div class="col-md-my d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services text-center d-block">
						<div class="icon justify-content-center align-items-center d-flex">
							<span class="flaticon-tour-guide"></span>
						</div>
						<div class="media-body">
							<h3 class="heading mb-3">목적</h3>
						</div>
					</div>
				</div>
				<div class="col-md-my d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services text-center d-block">
						<div class="icon justify-content-center align-items-center d-flex">
							<span class="flaticon-map-of-roads"></span>
						</div>
						<div class="media-body">
							<h3 class="heading mb-3">장소</h3>
						</div>
					</div>
				</div>
				<div class="col-md-my d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services text-center d-block">
						<div class="icon justify-content-center align-items-center d-flex">
							<span class="flaticon-layers"></span>
						</div>
						<div class="media-body">
							<h3 class="heading mb-3">
								<span>조건</span>
							</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
<!-- 			<div class="col-md-12 mb-5"> -->
<!-- 				<div class="row"> -->
<!-- 			    <div class="col-md-12"> -->
<!--     				<div class="day-wrap"> -->
<!--     				<img src="resources/images/bg_1.jpg" class="img-fluid" alt="Colorlib Free Template"> -->
<%--     					<h2 class="jg" style="padding-top:3rem;">${detail.title }</h2> --%>
<%--     					<p>${detail.contents }</p> --%>
<!--     				</div> -->
<!--     			</div> -->
    			
        	<div class="col-md-12 tour-wrap mb-5">
    				<div class="row">
    					<div class="col-md-6 d-flex ftco-animate">
    						<div class="img align-self-stretch" style="background-image: url(resources/images/gallery-1.jpg);"></div>
    					</div>
    					<div class="col-md-6 ftco-animate">
    						<div class="text py-5">
    							<h3 class="jg">${detail.title }</a></h3>
    							<p class="jg">소제목소제목</p>
    							<p class="jg">${detail.contents }</p>
    						</div>
    					</div>
    				</div>
    		</div>
    			
<!-- 		참석 인원 영역 -->
			<div class="col-md-12" style="margin-bottom:3rem;">
			<h6><strong>참석 인원(3명)</strong></h6>
			<p>나나나나나나나</p>
			</div>
				
		<section class="ftco-gallery" style="width:100%;">
    	<div class="container-fluid px-0">
    		<div class="row no-gutters">
					<div class="col-md-4 col-lg-2 ftco-animate">
						<a href="resources/images/gallery-1.jpg" class="gallery image-popup img d-flex align-items-center" style="background-image: url(resources/images/gallery-1.jpg);">
						</a>
					</div>
					<div class="col-md-4 col-lg-2 ftco-animate">
						<a href="resources/images/gallery-2.jpg" class="gallery image-popup img d-flex align-items-center" style="background-image: url(resources/images/gallery-2.jpg);">
						</a>
					</div>
					<div class="col-md-4 col-lg-2 ftco-animate">
						<a href="resources/images/gallery-3.jpg" class="gallery image-popup img d-flex align-items-center" style="background-image: url(resources/images/gallery-3.jpg);">
						</a>
					</div>
					<div class="col-md-4 col-lg-2 ftco-animate">
						<a href="resources/images/gallery-4.jpg" class="gallery image-popup img d-flex align-items-center" style="background-image: url(resources/images/gallery-4.jpg);">
						</a>
					</div>
					<div class="col-md-4 col-lg-2 ftco-animate">
						<a href="resources/images/gallery-5.jpg" class="gallery image-popup img d-flex align-items-center" style="background-image: url(resources/images/gallery-5.jpg);">
						</a>
					</div>
					<div class="col-md-4 col-lg-2 ftco-animate">
						<a href="resources/images/gallery-6.jpg" class="gallery image-popup img d-flex align-items-center" style="background-image: url(resources/images/gallery-6.jpg);">
						</a>
					</div>
        		</div>
    	</div>
    </section>
    
    <!-- 		참석 버튼 -->
			<div class="col-md-12">
				<p>
					<a href="#" class="btn btn-primary py-3 px-4" style="width:100%; margin-top:3rem;">참석하기</a>
				</p>
			</div>
	</div>
			
            
			<div class="col-md-12">
				<div class="pt-5 mt-5">
					<h3 class="mb-5">6 Reviews</h3>
					<ul class="comment-list">
						<li class="comment">
							<div class="vcard bio">
								<img src="resources/images/person_1.jpg" alt="Image placeholder">
							</div>
							<div class="comment-body">
								<h3>John Doe</h3>
								<div class="meta">October 03, 2018 at 2:21pm</div>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Pariatur quidem laborum necessitatibus, ipsam impedit vitae
									autem, eum officia, fugiat saepe enim sapiente iste iure! Quam
									voluptas earum impedit necessitatibus, nihil?</p>
								<p>
									<a href="#" class="reply">Reply</a>
								</p>
							</div>
						</li>

						<li class="comment">
							<div class="vcard bio">
								<img src="resources/images/person_1.jpg" alt="Image placeholder">
							</div>
							<div class="comment-body">
								<h3>John Doe</h3>
								<div class="meta">October 03, 2018 at 2:21pm</div>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Pariatur quidem laborum necessitatibus, ipsam impedit vitae
									autem, eum officia, fugiat saepe enim sapiente iste iure! Quam
									voluptas earum impedit necessitatibus, nihil?</p>
								<p>
									<a href="#" class="reply">Reply</a>
								</p>
							</div>

							<ul class="children">
								<li class="comment">
									<div class="vcard bio">
										<img src="resources/images/person_1.jpg"
											alt="Image placeholder">
									</div>
									<div class="comment-body">
										<h3>John Doe</h3>
										<div class="meta">October 03, 2018 at 2:21pm</div>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Pariatur quidem laborum necessitatibus, ipsam impedit
											vitae autem, eum officia, fugiat saepe enim sapiente iste
											iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
										<p>
											<a href="#" class="reply">Reply</a>
										</p>
									</div>


									<ul class="children">
										<li class="comment">
											<div class="vcard bio">
												<img src="resources/images/person_1.jpg"
													alt="Image placeholder">
											</div>
											<div class="comment-body">
												<h3>John Doe</h3>
												<div class="meta">October 03, 2018 at 2:21pm</div>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Pariatur quidem laborum necessitatibus, ipsam impedit
													vitae autem, eum officia, fugiat saepe enim sapiente iste
													iure! Quam voluptas earum impedit necessitatibus, nihil?</p>
												<p>
													<a href="#" class="reply">Reply</a>
												</p>
											</div>

											<ul class="children">
												<li class="comment">
													<div class="vcard bio">
														<img src="resources/images/person_1.jpg"
															alt="Image placeholder">
													</div>
													<div class="comment-body">
														<h3>John Doe</h3>
														<div class="meta">October 03, 2018 at 2:21pm</div>
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing
															elit. Pariatur quidem laborum necessitatibus, ipsam
															impedit vitae autem, eum officia, fugiat saepe enim
															sapiente iste iure! Quam voluptas earum impedit
															necessitatibus, nihil?</p>
														<p>
															<a href="#" class="reply">Reply</a>
														</p>
													</div>
												</li>
											</ul>
										</li>
									</ul>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
			
			<div class="ftco-animate">
              <h3 class="heading-sidebar"><p class="jg">비슷한 모임</p></h3>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(resources/images/image_1.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="icon-calendar"></span> April 04, 2019</a></div>
                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                  </div>
                </div>
              </div>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(resources/images/image_2.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="icon-calendar"></span> April 04, 2019</a></div>
                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                  </div>
                </div>
              </div>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(resources/images/image_3.jpg);"></a>
                <div class="text">
                  <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about the blind texts</a></h3>
                  <div class="meta">
                    <div><a href="#"><span class="icon-calendar"></span> April 04, 2019</a></div>
                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                  </div>
                </div>
              </div>
            </div>
		</div>
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