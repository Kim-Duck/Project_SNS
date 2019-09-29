<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<section class="companies-info">
			<div class="container">				
				<c:if test="${!Friend_List.isEmpty() }">
					<div class="company-title">
					<h3>Friend List</h3>
				</div>
				</c:if>
				<!--company-title end-->
				<div class="companies-list">
					<div class="row">
						<c:forEach items="${Friend_List }" var="Friend_List">
							<div class="col-lg-3 col-md-4 col-sm-6 col-12">
								<div class="company_profile_info">
									<div class="company-up-info">
										<img src="resources/images/test/${Friend_List.user_photo }"
											alt=""> <input type="hidden" id=""
											value="${Friend_List.unum }">
										<h3>${Friend_List.user_name }</h3>
										<ul>
											<li><a href="#" title="" class="follow">Follow</a></li>
											<li><a href="#" title="" class="message-us"><i
													class="fa fa-envelope"></i></a></li>
										</ul>
									</div>
									<a href="javascript:void(0)" class="view-more-pro" onclick="viewMyFriendProfile('${Friend_List.user_id}')">View Profile</a>
								</div>
								<!--company_profile_info end-->
							</div>
						</c:forEach>
						<c:if test="${!Friend_Request_Ing.isEmpty() }">
							<div class="company-title">
								<h3>친구요청중</h3>
							</div>
						</c:if>
						<c:forEach items="${Friend_Request_Ing }" var="Friend_Request_Ing">
							<div class="col-lg-3 col-md-4 col-sm-6 col-12">
								<div class="company_profile_info">
									<div class="company-up-info">
										<img
											src="resources/images/test/${Friend_Request_Ing.user_photo }"
											alt="">
										<h3>${Friend_Request_Ing.user_name }</h3>
										<ul>
											<li><a href="javascript:void(0)" onclick="FriendRequestIng()"class="follow">FriendRequestIng...</a></li>
											<li><a href="#" title="" class="message-us"><i
													class="fa fa-envelope"></i></a></li>
										</ul>
									</div>
									<a href="user-profile.html" title="" class="view-more-pro">View
										Profile</a>
								</div>
								<!--company_profile_info end-->
							</div>
						</c:forEach>
						<c:if test="${!Friend_Request_List.isEmpty() }">
							<div class="company-title">
								<h3>친구요청옴!!</h3>
							</div>
						</c:if>
						<c:forEach items="${Friend_Request_List }"
							var="Friend_Request_List">

							<div class="col-lg-3 col-md-4 col-sm-6 col-12">
								<div class="company_profile_info">
									<div class="company-up-info">
										<img
											src="resources/images/test/${Friend_Request_List.user_photo }"
											alt="">
										<h3>${Friend_Request_List.user_name }</h3>
										<ul>
											<li><a href="javascript:void(0)" onclick="FriendAgree('${sessionScope.user.user_id }','${Friend_Request_List.user_id}')"
												class="follow">FriendAgree</a></li>
											<li><a href="#" title="" class="message-us"><i
													class="fa fa-envelope"></i></a></li>
										</ul>
									</div>
									<a href="user-profile.html" title="" class="view-more-pro">View
										Profile</a>
								</div>
								<!--company_profile_info end-->
							</div>
						</c:forEach>						
					</div>
				</div>
				<!--companies-list end-->
			</div>
		</section>
		<!--companies-info end-->
		<%@ include file="Footer.jsp"%>

	</div>
	<!--theme-layout end-->
	<script type="text/javascript" src="resources/js/jquery.min.js"></script>
	<script type="text/javascript" src="resources/js/popper.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/flatpickr.min.js"></script>
	<script type="text/javascript" src="resources/lib/slick/slick.min.js"></script>
	<script type="text/javascript" src="resources/js/script.js"></script>
	
	<script type="text/javascript" src="resources/sns_js/profiles.js?ver=123"></script>
</body>
</html>