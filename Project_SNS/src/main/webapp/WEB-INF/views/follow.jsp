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
			<div class="user-tab-sec">
			<h3>${user_name}님의 팔로우 리스트입니다</h3><br><br>
			</div>
				<c:if test="${Follow_List.isEmpty() && Follower_List.isEmpty()}">
				<div class="company-title">
					<h3>팔로우를 추가해 보세요!!</h3>
					</div>
				</c:if>
				<c:if test="${!Follow_List.isEmpty() }">
					<div class="company-title">
					<h3>Follow List</h3>
				</div>
				</c:if>
				<!--company-title end-->
				<div class="companies-list">
					<div class="row">
						<c:forEach items="${Follow_List }" var="Follow_List">
							<div class="col-lg-3 col-md-4 col-sm-6 col-12">
								<div class="company_profile_info">
									<div class="company-up-info">
										<img src="resources/images/test/${Follow_List.user_photo }"
											alt=""> <input type="hidden" id=""
											value="${Follow_List.unum }">
										<h3>${Follow_List.user_name }</h3>
									</div>
									<a href="javascript:void(0)" class="view-more-pro" onclick="viewMyFriendProfile('${Follow_List.user_id}')">View Profile</a>
								</div>
								<!--company_profile_info end-->
							</div>
						</c:forEach>
						<c:if test="${!Follower_List.isEmpty() }">
							<div class="company-title">
								<h3>Follower List</h3>
							</div>
						</c:if>
						<c:forEach items="${Follower_List }" var="Follower_List">
							<div class="col-lg-3 col-md-4 col-sm-6 col-12">
								<div class="company_profile_info">
									<div class="company-up-info">
										<img
											src="resources/images/test/${Follower_List.user_photo }"
											alt="">
										<h3>${Follower_List.user_name }</h3>	
									</div>
									<a href="javascript:void(0)" class="view-more-pro" onclick="viewMyFriendProfile('${Follower_List.user_id}')">View Profile</a>
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

	</div>
	<!--theme-layout end-->
	<script type="text/javascript" src="resources/js/jquery.min.js"></script>
	<script type="text/javascript" src="resources/js/popper.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/flatpickr.min.js"></script>
	<script type="text/javascript" src="resources/lib/slick/slick.min.js"></script>
	<script type="text/javascript" src="resources/js/script.js"></script>
	<script type="text/javascript" src="resources/sns_js/follow.js"></script>
</body>
</html>