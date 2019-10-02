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
				<!--company-title end-->
				<div class="companies-list">
					<div class="row">
						<div class="company-title">
							<h3>'${searchName }'의 검색결과</h3>
						</div>
						<c:forEach items="${User_List }" var="User_List">
							<div class="col-lg-3 col-md-4 col-sm-6 col-12">
								<div class="company_profile_info">
									<div class="company-up-info">
										<c:if test="${User_List.user_photo == null }">
											<img src="resources/images/test/null.png" width="90px" height="90px">
										</c:if>
										<c:if test="${User_List.user_photo != null }">
											<img src="resources/images/test/${User_List.user_photo }" width="90px" height="90px">
										</c:if>
										
										
										<h3>${User_List.user_name }</h3>
										<ul>
											<c:if test="${User_List.friend_check == 'Request-Ing' }">
												<ul>
													<li><a href="javascript:void(0)"
														onclick="FriendRequestIng()" class="follow">FriendRequestIng...</a></li>
													
												</ul>
											</c:if>
											<c:if test="${User_List.friend_check == 'Request-List' }">
												<ul>
													<li><a href="javascript:void(0)"
														onclick="FriendAgree('${sessionScope.user.user_id }','${User_List.user_id}')"
														class="follow">FriendAgree</a></li>													
												</ul>
											</c:if>
											<c:if test="${User_List.user_id == User_List.friend_check }">
												<li><a href="javascript:void(0)" onclick=""
													class="hire">이미친구입니다</a></li>
											</c:if>
											<c:if test="${User_List.friend_check != 'Request-Ing' }">
												<c:if test="${User_List.friend_check != 'Request-List' }">
													<c:if
														test="${User_List.user_id != User_List.friend_check }">
														<li><a href="javascript:void(0)"
															onclick="FriendRequest('${sessionScope.user.user_id }','${User_List.user_id}')"
															class="follow">FriendButton</a></li>
													</c:if>
												</c:if>
											</c:if>
										</ul>
									</div>
									<a href="javascript:void(0)" class="view-more-pro"
										onclick="viewSearchProfile('${User_List.user_id}')">View
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
		

	</div>
	<!--theme-layout end-->
	<script type="text/javascript" src="resources/js/jquery.min.js"></script>
	<script type="text/javascript" src="resources/js/popper.js"></script>
	<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resources/js/flatpickr.min.js"></script>
	<script type="text/javascript" src="resources/lib/slick/slick.min.js"></script>
	<script type="text/javascript" src="resources/js/script.js"></script>

	<script type="text/javascript"
		src="resources/sns_js/profiles-search.js?ver=123"></script>
</body>
</html>