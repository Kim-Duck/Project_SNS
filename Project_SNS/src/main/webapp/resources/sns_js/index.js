$(function() {
	$("#btnBoardInsert").click(function () {		
		var SubmitInsert = $("#SubmitBoardInsert");
		SubmitInsert.attr("action","/sns/insert");
		SubmitInsert.attr("method","POST");
		SubmitInsert.submit();
	});
});


var start = 4;
var end = 6;
$(window).scroll(function() {
	if ($(window).scrollTop() == $(document).height() - $(window).height()) {
		$.ajax({
			type : 'post',			
			url : '/sns/mainIndextest',
			//contentType: 'application/json',
			data: {"start":start,"end":end},
			dataType:'json',
			success : function(s) {				
				$.each(s, function(idx, val) {
					
					$("#scrolltest").append("<div class='post-bar'>" +
							" <div class='post_topbar'> " +
							" <div class='usy-dt'>" +
							" <img src='resources/images/test/'"+val.user_photo+" alt='' width='50px' height='50px'>" +
							" <div class='usy-name'>" +
							" <h3>"+val.writer+"</h3>" +
							" <span><img src='resources/images/clock.png' alt=''>"+val.day+"</span>" +
							" </div>" +
							" </div>" +
							" <div class='ed-opts'>" +
							" <a href='#' title='' class='ed-opts-open'>" +
							" <i class='la la-ellipsis-v'></i></a>" +
							" <ul class='ed-options'>" +
							"<li><a href='#'>글수정</a></li><li><a href='#' title=''>글삭제</a></li>" +
							"	</ul> </div> </div>" +
							"<div class='epi-sec'>"+
							"<img src='resources/images/test/test.png'>"+
							"</div>"+
							"<div class='job_descp'>"+										
							"<p>"+val.content+"</p>"+
							"</div>"+
							"<div class='job-status-bar'>"+
							"<ul class='like-com' style='margin-top: 29px'>"+												
							"<li><a href='#' class='com'><i class='fas fa-comment-alt'></i>댓글 갯수</a></li>"+												
							"</ul>"+
							"<a href='#' class='com'><i class='fas fa-heart'></i> FOLLOW!</a> "+
							"</div>"+
							"<div class='job-status-bar' style='margin-top: 16px'></div>"+
							"</div>"
							);
				});
				start += 3;
				end += 3;
			},
			error : function(e) {
				alert(e);
			}
		})

	}
});

