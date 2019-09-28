<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WorkWise Html Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="resources/css/animate.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/flatpickr.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/line-awesome.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/line-awesome-font-awesome.min.css">
<link href="resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="resources/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/lib/slick/slick.css">
<link rel="stylesheet" type="text/css"
	href="resources/lib/slick/slick-theme.css">
<link rel="stylesheet" type="text/css" href="resources/css/style.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/responsive.css">
</head>

<body>
	<div class="wrapper">

		<%@ include file="Header.jsp"%>

		<section class="cover-sec">
			<img src="resources/images/resources/cover-img.jpg" alt="">			
			<div class="add-pic-box">
				<div class="container">
					<div class="row no-gutters">
						<div class="col-lg-12 col-sm-12">						
						<form method="post" id="ChangeCover" enctype="multipart/form-data">
							<input type="hidden" name="unum" value="${sessionScope.user.unum }">
							<input type="file" name="photoFile" id="coverfile" accept=".gif, .jpg, .png, .jpeg, .bmp" class="coverfile"><label for="coverfile">커버 사진 변경</label>
							<label class="coverfile2">커버 사진 변경2</label>
						</form>
						</div>
					</div>
				</div>
			</div>
		</section>

		<main>
		<div class="main-section">
			<div class="container">
				<div class="main-section-data">
					<div class="row">
						<div class="col-lg-3">
							<div class="main-left-sidebar">
								<div class="user_profile">
									<div class="user-pro-img">
										<img
											src="resources/images/test/${sessionScope.user.user_photo }"
											alt="">
										<div class="add-dp" id="OpenImgUpload">
											<input type="file" id="file"> <label for="file"><i
												class="fas fa-camera"></i></label>
										</div>
									</div>
									<!--user-pro-img end-->
									<div class="user_pro_status">
										<ul class="flw-status">
											<li><span>Following</span> <b>${sessionScope.user.user_following }</b></li>
											<li><span>Followers</span> <b>${sessionScope.user.user_follower }</b></li>
										</ul>
									</div>
									<!--user_pro_status end-->

								</div>
								<!--user_profile end-->
								<div class="suggestions full-width">
									<div class="sd-title">
										<h3>친구 목록 보이게 하기</h3>
										<i class="la la-ellipsis-v"></i>
									</div>
									<!--sd-title end-->
									<div class="suggestions-list">
										<div class="suggestion-usd">
											<img src="resources/images/resources/s1.png" alt="">
											<div class="sgt-text">
												<h4>Jessica William</h4>
												<span>Graphic Designer</span>
											</div>
											<span><i class="la la-plus"></i></span>
										</div>
										<div class="suggestion-usd">
											<img src="resources/images/resources/s2.png" alt="">
											<div class="sgt-text">
												<h4>John Doe</h4>
												<span>PHP Developer</span>
											</div>
											<span><i class="la la-plus"></i></span>
										</div>
										<div class="suggestion-usd">
											<img src="resources/images/resources/s3.png" alt="">
											<div class="sgt-text">
												<h4>Poonam</h4>
												<span>Wordpress Developer</span>
											</div>
											<span><i class="la la-plus"></i></span>
										</div>
										<div class="suggestion-usd">
											<img src="resources/images/resources/s4.png" alt="">
											<div class="sgt-text">
												<h4>Bill Gates</h4>
												<span>C & C++ Developer</span>
											</div>
											<span><i class="la la-plus"></i></span>
										</div>
										<div class="suggestion-usd">
											<img src="resources/images/resources/s5.png" alt="">
											<div class="sgt-text">
												<h4>Jessica William</h4>
												<span>Graphic Designer</span>
											</div>
											<span><i class="la la-plus"></i></span>
										</div>
										<div class="suggestion-usd">
											<img src="resources/images/resources/s6.png" alt="">
											<div class="sgt-text">
												<h4>John Doe</h4>
												<span>PHP Developer</span>
											</div>
											<span><i class="la la-plus"></i></span>
										</div>
										<div class="view-more">
											<a href="#" title="">View More</a>
										</div>
									</div>
									<!--suggestions-list end-->
								</div>
								<!--suggestions end-->
							</div>
							<!--main-left-sidebar end-->
						</div>
						<div class="col-lg-6">
							<div class="main-ws-sec">

								<!--user-tab-sec end-->
								<div class="product-feed-tab current" id="feed-dd">
									<div class="posts-section">
										<!-- 게시글 시작  -->
										<c:forEach items="${board_list }" var="board_list">
											<div class="post-bar">

												<div class="post_topbar">
													<div class="usy-dt">
														<img src="resources/images/test/${board_list.user_photo }"
															alt="" width="50px" height="50px">
														<div class="usy-name">
															<h3>${board_list.writer }</h3>
															<span><img src="resources/images/clock.png" alt="">${board_list.day }</span>
														</div>
													</div>
													<div class="ed-opts">
														<a href="#" title="" class="ed-opts-open"><i
															class="la la-ellipsis-v"></i></a>
														<ul class="ed-options">
															<li><Button type="Button" class="post-job"
																	onclick="BoardUpdate(${board_list.bnum },${board_list.unum },${user.unum })">글수정</Button></li>
															<li><Button type="Button" class="post-job"
																	onclick="BoardDelete(${board_list.bnum },${board_list.unum },${user.unum })">글삭제</Button></li>
														</ul>
													</div>
												</div>
												<div class="epi-sec">
													<c:if test="${board_list.photo!=null }">
														<img src="resources/images/test/${board_list.photo }">
													</c:if>
													<c:if test="${board_list.photo==null }">
														<img src="resources/images/test/null.png">
													</c:if>
												</div>
												<div class="job_descp">
													<p>${board_list.content }</p>

												</div>
												<div class="job-status-bar">
													<ul class="like-com" style="margin-top: 29px">
														<li><a href="#" class="com"><i
																class="fas fa-comment-alt"></i>댓글 갯수</a></li>

													</ul>
													<a href="#" class="com"><i class="fas fa-heart"></i>
														FOLLOW!</a>
												</div>
												<div class="job-status-bar" style="margin-top: 16px"></div>

											</div>
										</c:forEach>
										<!-- 게시글 끝  -->
										<!--process-comm end-->

										<!--posts-section end-->
									</div>
									<!--product-feed-tab end-->
								</div>
								<!--main-ws-sec end-->
							</div>
						</div>
					</div>
					<!-- main-section-data end-->
				</div>
			</div>
			</div>
		</main>

		<%@ include file="Footer.jsp"%>


	</div>
	<!--theme-layout end-->



	<script type="text/javascript" src="resources/js/jquery.min.js"></script>
	<script type="text/javascript" src="resources/js/popper.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/flatpickr.min.js"></script>
	<script type="text/javascript" src="resources/lib/slick/slick.min.js"></script>
	<script type="text/javascript" src="resources/js/script.js"></script>
	<script type="text/javascript"
		src="resources/sns_js/my-profile-feed.js"></script>
		<script>
	    $('.coverfile2').click(function(){
	    	alert("test2");
	    });
	    </script>

</body>
</html>