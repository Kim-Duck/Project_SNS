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
					<a href="/sns/index"><img src="resources/images/HeaderLOGO.png"
						alt=""></a>
				</div>
				<!--logo end-->
				<div class="search-bar">
					<form action="/sns/FriendSerach" method="post">
						<input type="text" name="searchName" placeholder="이름을 검색해보세요..">
						<input type="hidden" name="user_id"
							value="${sessionScope.user.user_id }">
						<button type="submit">
							<i class="la la-search"></i>
						</button>
					</form>
				</div>
				<!--search-bar end-->
				<nav>
					<ul>
						<li><a href="/sns/index" title=""> <span><img
									src="resources/images/icon1.png" alt=""></span> Home
						</a></li>


						<li>
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
					<div class="user-info" style="width: 115px;">
						<img src="resources/images/test/${sessionScope.user.user_photo }"
							alt="" width="30px" height="30px"> <a href="#" title=""
							style="margin-right: 2px;">${sessionScope.user.user_name }</a> <i
							class="la la-sort-down"></i>
					</div>
					<div class="user-account-settingss" id="users">
						<form name="viewprofile2" action="/sns/Mypage" method="post">
							<input type="hidden" name="user_id"
								value="${sessionScope.user.user_id }">
						</form>
						<h3 class="tc">
							<a href="javascript:void(0)" id="viewMypage">마이페이지</a>
						</h3>
						<h3 class="tc">
							<a href="/sns/Setting">설 정</a>
						</h3>

						<h3 class="tc">
							<a href="javascript:void(0)" id="userLogout">로그아웃</a>
						</h3>
					</div>
					<!--user-account-settingss end-->

				</div>

			</div>
			<!--user-account-settingss end-->
		</div>
		</div>
		<!--header-data end-->
		</div>
	</header>
	<!--header end-->
	<script type="text/javascript" src="resources/js/jquery.min.js"></script>
	<script type="text/javascript" src="resources/sns_js/header.js?ver=123"></script>
</body>
</html>