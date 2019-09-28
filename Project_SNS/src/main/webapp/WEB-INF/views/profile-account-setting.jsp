<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

	<div class="wrapper">

		<%@ include file="Header.jsp"%>


		<section class="profile-account-setting">
			<div class="container">
				<div class="account-tabs-setting">
					<div class="row">
						<div class="col-lg-3">

							<div class="acc-leftbar">

								<div class="nav nav-tabs" id="nav-tab" role="tablist">
									<a class="nav-item nav-link active" id="nav-acc-tab"
										data-toggle="tab" href="#nav-acc" role="tab"
										aria-controls="nav-acc" aria-selected="true"><i
										class="la la-cogs"></i>개 인 정 보 변 경</a> <a
										class="nav-item nav-link" id="nav-privcy-tab"
										data-toggle="tab" href="#privcy" role="tab"
										aria-controls="privacy" aria-selected="false"><i
										class="fa fa-group"></i>친 구 요 청</a> <a class="nav-item nav-link"
										id="nav-notification-tab" data-toggle="tab"
										href="#nav-notification" role="tab"
										aria-controls="nav-notification" aria-selected="false"><i
										class="fa fa-flash"></i> 알 림</a> <a class="nav-item nav-link"
										id="nav-status-tab" data-toggle="tab" href="#nav-status"
										role="tab" aria-controls="nav-status" aria-selected="false"><i
										class="fa fa-line-chart"></i>계 정 탈 퇴</a>




								</div>
							</div>
							<!--acc-leftbar end-->
						</div>
<div class="col-lg-9">
							<div class="tab-content" id="nav-tabContent">
								<div class="tab-pane fade show active" id="nav-acc"
									role="tabpanel" aria-labelledby="nav-acc-tab" align="center">
									<div class="acc-setting">


										<h3 style="margin-top: 10px; font-size: 50px;">
											<i class="far fa-address-card">&nbsp;</i><span>개 인 정 보
												변 경</span>
										</h3>



										<form id="SubmitUserUpdate">

											<input type="hidden" id="unum" name=unum
												value="${user.unum }">
											<div class="notbar">

												<h4 style="margin-bottom: 10px;">
													<span>아 이 디</span> <i class="la la-user"
														style="font-size: 25px; padding-left: 70px;">&nbsp;</i> <input
														type="text" id="user_id" name="user_id"
														value="${user.user_id }" readonly
														style="height: 35px; width: 200px; border-radius: 2px; border-radius: 5px;" />
												</h4>


												<!-- 아이디 값 가져오기 -->
											</div>
											<div class="notbar">
												<h4 style="margin-bottom: 10px;">
													<span>이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 름</span> <i
														class="la la-globe"
														style="font-size: 25px; padding-left: 70px; color: black;">&nbsp;</i>
													<input type="text" id="user_name" name="user_name"
														value="${user.user_name }"
														style="height: 35px; width: 200px; border-radius: 2px; border-radius: 5px;" />
												</h4>
												<!-- 이름 적는곳 -->
											</div>

											<div class="notbar">
												<h4 style="margin-bottom: 10px;">
													<span>전&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 화</span> <i
														class="fas fa-phone"
														style="font-size: 20px; padding-left: 70px;">&nbsp;</i> <input
														type="text" id="user_phone" name="user_phone"
														value="${user.user_phone }"
														style="height: 35px; width: 200px; border-radius: 2px; border-radius: 5px;" />
												</h4>
												<!-- 전화 적는곳 -->
											</div>
											<div class="notbar">
												<h4 style="margin-bottom: 10px;">
													<span>이 메 일</span> <i class="fas fa-envelope"
														style="font-size: 20px; padding-left: 70px;">&nbsp;</i> <input
														type="text" id="user_email" name="user_email"
														value="${user.user_email }"
														style="height: 35px; width: 200px; border-radius: 2px; border-radius: 5px;" />
												</h4>
												<!-- 이메일 적는곳 -->
											</div>
											<div class="notbar">

												<h4 style="margin-bottom: 10px;">
													<span>새 &nbsp;&nbsp;&nbsp; &nbsp;비&nbsp; 밀&nbsp; 번
														&nbsp;호&nbsp;&nbsp;&nbsp;</span> <i class="la la-lock"
														style="font-size: 25px; padding-left: 70px;">&nbsp;</i> <input
														type="password" id="user_pwd" name="user_pwd"
														style="height: 35px; width: 200px; border-radius: 2px; border-radius: 5px;" />
												</h4>  
												<!-- 새로운 비밀번호 적는곳 ->값 가져오면 안됨 -->
											</div>
											<div class="notbar">
												<h4 style="margin-bottom: 10px;">
													<span>새 비 밀 번 호 확 인</span> <i class="la la-lock"
														style="font-size: 25px; padding-left: 70px;">&nbsp;</i> <input
														type="password" id="repeat_user_pwd"
														style="height: 35px; width: 200px; border-radius: 2px; border-radius: 5px;" " />
												</h4>
												<!-- 비밀번호 확인 적는곳 -->
											</div>
											<div class="save-stngs">
												<ul>
													<li><button type="button" id="btnUserUpdate">변
															경</button></li>
													<li><button type="reset">취 소</button></li>
												</ul>
											</div>
											<!--save-stngs end-->
										</form>
									</div>
									<!--acc-setting end-->
								</div>
								
<!--  계정 탈퇴 부분 -->
								<div class="tab-pane fade" id="nav-status" role="tabpanel"
									aria-labelledby="nav-status-tab">
									<div class="acc-setting">
										<h3 align="center">계 정 탈 퇴</h3>
										<form id="SubmitUserDelete">
										
										<input type="hidden" id="unum" name=unum value="${user.unum }">
										
										<h3 align="center" style="color: red;">※중요한 내용이므로 각 항목 별로 주의 깊게 읽어주세요※</h3>
										<div class="profile-bx-details">
											<div class="row">
												<div class="col-lg-3 col-md-6 col-sm-12">
													<div class="profile-bx-info">
														<div class="pro-bx">
															<img src="resources/images/setting1.png" alt="">
															<div class="bx-info">
																<h3 align="center">Service</h3>

															</div>
															<!--bx-info end-->
														</div>
														<!--pro-bx end-->
														<p>1. &nbsp; &nbsp; 네이버의 다양한 서비스를 더 이상 제공 받을 수 없습니다.</p>
													</div>
													<!--profile-bx-info end-->
												</div>
												<div class="col-lg-3 col-md-6 col-sm-12">
													<div class="profile-bx-info">
														<div class="pro-bx">
															<img src="resources/images/setting2.png" alt="">
															<div class="bx-info">
																<h3>Delete</h3>
																  
															</div>
															<!--bx-info end-->
														</div>
														<!--pro-bx end-->
														<p>2. &nbsp;&nbsp; 탈퇴 후 모든 개인 정보는 자동으로 삭제 됩니다.</p>
													</div>
													<!--profile-bx-info end-->
												</div>
												<div class="col-lg-3 col-md-6 col-sm-12">
													<div class="profile-bx-info">
														<div class="pro-bx">
															<img src="resources/images/setting3.png" alt="">
															<div class="bx-info">
																<h3>Wait</h3>
															 
															</div>
															<!--bx-info end-->
														</div>
														<!--pro-bx end-->
														<p>3. &nbsp;&nbsp;탈퇴 후 동일한 정보로 가입 시 24시간의 대기시간이 존재합니다.</p>
													</div>
													<!--profile-bx-info end-->
												</div>
												<div class="col-lg-3 col-md-6 col-sm-12">
													<div class="profile-bx-info">
														<div class="pro-bx">
															<img src="resources/images/setting4.png" alt="">
															<div class="bx-info">
																<h3>Check</h3>
																 
															</div>
															<!--bx-info end-->
														</div>
														<!--pro-bx end-->
														<p style="color: red;">다시 한번 이전의 주의사항들을 확인해 주세요</p>
													</div>
													<!--profile-bx-info end-->
												</div>
											</div>
										</div>
										<!--profile-bx-details end-->
										<p align="right"><input type="button" id="btnUserDelete" value="탈 퇴"
										 style ="align-content:center; width:100px; margin-right: 20px; border:none; border-radius:10px; 
										 font-size: 23px;
										 padding:15px 0; background-color: #f8585b; color: #fff"></p>
										 <br><br>
										<div class="pro-work-status">
											<!-- <h4>Work Status  -  Last Months Working Status</h4> -->
										</div>
										<!--pro-work-status end-->
										</form>
									</div>
									<!--acc-setting end-->
								</div>
<!-- 알림 기능 부분 -->
                <div class="tab-pane fade" id="nav-notification" role="tabpanel"
                  aria-labelledby="nav-notification-tab">
                  <div class="acc-setting">
                    <h3>Notifications</h3>
                    <div class="notifications-list">
                      <div class="notfication-details">
                        <div class="noty-user-img">
                          <img src="resources/images/resources/ny-img1.png" alt="">
                        </div>
                        <div class="notification-info">
                          <h3>
                            <a href="#" title="">Jassica William</a> Comment on your
                            project.
                          </h3>
                          <span>2 min ago</span>
                        </div>
                        <!--notification-info -->
                      </div>
                      <!--notfication-details end-->
                      <div class="notfication-details">
                        <div class="noty-user-img">
                          <img src="resources/images/resources/ny-img2.png" alt="">
                        </div>
                        <div class="notification-info">
                          <h3>
                            <a href="#" title="">Poonam Verma</a> Bid on your Latest
                            project.
                          </h3>
                          <span>2 min ago</span>
                        </div>
                        <!--notification-info -->
                      </div>
                      <!--notfication-details end-->
                      <div class="notfication-details">
                        <div class="noty-user-img">
                          <img src="resources/images/resources/ny-img3.png" alt="">
                        </div>
                        <div class="notification-info">
                          <h3>
                            <a href="#" title="">Tonney Dhman</a> Comment on your
                            project.
                          </h3>
                          <span>2 min ago</span>
                        </div>
                        <!--notification-info -->
                      </div>
                      <!--notfication-details end-->
                      <div class="notfication-details">
                        <div class="noty-user-img">
                          <img src="resources/images/resources/ny-img1.png" alt="">
                        </div>
                        <div class="notification-info">
                          <h3>
                            <a href="#" title="">Jassica William</a> Comment on your
                            project.
                          </h3>
                          <span>2 min ago</span>
                        </div>
                        <!--notification-info -->
                      </div>
                      <!--notfication-details end-->
                      <div class="notfication-details">
                        <div class="noty-user-img">
                          <img src="resources/images/resources/ny-img1.png" alt="">
                        </div>
                        <div class="notification-info">
                          <h3>
                            <a href="#" title="">Jassica William</a> Comment on your
                            project.
                          </h3>
                          <span>2 min ago</span>
                        </div>
                        <!--notification-info -->
                      </div>
                      <!--notfication-details end-->
                      <div class="notfication-details">
                        <div class="noty-user-img">
                          <img src="resources/images/resources/ny-img2.png" alt="">
                        </div>
                        <div class="notification-info">
                          <h3>
                            <a href="#" title="">Poonam Verma </a> Bid on your Latest project.
                          </h3>
                          <span>2 min ago</span>
                        </div>
                        <!--notification-info -->
                      </div>
                      <!--notfication-details end-->
                      <div class="notfication-details">
                        <div class="noty-user-img">
                          <img src="resources/images/resources/ny-img3.png" alt="">
                        </div>
                        <div class="notification-info">
                          <h3>
                            <a href="#" title="">Tonney Dhman</a> Comment on your
                            project
                          </h3>
                          <span>2 min ago</span>
                        </div>
                        <!--notification-info -->
                      </div>
                      <!--notfication-details end-->
                      <div class="notfication-details">
                        <div class="noty-user-img">
                          <img src="resources/images/resources/ny-img1.png" alt="">
                        </div>
                        <div class="notification-info">
                          <h3>
                            <a href="#" title="">Jassica William</a> Comment on your
                            project.
                          </h3>
                          <span>2 min ago</span>
                        </div>
                        <!--notification-info -->
                      </div>
                      <!--notfication-details end-->
                    </div>
                    <!--notifications-list end-->
                  </div>
                  <!--acc-setting end-->
                </div>


                <!--  친구 요청 부분 -->
                <div class="tab-pane fade" id="privcy" role="tabpanel"
                  aria-labelledby="nav-privcy-tab">
                  <div class="acc-setting">
                    <h3>Requests</h3>
                    <div class="requests-list">
                      <div class="request-details">
                        <div class="noty-user-img">
                          <img src="resources/images/resources/r-img1.png" alt="">
                        </div>
                        <div class="request-info">
                          <h3>Jessica William</h3>
                          <span>Graphic Designer</span>
                        </div>
                        <div class="accept-feat">
                          <ul>
                            <li><button type="submit" class="accept-req">Accept</button></li>
                            <li><button type="submit" class="close-req">
                                <i class="la la-close"></i>
                              </button></li>
                          </ul>
                        </div>
                        <!--accept-feat end-->
                      </div>
                      <!--request-detailse end-->
                      <div class="request-details">
                        <div class="noty-user-img">
                          <img src="resources/images/resources/r-img2.png" alt="">
                        </div>
                        <div class="request-info">
                          <h3>John Doe</h3>
                          <span>PHP Developer</span>
                        </div>
                        <div class="accept-feat">
                          <ul>
                            <li><button type="submit" class="accept-req">Accept</button></li>
                            <li><button type="submit" class="close-req">
                                <i class="la la-close"></i>
                              </button></li>
                          </ul>
                        </div>
                        <!--accept-feat end-->
                      </div>
                      <!--request-detailse end-->
                      <div class="request-details">
                        <div class="noty-user-img">


<img src="resources/images/resources/r-img3.png" alt="">
                        </div>
                        <div class="request-info">
                          <h3>Poonam</h3>
                          <span>Wordpress Developer</span>
                        </div>
                        <div class="accept-feat">
                          <ul>
                            <li><button type="submit" class="accept-req">Accept</button></li>
                            <li><button type="submit" class="close-req">
                                <i class="la la-close"></i>
                              </button></li>
                          </ul>
                        </div>
                        <!--accept-feat end-->
                      </div>
                      <!--request-detailse end-->
                      <div class="request-details">
                        <div class="noty-user-img">
                          <img src="resources/images/resources/r-img4.png" alt="">
                        </div>
                        <div class="request-info">
                          <h3>Bill Gates</h3>
                          <span>C & C++ Developer</span>
                        </div>
                        <div class="accept-feat">
                          <ul>
                            <li><button type="submit" class="accept-req">Accept</button></li>
                            <li><button type="submit" class="close-req">
                                <i class="la la-close"></i>
                              </button></li>
                          </ul>
                        </div>
                        <!--accept-feat end-->
                      </div>
                      <!--request-detailse end-->
                      <div class="request-details">
                        <div class="noty-user-img">
                          <img src="resources/images/resources/r-img5.png" alt="">
                        </div>
                        <div class="request-info">
                          <h3>Jessica William</h3>
                          <span>Graphic Designer</span>
                        </div>
                        <div class="accept-feat">
                          <ul>
                            <li><button type="submit" class="accept-req">Accept</button></li>
                            <li><button type="submit" class="close-req">
                                <i class="la la-close"></i>
                              </button></li>
                          </ul>
                        </div>
                        <!--accept-feat end-->
                      </div>
                      <!--request-detailse end-->
                      <div class="request-details">
                        <div class="noty-user-img">
                          <img src="resources/images/resources/r-img6.png" alt="">
                        </div>
                        <div class="request-info">
                          <h3>John Doe</h3>
                          <span>PHP Developer</span>
                        </div>
                        <div class="accept-feat">
                          <ul>
                            <li><button type="submit" class="accept-req">Accept</button></li>
                            <li><button type="submit" class="close-req">
                                <i class="la la-close"></i>
                              </button></li>
                          </ul>
                        </div>
                        <!--accept-feat end-->
                      </div>
                      <!--request-detailse end-->
                    </div>
                    <!--requests-list end-->
                  </div>
                  <!--acc-setting end-->
                </div>


<!-- 차단 부분 -> 이거는 나중에 시간 되면 하기 -->
                <div class="tab-pane fade" id="blockking" role="tabpanel"
                  aria-labelledby="nav-blockking-tab">
                  <div class="helpforum">
                    <div class="row">
                      <div class="col-12 security">
                        <h3>Blocking</h3>
                        <hr>
                      </div>
                      <div class="row">
                        <div class="col-12">
                          <h4>Blocking</h4>
                          <p>See your list,and make changes if you'd like</p>
                          <div class="bloktext">
                            <p>You are not bloking anyone</p>
                            <p>Need to blok or report someone? Go to the profile
                              of the person you want to blok and select "Blok or
                              Report" from the drowp-down menu at the top of the
                              profile summery</p>
                            <p>Note: After you have blocked the person, Any
                              previous profile views of yours and of the other person
                              will disappear from each of your "Who's viewed your
                              profile" sections.</p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!--account-tabs-setting end-->
      </div>
    </section>
    <%@ include file="Footer.jsp"%>

  </div>
  <!--theme-layout end-->



  <script type="text/javascript" src="resources/js/jquery.min.js"></script>
  <script type="text/javascript" src="resources/js/popper.js"></script>
  <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
  <script type="text/javascript"
    src="resources/js/jquery.mCustomScrollbar.js"></script>
  <script type="text/javascript" src="resources/lib/slick/slick.min.js"></script>
  <script type="text/javascript" src="resources/js/script.js"></script>
<script type="text/javascript" src="resources/sns_js/profile-account-setting.js"></script>

</body>
</html>