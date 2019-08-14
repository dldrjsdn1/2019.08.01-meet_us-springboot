</html><%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Meet us</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<style type="text/css">
		.reButtonPosition p { right : 30px; }
	</style>
</head>

<script type="text/javascript">
	function contentWithline(content) {
		// alert("4");
		// alert("3");
		// location.href = "/NoticeDetail?board_no=" + board_no;
	}
</script>

<<<<<<< HEAD
    <section class="ftco-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 ftco-animate"  style="flex:100%; max-width:100%;">
            <h2 class="mb-3">It is a long established fact a reader be distracted</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis, eius mollitia suscipit, quisquam doloremque distinctio perferendis et doloribus unde architecto optio laboriosam porro adipisci sapiente officiis nemo accusamus ad praesentium? Esse minima nisi et. Dolore perferendis, enim praesentium omnis, iste doloremque quia officia optio deserunt molestiae voluptates soluta architecto tempora.</p>
            <p>
              <img src="resources/images/image_3.jpg" alt="" class="img-fluid">
            </p>
            <p>Molestiae cupiditate inventore animi, maxime sapiente optio, illo est nemo veritatis repellat sunt doloribus nesciunt! Minima laborum magni reiciendis qui voluptate quisquam voluptatem soluta illo eum ullam incidunt rem assumenda eveniet eaque sequi deleniti tenetur dolore amet fugit perspiciatis ipsa, odit. Nesciunt dolor minima esse vero ut ea, repudiandae suscipit!</p>
            <h2 class="mb-3 mt-5">#2. Creative WordPress Themes</h2>
            <p>Temporibus ad error suscipit exercitationem hic molestiae totam obcaecati rerum, eius aut, in. Exercitationem atque quidem tempora maiores ex architecto voluptatum aut officia doloremque. Error dolore voluptas, omnis molestias odio dignissimos culpa ex earum nisi consequatur quos odit quasi repellat qui officiis reiciendis incidunt hic non? Debitis commodi aut, adipisci.</p>
            <p>
              <img src="resources/images/image_4.jpg" alt="" class="img-fluid">
            </p>
            <p>Quisquam esse aliquam fuga distinctio, quidem delectus veritatis reiciendis. Nihil explicabo quod, est eos ipsum. Unde aut non tenetur tempore, nisi culpa voluptate maiores officiis quis vel ab consectetur suscipit veritatis nulla quos quia aspernatur perferendis, libero sint. Error, velit, porro. Deserunt minus, quibusdam iste enim veniam, modi rem maiores.</p>
            <p>Odit voluptatibus, eveniet vel nihil cum ullam dolores laborum, quo velit commodi rerum eum quidem pariatur! Quia fuga iste tenetur, ipsa vel nisi in dolorum consequatur, veritatis porro explicabo soluta commodi libero voluptatem similique id quidem? Blanditiis voluptates aperiam non magni. Reprehenderit nobis odit inventore, quia laboriosam harum excepturi ea.</p>
            <p>Adipisci vero culpa, eius nobis soluta. Dolore, maxime ullam ipsam quidem, dolor distinctio similique asperiores voluptas enim, exercitationem ratione aut adipisci modi quod quibusdam iusto, voluptates beatae iure nemo itaque laborum. Consequuntur et pariatur totam fuga eligendi vero dolorum provident. Voluptatibus, veritatis. Beatae numquam nam ab voluptatibus culpa, tenetur recusandae!</p>
            <p>Voluptas dolores dignissimos dolorum temporibus, autem aliquam ducimus at officia adipisci quasi nemo a perspiciatis provident magni laboriosam repudiandae iure iusto commodi debitis est blanditiis alias laborum sint dolore. Dolores, iure, reprehenderit. Error provident, pariatur cupiditate soluta doloremque aut ratione. Harum voluptates mollitia illo minus praesentium, rerum ipsa debitis, inventore?</p>
            <div class="tag-widget post-tag-container mb-5 mt-5">
              <div class="tagcloud">
                <a href="#" class="tag-cloud-link">Life</a>
                <a href="#" class="tag-cloud-link">Sport</a>
                <a href="#" class="tag-cloud-link">Tech</a>
                <a href="#" class="tag-cloud-link">Travel</a>
              </div>
            </div>
            
            <div class="about-author d-flex p-4 bg-light">
              <div class="bio mr-5">
                <img src="resources/images/person_1.jpg" alt="Image placeholder" class="img-fluid mb-4">
              </div>
              <div class="desc">
                <h3>George Washington</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
              </div>
            </div>
=======
<body data-spy="scroll" data-target=".site-navbar-target"
	data-offset="300">

	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('resources/images/bg_4.jpg');"
		data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text align-items-end justify-content-start">
			<div class="col-md-9 ftco-animate pb-4">
				<h1 class="mb-3 bread">Notice</h1>
				<p class="breadcrumbs">
					<span class="mr-2"><a href="../">Home <i
							class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a
						href="../Notice">Notice <i class="ion-ios-arrow-forward"></i></a></span>
					<span>Notice Detail<i class="ion-ios-arrow-forward"></i></span>
				</p>
			</div>
		</div>
	</div>
	</section>

	<section class="ftco-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 ftco-animate">
				<!-- 제목 -->
				<h2 class="mb-3">${detail.board_title }</h2>

				<!-- 내용 -->
				<h1 class="mb-3">${detail.board_content }</h1>
				<button onclick = "contentWithline('${detail.board_content }')">asdasd</button>
				<%--             <textarea readonly="readonly">${detail.board_content }</textarea> --%>
				<!--             <p> -->
				<!--               <img src="resources/images/image_3.jpg" alt="" class="img-fluid"> -->
				<!--             </p> -->

				<!--  -->
				<div class="tag-widget post-tag-container mb-5 mt-5">
					<div class="tagcloud">
						<a href="../NoticeModify?board_no=${detail.board_no}"
							class="tag-cloud-link">MODIFY</a> <a
							href="../NoticeDelete?board_no=${detail.board_no}"
							class="tag-cloud-link">DELETE</a>
					</div>
				</div>

				<!-- 관리자 프로필 -->
				<div class="about-author d-flex p-4 bg-light">
					<div class="bio mr-5">
						<img src="resources/images/person_1.jpg" alt="Image placeholder"
							class="img-fluid mb-4">
					</div>
					<div class="desc">
						<h3>${detail.user_id }</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Ducimus itaque, autem necessitatibus voluptate quod mollitia
							delectus aut, sunt placeat nam vero culpa sapiente consectetur
							similique, inventore eos fugit cupiditate numquam!</p>
					</div>
				</div>

				<div class="pt-5 mt-5">
					<h3 class="mb-5">6 Comments</h3>
					<ul class="comment-list">
						<li class="comment">
							<div class="comment-body">
								<h3>ParkWooongKi</h3>
								<div class="meta">October 03, 2018 at 2:21pm</div>
								<p>안뇽안뇽안안뇽</p>
								
								<p>
									<a href="#" class="reply">수정하기</a>
									<a href="#" class="reply">삭제하기</a>
								</p>
							</div>
						</li>
					</ul>
				</div>
>>>>>>> refs/remotes/origin/Notice


				<br>
				<br>
				<br>
				<br>
				<br>
				<br>
				<br>

<!-- 				<div class="pt-5 mt-5"> -->
<!-- 					<h3 class="mb-5">6 Comments</h3> -->
<!-- 					<ul class="comment-list"> -->
<!-- 						<li class="comment"> -->
<!-- 							<div class="vcard bio"> -->
<!-- 								<img src="resources/images/person_1.jpg" alt="Image placeholder"> -->
<!-- 							</div> -->
<!-- 							<div class="comment-body"> -->
<!-- 								<h3>John Doe</h3> -->
<!-- 								<div class="meta">October 03, 2018 at 2:21pm</div> -->
<!-- 								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. -->
<!-- 									Pariatur quidem laborum necessitatibus, ipsam impedit vitae -->
<!-- 									autem, eum officia, fugiat saepe enim sapiente iste iure! Quam -->
<!-- 									voluptas earum impedit necessitatibus, nihil?</p> -->
<!-- 								<p> -->
<!-- 									<a href="#" class="reply">Reply</a> -->
<!-- 								</p> -->
<!-- 							</div> -->
<!-- 						</li> -->

<!-- 						<li class="comment"> -->
<!-- 							<div class="vcard bio"> -->
<!-- 								<img src="resources/images/person_1.jpg" alt="Image placeholder"> -->
<!-- 							</div> -->
<!-- 							<div class="comment-body"> -->
<!-- 								<h3>John Doe</h3> -->
<!-- 								<div class="meta">October 03, 2018 at 2:21pm</div> -->
<!-- 								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. -->
<!-- 									Pariatur quidem laborum necessitatibus, ipsam impedit vitae -->
<!-- 									autem, eum officia, fugiat saepe enim sapiente iste iure! Quam -->
<!-- 									voluptas earum impedit necessitatibus, nihil?</p> -->
<!-- 								<p> -->
<!-- 									<a href="#" class="reply">Reply</a> -->
<!-- 								</p> -->
<!-- 							</div> -->

<!-- 							<ul class="children"> -->
<!-- 								<li class="comment"> -->
<!-- 									<div class="vcard bio"> -->
<!-- 										<img src="resources/images/person_1.jpg" -->
<!-- 											alt="Image placeholder"> -->
<!-- 									</div> -->
<!-- 									<div class="comment-body"> -->
<!-- 										<h3>John Doe</h3> -->
<!-- 										<div class="meta">October 03, 2018 at 2:21pm</div> -->
<!-- 										<p>Lorem ipsum dolor sit amet, consectetur adipisicing -->
<!-- 											elit. Pariatur quidem laborum necessitatibus, ipsam impedit -->
<!-- 											vitae autem, eum officia, fugiat saepe enim sapiente iste -->
<!-- 											iure! Quam voluptas earum impedit necessitatibus, nihil?</p> -->
<!-- 										<p> -->
<!-- 											<a href="#" class="reply">Reply</a> -->
<!-- 										</p> -->
<!-- 									</div> -->


<!-- 									<ul class="children"> -->
<!-- 										<li class="comment"> -->
<!-- 											<div class="vcard bio"> -->
<!-- 												<img src="resources/images/person_1.jpg" -->
<!-- 													alt="Image placeholder"> -->
<!-- 											</div> -->
<!-- 											<div class="comment-body"> -->
<!-- 												<h3>John Doe</h3> -->
<!-- 												<div class="meta">October 03, 2018 at 2:21pm</div> -->
<!-- 												<p>Lorem ipsum dolor sit amet, consectetur adipisicing -->
<!-- 													elit. Pariatur quidem laborum necessitatibus, ipsam impedit -->
<!-- 													vitae autem, eum officia, fugiat saepe enim sapiente iste -->
<!-- 													iure! Quam voluptas earum impedit necessitatibus, nihil?</p> -->
<!-- 												<p> -->
<!-- 													<a href="#" class="reply">Reply</a> -->
<!-- 												</p> -->
<!-- 											</div> -->

<!-- 											<ul class="children"> -->
<!-- 												<li class="comment"> -->
<!-- 													<div class="vcard bio"> -->
<!-- 														<img src="resources/images/person_1.jpg" -->
<!-- 															alt="Image placeholder"> -->
<!-- 													</div> -->
<!-- 													<div class="comment-body"> -->
<!-- 														<h3>John Doe</h3> -->
<!-- 														<div class="meta">October 03, 2018 at 2:21pm</div> -->
<!-- 														<p>Lorem ipsum dolor sit amet, consectetur adipisicing -->
<!-- 															elit. Pariatur quidem laborum necessitatibus, ipsam -->
<!-- 															impedit vitae autem, eum officia, fugiat saepe enim -->
<!-- 															sapiente iste iure! Quam voluptas earum impedit -->
<!-- 															necessitatibus, nihil?</p> -->
<!-- 														<p> -->
<!-- 															<a href="#" class="reply">Reply</a> -->
<!-- 														</p> -->
<!-- 													</div> -->
<!-- 												</li> -->
<!-- 											</ul> -->
<!-- 										</li> -->
<!-- 									</ul> -->
<!-- 								</li> -->
<!-- 							</ul> -->
<!-- 						</li> -->

<!-- 						<li class="comment"> -->
<!-- 							<div class="vcard bio"> -->
<!-- 								<img src="resources/images/person_1.jpg" alt="Image placeholder"> -->
<!-- 							</div> -->
<!-- 							<div class="comment-body"> -->
<!-- 								<h3>John Doe</h3> -->
<!-- 								<div class="meta">October 03, 2018 at 2:21pm</div> -->
<!-- 								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. -->
<!-- 									Pariatur quidem laborum necessitatibus, ipsam impedit vitae -->
<!-- 									autem, eum officia, fugiat saepe enim sapiente iste iure! Quam -->
<!-- 									voluptas earum impedit necessitatibus, nihil?</p> -->
<!-- 								<p> -->
<!-- 									<a href="#" class="reply">Reply</a> -->
<!-- 								</p> -->
<!-- 							</div> -->
<!-- 						</li> -->
<!-- 					</ul> -->
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