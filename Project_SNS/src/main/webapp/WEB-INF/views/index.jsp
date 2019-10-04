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
	href="resources/css/line-awesome.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/line-awesome-font-awesome.min.css">
<link href="resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="resources/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/jquery.mCustomScrollbar.min.css">
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



		<main>
		<div class="main-section">
			<div class="container">
				<div class="main-section-data">
					<div class="row">
						<div class="col-lg-3 col-md-4 pd-left-none no-pd">
							<div class="main-left-sidebar no-margin">
								<div class="user-data full-width">
									<div class="user-profile">
										<div class="username-dt">
											<div class="usr-pic">
												<c:if test="${user_info.user_photo != null }">
												<img src="resources/images/test/${user_info.user_photo}" alt="" width="110px" height="110px">
												</c:if>
												<c:if test="${user_info.user_photo == null }">
												<img src="resources/images/test/null.png" alt="" width="110px" height="110px">
												</c:if>
											</div>
										</div>
										<!--username-dt end-->
										<div class="user-specs">
											<h3>${user_info.user_name }</h3>
										</div>
									</div>
									<!--user-profile end-->
									<ul class="user-fw-status">
										<li>
											<h4>Following</h4> <span>${user_info.user_following }</span>
										</li>
										<li>
											<h4>Followers</h4> <span>${user_info.user_follower }</span>
										</li>

										<li>
											<form name="viewprofile" action="/sns/InfoPage" method="post">
												<input type="hidden" name="user_id"
													value="${sessionScope.user.user_id }">
											</form> <a href="javascript:void(0)" id="viewprofile">View
												Profile</a>
										</li>
									</ul>
								</div>
								<!--user-data end-->

								<!--suggestions end-->
								<div class="tags-sec full-width">
									<ul style="font-size: 14px;">
										<li>COMPANY : SPACE SNS</li>
										<li>ADDRESS : 부산파이낸스센터 402호</li>
										<li></li>
										<li>TEL : 051-753-5600</li>
										<li></li>																				
										<li>E-MAIL : space@space.sns</li>

									</ul>
									<div class="cp-sec">
										<img src="resources/images/index(leftLOGO).png" width="90px"
											height="25px">
										<p>
											<img src="resources/images/cp.png"> Copyright 2019
										</p>
									</div>
								</div>
								<!--tags-sec end-->
							</div>
							<!--main-left-sidebar end-->
						</div>
						<div class="col-lg-6 col-md-8 no-pd">
							<div class="main-ws-sec">
								<div class="post-topbar">

									<input type="text" readonly="readonly"
										placeholder="${sessionScope.user.user_name }님의 생각을 적어주세요."
										style="margin-top: 15px; background-color: transparent; border: 0 solid black; text-align: left; width: 250px; margin-right: 15px;">

									<div class="post-st">
										<ul>
											<li><a class="post-jb active" href="javascript:void(0)"
												id="btnPostMain" style="border-radius: 5px;">나의 생각은?</a></li>
										</ul>
									</div>

									<!--post-st end-->
								</div>
								<!--post-topbar end-->
								<div class="posts-section">
									<!--post-bar end-->
									<!-- <div class="top-profiles">
										<div class="pf-hd">
											<h3>Top Followers</h3>
										</div>
										<div class="profiles-slider">
											<div class="user-profy">
												<img src="resources/images/resources/user1.png" alt="">
												<h3>John Doe</h3>
												<span>Graphic Designer</span>
												<ul>
													<li><a href="#" title="" class="followw">Follow</a></li>
													<li><a href="#" title="" class="envlp"><img
															src="resources/images/envelop.png" alt=""></a></li>
													<li><a href="#" title="" class="hire">hire</a></li>
												</ul>
												<a href="#" title="">View Profile</a>
											</div>
											user-profy end
											<div class="user-profy">
												<img src="resources/images/resources/user2.png" alt="">
												<h3>John Doe</h3>
												<span>Graphic Designer</span>
												<ul>
													<li><a href="#" title="" class="followw">Follow</a></li>
													<li><a href="#" title="" class="envlp"><img
															src="resources/images/envelop.png" alt=""></a></li>
													<li><a href="#" title="" class="hire">hire</a></li>
												</ul>
												<a href="#" title="">View Profile</a>
											</div>
											user-profy end
											<div class="user-profy">
												<img src="resources/images/resources/user3.png" alt="">
												<h3>John Doe</h3>
												<span>Graphic Designer</span>
												<ul>
													<li><a href="#" title="" class="followw">Follow</a></li>
													<li><a href="#" title="" class="envlp"><img
															src="resources/images/envelop.png" alt=""></a></li>
													<li><a href="#" title="" class="hire">hire</a></li>
												</ul>
												<a href="#" title="">View Profile</a>
											</div>
											user-profy end
											<div class="user-profy">
												<img src="resources/images/resources/user1.png" alt="">
												<h3>John Doe</h3>
												<span>Graphic Designer</span>
												<ul>
													<li><a href="#" title="" class="followw">Follow</a></li>
													<li><a href="#" title="" class="envlp"><img
															src="resources/images/envelop.png" alt=""></a></li>
													<li><a href="#" title="" class="hire">hire</a></li>
												</ul>
												<a href="#" title="">View Profile</a>
											</div>
											user-profy end
											<div class="user-profy">
												<img src="resources/images/resources/user2.png" alt="">
												<h3>John Doe</h3>
												<span>Graphic Designer</span>
												<ul>
													<li><a href="#" title="" class="followw">Follow</a></li>
													<li><a href="#" title="" class="envlp"><img
															src="resources/images/envelop.png" alt=""></a></li>
													<li><a href="#" title="" class="hire">hire</a></li>
												</ul>
												<a href="#" title="">View Profile</a>
											</div>
											user-profy end
											<div class="user-profy">
												<img src="resources/images/resources/user3.png" alt="">
												<h3>John Doe</h3>
												<span>Graphic Designer</span>
												<ul>
													<li><a href="#" title="" class="followw">Follow</a></li>
													<li><a href="#" title="" class="envlp"><img
															src="resources/images/envelop.png" alt=""></a></li>
													<li><a href="#" title="" class="hire">hire</a></li>
												</ul>
												<a href="#" title="">View Profile</a>
											</div>
											user-profy end
										</div>
										profiles-slider end
									</div> -->
									<div id="boardlist"></div>
									<!--top-profiles end-->
									<!--post-bar end-->
									<!--process-comm end-->
								</div>
								<!--posts-section end-->
							</div>
							<!--main-ws-sec end-->
						</div>
						<div class="col-lg-3 pd-right-none no-pd">
							<div class="right-sidebar">
								<div class="widget widget-about">
									<img src="resources/images/index(rightROGO).png" alt="">
									<span>자신의 친구를 찾아보세요~</span>
									<div class="sign_link">
										<form action="/sns/Friend" method="post">
											<input type="hidden" name="user_id"
												value="${sessionScope.user.user_id }">
											<Button type="submit" style="color: white; border-radius: 5px; width: 130px;">친구페이지</Button>
										</form>
									</div>
								</div>
								<!--widget-about end-->
								<div class="tags-sec full-width">
									<ul style="font-size: 14px;">
										<li><a href="http://www.naver.com" target="_blank">#네이버</a></li>
										<li><a href="http://www.google.com" target="_blank">#구글</a></li>
										<li><a href="http://www.daum.net" target="_blank">#다음</a></li>
										<br>
										<br>
										<li>만든이</li>
										<br> 권성규 &nbsp; 김규희 &nbsp;&nbsp;송영철&nbsp;&nbsp; 김동민
										<br>
										<br>
									</ul>
									<div class="cp-sec">
										<img src="resources/images/index(leftLOGO).png" width="90px"
											height="25px">
										<p>
											<img src="resources/images/cp.png"> Copyright 2019
										</p>
									</div>
								</div>
								<!--tags-sec end-->
								<!--widget-jobs end-->

								<!--widget-jobs end-->

							</div>
							<!--right-sidebar end-->
						</div>

					</div>

				</div>
				<!-- main-section-data end-->
			</div>
		</div>
		</main>





		<div class="post-popup pst-pj">
			<div class="post-project">
				<h3>Post a project</h3>
				<div class="post-project-fields">
					<form>
						<div class="row">
							<div class="col-lg-12">
								<input type="text" name="title" placeholder="Title">
							</div>
							<div class="col-lg-12">
								<div class="inp-field">
									<select>
										<option>Category</option>
										<option>Category 1</option>
										<option>Category 2</option>
										<option>Category 3</option>
									</select>
								</div>
							</div>
							<div class="col-lg-12">
								<input type="text" name="skills" placeholder="Skills">
							</div>
							<div class="col-lg-12">
								<div class="price-sec">
									<div class="price-br">
										<input type="text" name="price1" placeholder="Price">
										<i class="la la-dollar"></i>
									</div>
									<span>To</span>
									<div class="price-br">
										<input type="text" name="price1" placeholder="Price">
										<i class="la la-dollar"></i>
									</div>
								</div>
							</div>
							<div class="col-lg-12">
								<textarea name="description" placeholder="Description"></textarea>
							</div>

							<div class="col-lg-12">

								<ul>
									<li><button class="active" type="submit" value="post">Post</button></li>
									<li><a href="#" title="">Cancel</a></li>
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
		<!--post-project-popup end-->



		<div class="post-popup job_post boardupdate">
			<div class="post-project">
				<h3>게시글 수정</h3>
				<div class="post-project-fields">
					<form id="SubmitBoardUpdate" enctype="multipart/form-data">
						<div class="row">
							<div class="col-lg-12">
								<img id="BoardImgPreview2">
							</div>
							<div class="col-lg-12">
								<textarea name="content" id="updateContent"></textarea>
							</div>

							<div class="col-lg-12">
								<input type="file" name="photoFile" placeholder="첨부하기"
									id="boardinputImg2" accept=".gif, .jpg, .png, .jpeg, .bmp">
								<input type="hidden" name="bnum" id="updateBnum"> <input
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
		<div class="post-popup job_post post-main">
			<div class="post-project">
				<h3>게시글 쓰기</h3>
				<div class="post-project-fields">
					<form id="SubmitBoardInsert" enctype="multipart/form-data">
						<div class="row">
							<div class="col-lg-12">
								<img id="BoardImgPreview">
							</div>

							<div class="col-lg-12">

								<textarea name="content" placeholder="나의 생각을 적어주세요^^"></textarea>

							</div>

							<div class="col-lg-12">
								<input type="file" name="photoFile" placeholder="첨부하기"
									id="boardinputImg" accept=".gif, .jpg, .png, .jpeg, .bmp">
								<input type="hidden" name="writer"
									value="${sessionScope.user.user_name }"> <input
									type="hidden" name="unum" value="${sessionScope.user.unum }">
							</div>

							<div class="col-lg-12">
								<ul>
									<li><button class="active" type="button"
											id="btnBoardInsert">게시</button></li>
									<li><a id="btnPostClose">취소</a></li>
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
		<!--post-project-popup end-->

	</div>
	<!--theme-layout end-->
	<script type="text/javascript" src="resources/js/jquery.min.js"></script>	
	<script type="text/javascript" src="resources/js/popper.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/jquery.mCustomScrollbar.js"></script>
	<script type="text/javascript" src="resources/lib/slick/slick.min.js"></script>
	<script type="text/javascript" src="resources/js/scrollbar.js"></script>
	<script type="text/javascript" src="resources/js/script.js"></script>
	<script type="text/javascript" src="resources/sns_js/index.js?ver=123"></script>

</body>
</html>