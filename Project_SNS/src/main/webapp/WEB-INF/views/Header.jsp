<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<div class="container">
			<div class="header-data">
				<div class="logo">
					<a href="index.html" title=""><img
						src="resources/images/logo.png" alt=""></a>
				</div>
				<!--logo end-->
				<div class="search-bar">
					<form>
						<input type="text" name="search" placeholder="Search...">
						<button type="submit">
							<i class="la la-search"></i>
						</button>
					</form>
				</div>
				<!--search-bar end-->
				<nav>
					<ul>
						<li><a href="index.jsp" title=""> <span><img
									src="resources/images/icon1.png" alt=""></span> Home
						</a></li>


						<li><a href="#" title="" class="not-box-openm"> <span><img
									src="resources/images/icon6.png" alt=""></span> Messages
						</a>
							<div class="notification-box msg" id="message">
								<div class="nt-title">
									<h4>Setting</h4>
									<a href="#" title="">Clear all</a>
								</div>
								<div class="nott-list">
									<div class="notfication-details">
										<div class="noty-user-img">
											<img src="resources/images/resources/ny-img1.png" alt="">
										</div>
										<div class="notification-info">
											<h3>
												<a href="messages.html" title="">Jassica William</a>
											</h3>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit, sed do.</p>
											<span>2 min ago</span>
										</div>
										<!--notification-info -->
									</div>
									<div class="notfication-details">
										<div class="noty-user-img">
											<img src="resources/images/resources/ny-img2.png" alt="">
										</div>
										<div class="notification-info">
											<h3>
												<a href="messages.html" title="">Jassica William</a>
											</h3>
											<p>Lorem ipsum dolor sit amet.</p>
											<span>2 min ago</span>
										</div>
										<!--notification-info -->
									</div>
<<<<<<< HEAD
									<div class="nott-list">
										<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="resources/images/resources/ny-img1.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="#" title="">Jassica William</a> Comment on your project.</h3>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="resources/images/resources/ny-img2.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="#" title="">Jassica William</a> Comment on your project.</h3>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="resources/images/resources/ny-img3.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="#" title="">Jassica William</a> Comment on your project.</h3>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="notfication-details">
							  				<div class="noty-user-img">
							  					<img src="resources/images/resources/ny-img2.png" alt="">
							  				</div>
							  				<div class="notification-info">
							  					<h3><a href="#" title="">Jassica William</a> Comment on your project.</h3>
							  					<span>2 min ago</span>
							  				</div><!--notification-info -->
						  				</div>
						  				<div class="view-all-nots">
						  					<a href="#" title="">View All Notification</a>
						  				</div>
									</div><!--nott-list end-->
								</div><!--notification-box end-->
							</li>
						</ul>
					</nav><!--nav end-->
					<div class="menu-btn">
						<a href="#" title=""><i class="fa fa-bars"></i></a>
					</div><!--menu-btn end-->
					<div class="user-account">
						<div class="user-info">  
							<img src="resources/images/test/${sessionScope.user.user_photo}" alt="">
							<a href="#" title="">${sessionScope.user.user_name }</a>
							<i class="la la-sort-down"></i>
						</div>
						<div class="user-account-settingss" id="users">
							<h3>Online Status</h3>
							<ul class="on-off-status">
								<li>
									<div class="fgt-sec">
										<input type="radio" name="cc" id="c5">
										<label for="c5">
											<span></span>
										</label>
										<small>Online</small>
=======
									<div class="notfication-details">
										<div class="noty-user-img">
											<img src="resources/images/resources/ny-img3.png" alt="">
										</div>
										<div class="notification-info">
											<h3>
												<a href="messages.html" title="">Jassica William</a>
											</h3>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit, sed do eiusmod tempo incididunt ut labore et dolore
												magna aliqua.</p>
											<span>2 min ago</span>
										</div>
										<!--notification-info -->
>>>>>>> refs/remotes/origin/master
									</div>
									<div class="view-all-nots">
										<a href="messages.html" title="">View All Messsages</a>
									</div>
<<<<<<< HEAD
								</li>
							</ul>
							<h3>Custom Status</h3>
							<div class="search_form">
								<form>
									<input type="text" name="search">
									<button type="submit">Ok</button>
								</form>
							</div><!--search_form end-->
							<h3>Setting</h3>
							<ul class="us-links">
								<li><a href="profile-account-setting.html" title="">Account Setting</a></li>
								<li><a href="#" title="">Privacy</a></li>
								<li><a href="#" title="">Faqs</a></li>
								<li><a href="#" title="">Terms & Conditions</a></li>
							</ul>
							<h3 class="tc"><a href="/sns/Logout">Logout</a></h3>
						</div><!--user-account-settingss end-->
=======
								</div>
								<!--nott-list end-->
							</div>
							<!--notification-box end--></li>
						<li><a href="#" title="" class="not-box-open"> <span><img
									src="resources/images/icon7.png" alt=""></span> Notification
						</a>
							<div class="notification-box noti" id="notification">
								<div class="nt-title">
									<h4>Setting</h4>
									<a href="#" title="">Clear all</a>
								</div>
								<div class="nott-list">
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
									<div class="notfication-details">
										<div class="noty-user-img">
											<img src="resources/images/resources/ny-img2.png" alt="">
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
									<div class="notfication-details">
										<div class="noty-user-img">
											<img src="resources/images/resources/ny-img3.png" alt="">
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
									<div class="notfication-details">
										<div class="noty-user-img">
											<img src="resources/images/resources/ny-img2.png" alt="">
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
									<div class="view-all-nots">
										<a href="#" title="">View All Notification</a>
									</div>
								</div>
								<!--nott-list end-->
							</div>
							<!--notification-box end--></li>
					</ul>
				</nav>
				<!--nav end-->
				<div class="menu-btn">
					<a href="#" title=""><i class="fa fa-bars"></i></a>
				</div>
				<!--menu-btn end-->
				<div class="user-account">
					<div class="user-info">
						<img src="resources/images/resources/user.png" alt=""> <a
							href="#" title="">John</a> <i class="la la-sort-down"></i>
>>>>>>> refs/remotes/origin/master
					</div>
					<div class="user-account-settingss" id="users">
						<h3>계정 정보</h3>
						 
						  
					 
						<h3>설 정</h3>
						<ul class="us-links">
							 
							<li><a href="#" title="">개인정보 수정</a></li>
							<li><a href="#" title="">계 정 탈 퇴</a></li>
						</ul>
						<h3 class="tc">
							<a href="sign-in.html" title="">로그아웃</a>
						</h3>
					</div>
					<!--user-account-settingss end-->
				</div>
			</div>
			<!--header-data end-->
		</div>
	</header>
	<!--header end-->

</body>
</html>