$(function() {
	$("#btnBoardInsert").click(function () {		
		var SubmitBoardInsert = $("#SubmitBoardInsert");
		SubmitBoardInsert.attr("action","/sns/boardinsert");
		SubmitBoardInsert.attr("method","POST");
		SubmitBoardInsert.submit();
	});
	
	$("#boardinputImg").on("change", handleImgFileSelect);
	
    $("#btnPostClose").click(function(){    	
        $(".post-popup.job_post").removeClass("active");
        $(".wrapper").removeClass("overlay");
        return false;
    });	
    
    $("#btnBoardUpdate").click(function(){    	
    	var SubmitBoardUpdate = $("#SubmitBoardUpdate");
    	SubmitBoardUpdate.attr("action","/sns/boardupdate");
    	SubmitBoardUpdate.attr("method","POST");
    	SubmitBoardUpdate.submit();
    });

    
    $("#btnUpdatePostClose").click(function() {
		$(".post-popup.job_post.boardupdate").removeClass("active");
        $(".wrapper").removeClass("overlay");
        return false;
	})
    
});

function BoardUpdate(boardnum,boardunum,unum){	
	if(boardunum!=unum){
		alert("글쓴이와 일치하지 않습니다.");
		return;
	}else{
		$(".post-popup.job_post.boardupdate").addClass("active");
        $(".wrapper").addClass("overlay");
        $.ajax({
        	type:"post",
        	url:"/sns/boardData",
        	data:{"bnum":boardnum},
        	dataType:"json",
        	success:function(data){        		
        		$.each(data, function(idx, val) {
        			$("#updateContent").val(val.content);
        			$("#updateBnum").val(val.bnum);
        			$("#updateWriter").val(val.writer);
        			$("#updateUnum").val(val.unum);
        		});
        	},
        	error:function(e){
        		
        	}        	
        });
        return false;
	}
};

function BoardDelete(boardnum,boardunum,unum){	
	if(boardunum!=unum){
		alert("글쓴이와 일치하지 않습니다.");
		return;
	}else{
		if(confirm("정말 삭제 하시겠습니까?")){
			$.post("/sns/boardDelete",{"bnum":boardnum});
			alert("삭제되었습니다.");
			location.href = "/sns/mainIndex";
		}
	}
	
}

function handleImgFileSelect(e) {
    var files = e.target.files;
    var filesArr = Array.prototype.slice.call(files);

    filesArr.forEach(function(f) {
        if(!f.type.match("image.*")) {
            alert("이미지업로드 오류!");
            return;
        }

        sel_file = f;

        var reader = new FileReader();
        reader.onload = function(e) {
            $("#BoardImgPreview").attr("src", e.target.result);
        }
        reader.readAsDataURL(f);
    });
}

var start = 4;
var end = 6;
$(window).scroll(function() {
	if ($(window).scrollTop() == $(document).height() - $(window).height()) {
		$.ajax({
			type : 'post',			
			url : '/sns/mainIndextest',
			data: {"start":start,"end":end},
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
							" <a href='#' title='' class='ed-opts-open'>" +
							" <i class='la la-ellipsis-v'></i></a>" +
							" <ul class='ed-options'>" +
							"<li><a href='#'>글수정</a></li>" +
							"<li><a href='#' title=''>글삭제</a></li>" +							
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

