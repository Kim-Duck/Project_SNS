<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:forEach items="${board_list }" var="board_list" varStatus="index">
	<div class="post-bar baselist${board_list.bnum }">
		<div class="post_topbar">
			<div class="usy-dt">
				<img src="resources/images/test/${board_list.user_photo }" alt=""
					width="50px" height="50px">
				<div class="usy-name">
					<h3>${board_list.writer }</h3>
					<span><img src="resources/images/clock.png" alt="">${board_list.day }</span>
				</div>
			</div>
			<div class="ed-opts">
                          <a href="javascript:void(0)"  class="ed-opts-open" onclick="edoptsopen(${board_list.bnum})"><i
                            class="la la-ellipsis-v"></i></a>
                          <ul class="ed-options showbtn${board_list.bnum }" style="border-radius: 40px;">
                            <li><Button type="Button" class="post-job"
                                onclick="BoardUpdate(${board_list.bnum },${board_list.unum },${user.unum })"
                                style="width: 90px; height: 27px; margin-top: 7px; font-size: 18px; border-radius: 5px; color: white; background-color: #e44d3a">글
                                수정</Button></li>
                            <li><Button type="Button" class="post-job"
                                onclick="BoardDelete(${board_list.bnum },${board_list.unum },${user.unum })"
                                style="width: 90px; height: 27px; margin-bottom: 7px; font-size: 18px; border-radius: 5px; color: white; background-color: #e44d3a">글
                                삭제</Button></li>
                          </ul>
                        </div>
			
		
		</div>
		<div class="epi-sec">
			<c:if test="${board_list.photo!=null }">
				<img src="resources/images/test/${board_list.photo }" style="margin-top: 15px;margin-bottom: 5px">
			</c:if>			
		</div>
		<div class="job_descp">
			<p style="margin-top: 10px">${board_list.content }</p>
		</div>
		<div class="job-status-bar">
			<ul class="like-com" style="margin-top: 29px">
				<li><a href="javascript:void(0)" class="com" onclick="commentpopup('${board_list.bnum }')">
				<i class="fas fa-comment-alt"></i>
				
				<span id="comment_count${board_list.bnum }">				
				<c:if test="${board_list.comment_cnt != 0 }">
				( ${board_list.comment_cnt } )
				</c:if>	
				<c:if test="${board_list.comment_cnt == 0 }">
				댓글을 달아주세요!				
				</c:if>
				</span>
				
				</a></li>
			</ul>
			<c:if test="${sessionScope.user.unum != board_list.unum }">
				<a href="javascript:void(0)" class="com"
					onclick="follow('${sessionScope.user.user_id }','${board_list.unum}')"><i
					class="fas fa-heart"></i> FOLLOW!</a>
			</c:if>

		</div>
		<div class="job-status-bar" style="margin-top: 16px"></div>
	</div>

	<div class="comment-section comment-popup${board_list.bnum }" style="display: none; margin-bottom: 20px">
		<div id="commentlist${board_list.bnum }">		
		</div>
	</div>


</c:forEach>
