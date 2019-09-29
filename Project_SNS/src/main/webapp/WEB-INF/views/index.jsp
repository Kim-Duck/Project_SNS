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
												<img
													src="resources/images/test/${sessionScope.user.user_photo}"
													alt="" width="110px" height="110px">
											</div>
										</div>
										<!--username-dt end-->
										<div class="user-specs">
											<h3>${sessionScope.user.user_name }</h3>
										</div>
									</div>
									<!--user-profile end-->
									<ul class="user-fw-status">
										<li>
											<h4>Following</h4> <span>${sessionScope.user.user_following }</span>
										</li>
										<li>
											<h4>Followers</h4> <span>${sessionScope.user.user_follower }</span>
										</li>
										
										<li>
										<form name="viewprofile" action="/sns/Mypage" method="post">
										<input type="hidden" name="user_id" value="${sessionScope.user.user_id }">										
										</form>
										<a href="javascript:void(0)" id="viewprofile">View Profile</a>
										</li>
									</ul>
								</div>
								<!--user-data end-->
								
								<!--suggestions end-->
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
								<!--tags-sec end-->
							</div>
							<!--main-left-sidebar end-->
						</div>
						<div class="col-lg-6 col-md-8 no-pd">
							<div class="main-ws-sec">
								<div class="post-topbar">
									<div class="post-st">
										<ul>
											<li><a class="post-jb active" href="#" title="">나의
													생각은?</a></li>
										</ul>
									</div>
									<!--post-st end-->
								</div>
								<!--post-topbar end-->
								<div class="posts-section">

									<!--post-bar end-->
									<div class="top-profiles">
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
											<!--user-profy end-->
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
											<!--user-profy end-->
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
											<!--user-profy end-->
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
											<!--user-profy end-->
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
											<!--user-profy end-->
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
											<!--user-profy end-->
										</div>
										<!--profiles-slider end-->
									</div>
									<!--top-profiles end-->
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

									<!--post-bar end-->

									<div class="posty">
										<div class="post-bar no-margin">
											<div class="post_topbar">
												<div class="usy-dt">
													<img src="resources/images/resources/us-pc2.png" alt="">
													<div class="usy-name">
														<h3>John Doe</h3>
														<span><img src="resources/images/clock.png" alt="">3
															min ago</span>
													</div>
												</div>
												<div class="ed-opts">
													<a href="#" title="" class="ed-opts-open"><i
														class="la la-ellipsis-v"></i></a>
													<ul class="ed-options">
														<li><a href="#" title="">Edit Post</a></li>
														<li><a href="#" title="">Unsaved</a></li>
														<li><a href="#" title="">Unbid</a></li>
														<li><a href="#" title="">Close</a></li>
														<li><a href="#" title="">Hide</a></li>
													</ul>
												</div>
											</div>
											<div class="epi-sec">
												<ul class="descp">
													<li><img src="resources/images/icon8.png" alt=""><span>Epic
															Coder</span></li>
													<li><img src="resources/images/icon9.png" alt=""><span>India</span></li>
												</ul>
												<ul class="bk-links">
													<li><a href="#" title=""><i class="la la-bookmark"></i></a></li>
													<li><a href="#" title=""><i class="la la-envelope"></i></a></li>
												</ul>
											</div>
											<div class="job_descp">
												<h3>Senior Wordpress Developer</h3>
												<ul class="job-dt">
													<li><a href="#" title="">Full Time</a></li>
													<li><span>$30 / hr</span></li>
												</ul>
												<p>
													Lorem ipsum dolor sit amet, consectetur adipiscing elit.
													Aliquam luctus hendrerit metus, ut ullamcorper quam finibus
													at. Etiam id magna sit amet... <a href="#" title="">view
														more</a>
												</p>
												<ul class="skill-tags">
													<li><a href="#" title="">HTML</a></li>
													<li><a href="#" title="">PHP</a></li>
													<li><a href="#" title="">CSS</a></li>
													<li><a href="#" title="">Javascript</a></li>
													<li><a href="#" title="">Wordpress</a></li>
												</ul>
											</div>
											<div class="job-status-bar">
												<ul class="like-com">
													<li><a href="#"><i class="fas fa-heart"></i> Like</a>
														<img src="resources/images/liked-img.png" alt=""> <span>25</span>
													</li>
													<li><a href="#" class="com"><i
															class="fas fa-comment-alt"></i> Comment 15</a></li>
												</ul>
												<a href="#"><i class="fas fa-eye"></i>Views 50</a>
											</div>
										</div>
										<!--post-bar end-->
										<div class="comment-section">
											<a href="#" class="plus-ic"> <i class="la la-plus"></i>
											</a>
											<div class="comment-sec">
												<ul>
													<li>
														<div class="comment-list">
															<div class="bg-img">
																<img src="resources/images/resources/bg-img1.png" alt="">
															</div>
															<div class="comment">
																<h3>John Doe</h3>
																<span><img src="resources/images/clock.png"
																	alt=""> 3 min ago</span>
																<p>Lorem ipsum dolor sit amet,</p>
																<a href="#" title="" class="active"><i
																	class="fa fa-reply-all"></i>Reply</a>
															</div>
														</div> <!--comment-list end-->
														<ul>
															<li>
																<div class="comment-list">
																	<div class="bg-img">
																		<img src="resources/images/resources/bg-img2.png"
																			alt="">
																	</div>
																	<div class="comment">
																		<h3>John Doe</h3>
																		<span><img src="resources/images/clock.png"
																			alt=""> 3 min ago</span>
																		<p>Hi John</p>
																		<a href="#" title=""><i class="fa fa-reply-all"></i>Reply</a>
																	</div>
																</div> <!--comment-list end-->
															</li>
														</ul>
													</li>
													<li>
														<div class="comment-list">
															<div class="bg-img">
																<img src="resources/images/resources/bg-img3.png" alt="">
															</div>
															<div class="comment">
																<h3>John Doe</h3>
																<span><img src="resources/images/clock.png"
																	alt=""> 3 min ago</span>
																<p>Lorem ipsum dolor sit amet, consectetur
																	adipiscing elit. Aliquam luctus hendrerit metus, ut
																	ullamcorper quam finibus at.</p>
																<a href="#" title=""><i class="fa fa-reply-all"></i>Reply</a>
															</div>
														</div> <!--comment-list end-->
													</li>
												</ul>
											</div>
											<!--comment-sec end-->
											<div class="post-comment">
												<div class="cm_img">
													<img src="resources/images/resources/bg-img4.png" alt="">
												</div>
												<div class="comment_box">
													<form>
														<input type="text" placeholder="Post a comment">
														<button type="submit">Send</button>
													</form>
												</div>
											</div>
											<!--post-comment end-->
										</div>
										<!--comment-section end-->
									</div>
									<!--posty end-->
									<div class="process-comm">
										<!-- 										<div class="spinner">
											<div class="bounce1"></div>
											<div class="bounce2"></div>
											<div class="bounce3"></div>
										</div> -->
									</div>
									<!--process-comm end-->
									<div id="scrolltest"></div>
									<div id="scrollscripttest"></div>
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
                    					<input type="hidden" name="user_id" value="${sessionScope.user.user_id }">
                    					<Button type="submit" onclick="" style="color: white;">친구페이지</Button>
                    					</form>
									</div>
								</div> 
								<!--widget-about end-->
								
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
		<div class="post-popup job_post">
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



		<div class="chatbox-list">
			<div class="chatbox">
				<div class="chat-mg">
					<a href="#" title=""><img
						src="resources/images/resources/usr-img1.png" alt=""></a> <span>2</span>
				</div>
				<div class="conversation-box">
					<div class="con-title mg-3">
						<div class="chat-user-info">
							<img src="resources/images/resources/us-img1.png" alt="">
							<h3>
								John Doe <span class="status-info"></span>
							</h3>
						</div>
						<div class="st-icons">
							<a href="#" title=""><i class="la la-cog"></i></a> <a href="#"
								title="" class="close-chat"><i class="la la-minus-square"></i></a>
							<a href="#" title="" class="close-chat"><i
								class="la la-close"></i></a>
						</div>
					</div>
					<div class="chat-hist mCustomScrollbar" data-mcs-theme="dark">
						<div class="chat-msg">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor
								eget felis porttitor.</p>
							<span>Sat, Aug 23, 1:10 PM</span>
						</div>
						<div class="date-nd">
							<span>Sunday, August 24</span>
						</div>
						<div class="chat-msg st2">
							<p>Cras ultricies ligula.</p>
							<span>5 minutes ago</span>
						</div>
						<div class="chat-msg">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor
								eget felis porttitor.</p>
							<span>Sat, Aug 23, 1:10 PM</span>
						</div>
					</div>
					<!--chat-list end-->
					<div class="typing-msg">
						<form>
							<textarea placeholder="Type a message here"></textarea>
							<button type="submit">
								<i class="fa fa-send"></i>
							</button>
						</form>
						<ul class="ft-options">
							<li><a href="#" title=""><i class="la la-smile-o"></i></a></li>
							<li><a href="#" title=""><i class="la la-camera"></i></a></li>
							<li><a href="#" title=""><i class="fa fa-paperclip"></i></a></li>
						</ul>
					</div>
					<!--typing-msg end-->
				</div>
				<!--chat-history end-->
			</div>
			<div class="chatbox">
				<div class="chat-mg">
					<a href="#" title=""><img
						src="resources/images/resources/usr-img2.png" alt=""></a>
				</div>
				<div class="conversation-box">
					<div class="con-title mg-3">
						<div class="chat-user-info">
							<img src="resources/images/resources/us-img1.png" alt="">
							<h3>
								John Doe <span class="status-info"></span>
							</h3>
						</div>
						<div class="st-icons">
							<a href="#" title=""><i class="la la-cog"></i></a> <a href="#"
								title="" class="close-chat"><i class="la la-minus-square"></i></a>
							<a href="#" title="" class="close-chat"><i
								class="la la-close"></i></a>
						</div>
					</div>
					<div class="chat-hist mCustomScrollbar" data-mcs-theme="dark">
						<div class="chat-msg">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor
								eget felis porttitor.</p>
							<span>Sat, Aug 23, 1:10 PM</span>
						</div>
						<div class="date-nd">
							<span>Sunday, August 24</span>
						</div>
						<div class="chat-msg st2">
							<p>Cras ultricies ligula.</p>
							<span>5 minutes ago</span>
						</div>
						<div class="chat-msg">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Donec rutrum congue leo eget malesuada. Vivamus suscipit tortor
								eget felis porttitor.</p>
							<span>Sat, Aug 23, 1:10 PM</span>
						</div>
					</div>
					<!--chat-list end-->
					<div class="typing-msg">
						<form>
							<textarea placeholder="Type a message here"></textarea>
							<button type="submit">
								<i class="fa fa-send"></i>
							</button>
						</form>
						<ul class="ft-options">
							<li><a href="#" title=""><i class="la la-smile-o"></i></a></li>
							<li><a href="#" title=""><i class="la la-camera"></i></a></li>
							<li><a href="#" title=""><i class="fa fa-paperclip"></i></a></li>
						</ul>
					</div>
					<!--typing-msg end-->
				</div>
				<!--chat-history end-->
			</div>
			<div class="chatbox">
				<div class="chat-mg bx">
					<a href="#" title=""><img src="resources/images/chat.png"
						alt=""></a> <span>2</span>
				</div>
				<div class="conversation-box">
					<div class="con-title">
						<h3>Messages</h3>
						<a href="#" title="" class="close-chat"><i
							class="la la-minus-square"></i></a>
					</div>
					<div class="chat-list">
						<div class="conv-list active">
							<div class="usrr-pic">
								<img src="resources/images/resources/usy1.png" alt=""> <span
									class="active-status activee"></span>
							</div>
							<div class="usy-info">
								<h3>John Doe</h3>
								<span>Lorem ipsum dolor <img
									src="resources/images/smley.png" alt=""></span>
							</div>
							<div class="ct-time">
								<span>1:55 PM</span>
							</div>
							<span class="msg-numbers">2</span>
						</div>
						<div class="conv-list">
							<div class="usrr-pic">
								<img src="resources/images/resources/usy2.png" alt="">
							</div>
							<div class="usy-info">
								<h3>John Doe</h3>
								<span>Lorem ipsum dolor <img
									src="resources/images/smley.png" alt=""></span>
							</div>
							<div class="ct-time">
								<span>11:39 PM</span>
							</div>
						</div>
						<div class="conv-list">
							<div class="usrr-pic">
								<img src="resources/images/resources/usy3.png" alt="">
							</div>
							<div class="usy-info">
								<h3>John Doe</h3>
								<span>Lorem ipsum dolor <img
									src="resources/images/smley.png" alt=""></span>
							</div>
							<div class="ct-time">
								<span>0.28 AM</span>
							</div>
						</div>
					</div>
					<!--chat-list end-->
				</div>
				<!--conversation-box end-->
			</div>
		</div>
		<!--chatbox-list end-->

	</div>
	<!--theme-layout end-->



	<script type="text/javascript" src="resources/js/jquery.min.js"></script>
	<script type="text/javascript" src="resources/js/popper.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="resources/js/jquery.mCustomScrollbar.js"></script>
	<script type="text/javascript" src="resources/lib/slick/slick.min.js"></script>
	<script type="text/javascript" src="resources/js/scrollbar.js"></script>
	<script type="text/javascript" src="resources/js/script.js"></script>
	
	<script type="text/javascript" src="resources/sns_js/index.js"></script>

</body>
</html>