<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
		<c:forEach items="${comment_list }" var="comment_list">
			<li>
				<div class="comment-area">
					<div class="post_topbar">
						<div class="usy-dt">
							<img src="resources/images/test/${comment_list.user_photo }"
								alt="" width="40px" height="40px">
							<div class="usy-name">
								<h3>${comment_list.user_name }</h3>
								<span><img src="resources/images/clock.png" alt="">${comment_list.day }</span>
							</div>
						</div>
					</div>					
					<div class="reply-area"> <p>${comment_list.content }</p> </div>					
				</div>
			</li>
		</c:forEach>