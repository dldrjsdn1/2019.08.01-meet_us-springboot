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

	<section class="hero-wrap"
		style="background-image: url('resources/images/destination-single.jpg');"
		data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-center justify-content-start">
			<div class="col-md-9 ftco-animate pb-4">
				<h1 class="mb-3 bread">${detail.title }</h1>
				<p>
					<a href="#" class="btn btn-primary py-2 px-4">Book this tour</a> <a
						href="#" class="btn btn-black py-2 px-4">Watch Video</a>
				</p>
			</div>
		</div>
	</div>
	</section>

	<section class="ftco-section ftco-services-2 ftco-no-pt">
	<div class="container-fluid px-0 bg-light">
		<div class="container">
			<div class="row tour py-5">
				<div class="col-md d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services text-center d-block">
						<div class="icon justify-content-center align-items-center d-flex">
							<span class="flaticon-alarm-clock"></span>
						</div>
						<div class="media-body">
							<h3 class="heading mb-3">${detail.total_member }&nbsp/&nbsp${detail.current_member
								}</h3>
						</div>
					</div>
				</div>
				<div class="col-md d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services text-center d-block">
						<div class="icon justify-content-center align-items-center d-flex">
							<span class="flaticon-manager"></span>
						</div>
						<div class="media-body">
							<h3 class="heading mb-3">${detail.limit_age }</h3>
						</div>
					</div>
				</div>
				<div class="col-md d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services text-center d-block">
						<div class="icon justify-content-center align-items-center d-flex">
							<span class="flaticon-calendar"></span>
						</div>
						<div class="media-body">
							<h3 class="heading mb-3">${detail.meeting_date }</h3>
						</div>
					</div>
				</div>
				<div class="col-md d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services text-center d-block">
						<div class="icon justify-content-center align-items-center d-flex">
							<span class="flaticon-layers"></span>
						</div>
						<div class="media-body">
							<h3 class="heading mb-3">${detail.metting_purpose }</h3>
						</div>
					</div>
				</div>
				<div class="col-md d-flex align-self-stretch ftco-animate">
					<div class="media block-6 services text-center d-block">
						<div class="icon justify-content-center align-items-center d-flex">
							<span class="flaticon-wallet"></span>
						</div>
						<div class="media-body">
							<h3 class="heading mb-3">
								<span>$500</span>咯扁 构持衬
							</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12 tour-wrap mb-5">
				<div class="row">
					<div class="col-md-6 d-flex ftco-animate">
						<div class="img align-self-stretch"
							style="background-image: url(resources/images/destination-1.jpg);"></div>
					</div>
					<div class="col-md-6 ftco-animate">
						<div class="text py-5">
							<h3>
								<a href="#">${detail.title }</a>
							</h3>
							<p class="pos">
								from <span class="price">$400.00</span>5 days 咯变 肚 构持衬
							</p>
							<p>${detail.contents }</p>
							<p>
								<a href="#" class="btn btn-secondary">Details</a> <a href="#"
									class="btn btn-primary">Book now</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-12 tour-wrap">
				<div class="day-wrap">
					<h3 class="pl-5">Day 1</h3>
					<p>Far far away, behind the word mountains, far from the
						countries Vokalia and Consonantia, there live the blind texts.
						Separated they live in Bookmarksgrove right at the coast of the
						Semantics, a large language ocean.</p>
					<!-- <img src="resources/images/bg_1.jpg" class="img-fluid" alt="Colorlib Free Template"> -->
				</div>
			</div>
			
			<div class="col-md-12 tour-wrap">
				<p>
					<a href="#" class="btn btn-primary py-3 px-4">Book this tour</a> <a
						href="#" class="btn btn-secondary py-3 px-4">Share this tour</a>
				</p>
			</div>
			
			<div class="col-md-12 tour-wrap">
				<table class="table">
					<tbody>
						<tr>
							<th scope="row">Departure</th>
							<td>
								<p>Greece International Airport</p>
							</td>
							<td></td>
						</tr>
						<!-- END TR-->

						<tr>
							<th scope="row">Departure Time</th>
							<td>
								<p>Please arrive by 10:20 AM for a prompt departure at 10:50
									AM</p>
							</td>
							<td></td>
						</tr>
						<!-- END TR-->

						<tr>
							<th scope="row">Return Time</th>
							<td>
								<p>Approximately 8:30 PM</p>
							</td>
							<td></td>
						</tr>
						<!-- END TR-->

						<tr>
							<th scope="row">Included</th>
							<td class="d-flex">
								<ul>
									<li>Airfare</li>
									<li>5 star accomodation</li>
								</ul>
								<ul>
									<li>Local transportation</li>
									<li>Private Professional Guide</li>
								</ul>
							</td>
							<td></td>
						</tr>
						<!-- END TR-->

						<tr>
							<th scope="row">Not Included</th>
							<td class="d-flex">
								<ul>
									<li>Departure Taxes</li>
								</ul>
								<ul>
									<li>Entry Fees</li>
								</ul>
							</td>
							<td></td>
						</tr>
						<!-- END TR-->
						<tr>
							<th scope="row">Maps</th>
							<td>
								<div id="map"></div>
							</td>
						</tr>
						<!-- END TR-->
					</tbody>
				</table>
			</div>
			<div class="col-md-12 tour-wrap">
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
					</ul>
					<!-- END comment-list -->

					<div class="comment-form-wrap pt-5">
						<h3 class="mb-5">Leave a comment</h3>
						<form action="#" class="p-5 bg-light">
							<div class="form-group">
								<label for="name">Name *</label> <input type="text"
									class="form-control" id="name">
							</div>
							<div class="form-group">
								<label for="email">Email *</label> <input type="email"
									class="form-control" id="email">
							</div>
							<div class="form-group">
								<label for="website">Website</label> <input type="url"
									class="form-control" id="website">
							</div>

							<div class="form-group">
								<label for="message">Message</label>
								<textarea name="" id="message" cols="30" rows="10"
									class="form-control"></textarea>
							</div>
							<div class="form-group">
								<input type="submit" value="Post Comment"
									class="btn py-3 px-4 btn-primary">
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- .section -->



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px"> <circle
			class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4"
			stroke="#eeeeee" /> <circle class="path" cx="24" cy="24" r="22"
			fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>

</body>
</html>