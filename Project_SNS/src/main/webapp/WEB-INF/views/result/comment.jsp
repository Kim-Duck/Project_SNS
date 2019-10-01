<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

		<div class="comment-sec">
			<ul>
				<c:forEach items="${comment_list }" var="comment_list">					
						<li>
							<div class="comment-list">
								<div class="bg-img">
									<img src="resources/images/resources/bg-img1.png" alt="">
								</div>
								<div class="comment">
									<h3>${comment_list.writer }</h3>
									<span><img src="resources/images/clock.png" alt="">${comment_list.day }</span>
									<p>${comment_list.content }</p>
								</div>
							</div> <!--comment-list end-->
						</li>					
				</c:forEach>
			</ul>
		</div>
		<!--comment-sec end-->
		<div class="post-comment">
			<div class="comment_box">
				<form id="formCommentInsert">
					<input type="hidden" name="bnum" value="${Board_num }" id="comment_bnum">
					<input type="hidden" name="writer"
						value="${sessionScope.user.user_id }" id="comment_writer"> <input type="text"
						name="content" placeholder="Post a comment..." id="comment_content">
					<button type="button" onclick="btnCommentInsert('${Board_num}')">Send</button>
				</form>
			</div>
		</div>
		<!--post-comment end-->
	