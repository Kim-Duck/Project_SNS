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
	<%@ include file="Header.jsp"%>
	<div class="wrapper">



		<section class="cover-sec">
			<c:if test="${user_info.user_cover==null }">
				<img src="resources/images/test/null.png" alt="" width="1600px"
					height="400px">
			</c:if>
			<c:if test="${user_info.user_cover!=null }">
				<img src="resources/images/test/${user_info.user_cover }"
					width="1600px" height="400px">
			</c:if>
			<div class="add-pic-box">
				<div class="container">
					<div class="row no-gutters">
						<div class="col-lg-12 col-sm-12">
							<input type="hidden" value="${user_info.unum }" id="user_num">
							<c:if test="${user_info.unum == sessionScope.user.unum }">
								<form id="ChangeCover" name="ChangeCover"
									enctype="multipart/form-data">
									<input type="hidden" id="unum" name="unum"
										value="${sessionScope.user.unum }"> <input type="file"
										name="user_photoFile" id="coverfile"
										accept=".gif, .jpg, .png, .jpeg, .bmp"><label
										for="coverfile">커버 사진 변경</label>
								</form>
							</c:if>
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
										<img src="resources/images/test/${user_info.user_photo }"
											alt="">
										<div class="user-specs">
											<h3>${user_info.user_name }</h3>
										</div>
										<div class="add-dp" id="OpenImgUpload">
											<c:if test="${user_info.unum == sessionScope.user.unum }">
												<form id="ChangePhoto" name="ChangePhoto"
													enctype="multipart/form-data">
													<input type="hidden" id="unum" name="unum"
														value="${sessionScope.user.unum }"> <input
														type="file" name="user_photoFile" id="mainfile"
														accept=".gif, .jpg, .png, .jpeg, .bmp"><label
														for="mainfile"><i class="fas fa-camera"></i></label>
												</form>
											</c:if>

										</div>
									</div>
									<!--user-pro-img end-->
									<div class="user_pro_status">
										<ul class="flw-status">
											<li><span>Following</span> <b>${user_info.user_following }</b></li>
											<li><span>Followers</span> <b>${user_info.user_follower }</b></li>
										</ul>
									</div>
									<!--user_pro_status end-->

								</div>
								<!--user_profile end-->
								<div class="suggestions full-width">
									<div class="sd-title">
										<h3>Friend List</h3>										
									</div>
									<!--sd-title end-->
									<div class="suggestions-list">
										<c:if test="${Friend_List.isEmpty() }">
											<div class="suggestion-usd">
												<img src="resources/images/resources/s1.png" alt="">
												<div class="sgt-text">
													<h4>친구를 추가해주세요</h4>
													<span>ㅜㅜ</span>
												</div>
											</div>
										</c:if>
										<c:forEach items="${Friend_List }" var="Friend_List">
											<div class="suggestion-usd">
												<img src="resources/images/test/${Friend_List.user_photo }"
													alt="" width="35px" height="35px">
												<div class="sgt-text">
													<h4>${Friend_List.user_name }</h4>
													<span>: )</span>
												</div>
											</div>
										</c:forEach>
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
									<div id="boardlist"></div>
										
										<!--process-comm end-->

										<!--posts-section end-->
									</div>
									<!--product-feed-tab end-->
									<div class="post-popup job_post boardupdate">
										<div class="post-project">
											<h3>게시글 수정</h3>
											<div class="post-project-fields">
												<form id="SubmitBoardUpdate" enctype="multipart/form-data">
													<div class="row">
														<div class="col-lg-12">
															<img id="BoardImgPreview3">
														</div>
														<div class="col-lg-12">
															<textarea name="content" id="updateContent"></textarea>
														</div>

														<div class="col-lg-12">
															<input type="file" name="photoFile" placeholder="첨부하기"
																id="boardinputImg3"
																accept=".gif, .jpg, .png, .jpeg, .bmp"> <input
																type="hidden" name="bnum" id="updateBnum"> <input
																type="hidden" name="writer" id="updateWriter"> <input
																type="hidden" name="unum" id="updateUnum">
														</div>

														<div class="col-lg-12">
															<ul>
																<li><button class="active" type="button"
																		id="btnBoardUpdate">수정</button></li>
																<li><a id="btnUpdatePostClose">취소</a></li>
															</ul>
														</div>
													</div>
												</form>
											</div>
											<!--post-project-fields end-->
											<a href="#" title=""><i class="la la-times-circle-o"></i></a>
										</div>
										<!--post-project end-->
									</div>
								</div>

								<!--main-ws-sec end-->
							</div>
						</div>
						<div class="col-lg-3">
							<div class="right-sidebar">
								<div class="widget widget-about">
									<img src="resources/images/index(rightROGO).png" alt="">
									<span>자신의 친구를 찾아보세요~</span>
									<div class="sign_link">
										<form action="/sns/Friend" method="post">
                    					<input type="hidden" name="user_id" value="${sessionScope.user.user_id }">
                    					<Button type="submit" onclick="" style="color: white;">친구페이지</Button>
                    					</form>
									</div>										
									</div>
								</div>
							</div>
							<div class="tags-sec full-width">
									<ul>
										<li><a href="#" title="">Help Center</a></li>
										<li><a href="#" title="">About</a></li>
										<li><a href="#" title="">Privacy Policy</a></li>
										<li><a href="#" title="">Community Guidelines</a></li>
										<li><a href="#" title="">Cookies Policy</a></li>
										<li><a href="#" title="">Career</a></li>
										<li><a href="#" title="">Language</a></li>
										<li><a href="#" title="">Copyright Policy</a></li>
									</ul>
									<div class="cp-sec">
										<img src="resources/images/logo2.png" alt="">
										<p>
											<img src="resources/images/cp.png" alt="">Copyright
											2019
										</p>
									</div>
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
		src="resources/sns_js/my-profile-feed.js?ver=123"></script>


</body>
</html>