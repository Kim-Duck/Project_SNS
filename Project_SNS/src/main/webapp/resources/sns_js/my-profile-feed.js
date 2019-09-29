$(function() {

	$('#coverfile').on("change", function() {
		var formData = new FormData($("#ChangeCover")[0]);		
		
		$.ajax({
			type:'post',
			url:'/sns/ChangeCover',
			processData: false,
			contentType: false,
			data : formData,			
			success:function(s){
				if(s.trim()=="0"){
					location.reload();
				}
			},
			error:function(e){
				alert(e);
			}			
		});		
		
	})
	
	
	$('#mainfile').on("change", function() {
		var formData = new FormData($("#ChangePhoto")[0]);
		$.ajax({
			type:'post',
			url:'/sns/ChangePhoto',
			processData: false,
			contentType: false,
			data : formData,			
			success:function(s){
				if(s.trim()=="0"){
					location.reload();
				}
			},
			error:function(e){
				alert(e);
			}			
		});		
	})

})

var scroll = 1;
var start = 4;
var end = 6;
$(window).scroll(function() {	
	if ($(window).scrollTop()+$(window).height() + 10 > $(document).height()) {
		$.ajax({
			type : 'post',			
			url : '/sns/mainIndextest2',
			data: {"start":start,"end":end,"unum":$("#user_num").val()},
			dataType:'json',
			success : function(s) {				
				$.each(s, function(idx, val) {					
					var photourl = "resources/images/test/"+val.user_photo;
					var boardphoto = "";
					if(val.photo==null){
						boardphoto = "resources/images/test/null.png";
					}else if(val.photo!=null){
						boardphoto = "resources/images/test/"+val.photo;
					}
					$("#scrolltest").append("<div class='post-bar'>" +
							" <div class='post_topbar'> " +
							" <div class='usy-dt'>" +
							" <img src='"+photourl+"'"+" alt='' width='50px' height='50px'>" +
							" <div class='usy-name'>" +
							" <h3>"+val.writer+"</h3>" +
							" <span><img src='resources/images/clock.png' alt=''>"+val.day+"</span>" +
							" </div>" +
							" </div>" +
							" <div class='ed-opts'>" +
							" <a href='#' title='' class='ed-opts-open"+scroll+"'>" +
							" <i class='la la-ellipsis-v'></i></a>" +
							" <ul class='ed-options'>" +
							"<li><Button type='Button' class='post-job' onclick='BoardUpdate("+val.bnum+","+val.unum+","+sessionStorage.getItem('user_num')+")'>글수정</Button></li>" +
							"<li><Button type='Button' class='post-job' onclick='BoardDelete("+val.bnum+","+val.unum+","+sessionStorage.getItem('user_num')+")'>글삭제</Button></li>" +							
							"</ul> </div> </div>" +
							"<div class='epi-sec'>"+
							"<img src='"+boardphoto+"'>"+							
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
					$("#scrollscripttest").empty();
					$("#scrollscripttest").append("<script> $('.ed-opts-open"+scroll+"').on('click',function(){ $(this).next('.ed-options').toggleClass('active');return false;}); </script>");
					scroll += 1;
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
