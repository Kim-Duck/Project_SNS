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
	<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="resources/css/line-awesome.css">
	<link rel="stylesheet" type="text/css" href="resources/css/line-awesome-font-awesome.min.css">
	<link href="resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="resources/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="resources/lib/slick/slick.css">
	<link rel="stylesheet" type="text/css" href="resources/lib/slick/slick-theme.css">
	<link rel="stylesheet" type="text/css" href="resources/css/style.css">
	<link rel="stylesheet" type="text/css" href="resources/css/responsive.css">
</head>


<body class="sign-in">
	
	<div class="wrapper">		

		<div class="sign-in-page">
			<div class="signin-popup">
				<div class="signin-pop">
					<div class="row">
						<div class="col-lg-6">
							<div class="cmp-info">
								<div class="cm-logo">
									<img src="resources/images/Sign-inLOGO.png" alt="">
									<p>Welcome To The Space</p>
								</div><!--cm-logo end-->	
								<img src="resources/images/cm-main-img.png" alt="">			
							</div><!--cmp-info end-->
						</div>
						<div class="col-lg-6">
							<div class="login-sec">
								<ul class="sign-control">
									<li data-tab="tab-1" class="current"><a href="#" title="">로그인</a></li>				
									<li data-tab="tab-2"><a href="#" title="">회원가입</a></li>				
								</ul>			 
								<div class="sign_in_sec current" id="tab-1">
									
									<h3>Sign in</h3>
									<form id="LoginForm">
										<div class="row">
											<div class="col-lg-12 no-pdd">
												<div class="sn-field">
													<input type="text" name="login_user_id" id="login_user_id" placeholder="UserID">
													<i class="la la-user"></i>
												</div><!--sn-field end-->
											</div>
											<div class="col-lg-12 no-pdd">
												<div class="sn-field">
													<input type="password" name="login_user_pwd" id="login_user_pwd" placeholder="Password">
													<i class="la la-lock"></i>
												</div>
											</div>
											<div class="col-lg-12 no-pdd">
											
											</div>
											<div class="col-lg-12 no-pdd">
												<button type="button" id="btnLogin">로그인</button>
											</div>
										</div>
									</form>
									<div class="login-resources">
										<h4>Login Via Social Account</h4>
										<ul>
											<li><a href="#" title="" class="fb"><i class="fa fa-facebook"></i>Login Via Facebook</a></li>
											<li><a href="#" title="" class="tw"><i class="fa fa-twitter"></i>Login Via Twitter</a></li>
										</ul>
									</div><!--login-resources end-->
								</div><!--sign_in_sec end-->
								<div class="sign_in_sec" id="tab-2">
									<!-- <div class="signup-tab">
										<i class="fa fa-long-arrow-left"></i>
										<h2>johndoe@example.com</h2>
										<ul>
											<li data-tab="tab-3" class="current"><a href="#" title="">User</a></li>
											<li data-tab="tab-4"><a href="#" title="">Company</a></li>
										</ul>
									</div>signup-tab end	 -->
									
									<div class="dff-tab current" id="tab-3">
									<h3>Sign up</h3>
										<form id="SubmitSignUp" enctype="multipart/form-data">
											<div class="row">
												<div class="col-lg-12 no-pdd">
													<div class="sn-field">													
														<input type="text" name="user_id" placeholder="ID" id="signup_user_id">
														<i class="la la-user"></i>
													</div>
												</div>
												<div class="col-lg-12 no-pdd">
													<div class="sn-field">
														<input type="text" name="user_name" placeholder="Name" id="signup_user_name">
														<i class="la la-globe"></i>
													</div>
												</div>
												<div class="col-lg-12 no-pdd">
													<div class="sn-field">
													<input type="file" name ="user_photoFile" class="form-control" accept=".gif, .jpg, .png, .jpeg, .bmp" id="signup_user_photo" placeholder="Photo">													
														<i class="la la-globe"></i>
													</div>
												</div>
												<div class="col-lg-12 no-pdd">
													<div class="sn-field">
														<input type="text" name="user_phone" placeholder="Phone" id="signup_user_phone">
														<i class="la la-globe"></i>
													</div>
												</div>
												<div class="col-lg-12 no-pdd">
													<div class="sn-field">
														<input type="text" name="user_email" placeholder="E-mail" id="signup_user_email">
														<i class="la la-globe"></i>
													</div>
												</div>
								
												<div class="col-lg-12 no-pdd">
													<div class="sn-field">
														<input type="password" name="user_pwd" placeholder="Password" id="signup_user_pwd">
														<i class="la la-lock"></i>
													</div>
												</div>
												<div class="col-lg-12 no-pdd">
													<div class="sn-field">
														<input type="password" placeholder="Repeat Password" id="signup_user_pwd_2">
														<i class="la la-lock"></i>
													</div>
												</div>												
												<div class="col-lg-6 no-pdd">
													<button type="button" id="btnOverLabId">ID중복확인</button>
												</div>
												<div class="col-lg-6 no-pdd">
													<button type="button" id="btnSubmitSignUp">회원가입</button>
												</div>
											</div>
										</form>
									</div><!--dff-tab end-->
									
								</div>		
							</div><!--login-sec end-->
						</div>
					</div>		
				</div><!--signin-pop end-->
			</div><!--signin-popup end-->
		
			<div class="footy-sec">
				<div class="container">
					<ul>
						<li><a href="help-center.html" title="">Help Center</a></li>
						<li><a href="about.html" title="">About</a></li>
						<li><a href="#" title="">Privacy Policy</a></li>
						<li><a href="#" title="">Community Guidelines</a></li>
						<li><a href="#" title="">Cookies Policy</a></li>
						<li><a href="#" title="">Career</a></li>
						<li><a href="forum.html" title="">Forum</a></li>
						<li><a href="#" title="">Language</a></li>
						<li><a href="#" title="">Copyright Policy</a></li>
					</ul>
					<p><img src="resources/images/copy-icon.png" alt="">Copyright 2019</p>
				</div>
			</div><!--footy-sec end-->
		</div><!--sign-in-page end-->


	</div><!--theme-layout end-->



<script type="text/javascript" src="resources/js/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/popper.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/lib/slick/slick.min.js"></script>
<script type="text/javascript" src="resources/js/script.js"></script>
<script type="text/javascript" src="resources/sns_js/sign-in.js"></script>
</body>
</html>