var scroll = 1;
var start = 1;
var end = 3;
var scrollcomment = 4;
var boardnum = 0;
var scrolltest = 0;

$(function() {
	
	boardlist();
	
    $("#btnBoardUpdate").click(function(){    	
    	var SubmitBoardUpdate = $("#SubmitBoardUpdate");
    	SubmitBoardUpdate.attr("action","/sns/boardupdate");
    	SubmitBoardUpdate.attr("method","POST");
    	SubmitBoardUpdate.submit();
    });
    
    $("#boardinputImg3").on("change", handleImgFileSelect3);

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
	
	    
    $("#btnUpdatePostClose").click(function() {
		$(".post-popup.job_post.boardupdate").removeClass("active");
        $(".wrapper").removeClass("overlay");
        return false;
	});
	
	
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

function boardlist(){	
	$.post("/sns/boardlist",{"start":start,"end":end},function(s){
		$("#boardlist").append(s);
	});
	start += 3;
	end += 3;
}

function FriendPage(user_id){
    var $form = $('<form></form>');
    $form.attr('action', '/sns/Friend');
    $form.attr('method', 'post');    
    $form.appendTo('body');
    var keyword = $('<input type="hidden" value='+user_id+' name="user_id">');

    $form.append(keyword);
    $form.submit();
}

function FollowPage(user_id){
    var $form = $('<form></form>');
    $form.attr('action', '/sns/Follow');
    $form.attr('method', 'post');    
    $form.appendTo('body');
    var keyword = $('<input type="hidden" value='+user_id+' name="user_id">');

    $form.append(keyword);
    $form.submit();
}
function follow(mainid,followunum){
	if(confirm("팔로우 하시겠습니까?")){
		$.ajax({
			type:"post",
			url:"/sns/FollowInsert",
			data:{"mainid":mainid,"funum":followunum},
			success:function(s){
				if(s.trim()=="0"){
					alert("추가되었습니다");
					location.reload();
					return;
				}
				if(s.trim()=="1"){
					alert("이미 추가되었습니다.");
					return;
				}
			},
			error:function(e){
				alert("팔로우 에러");
			}
		})
	}
}
function viewMyFriendProfile(user_id){
    var $form = $('<form></form>');
    $form.attr('action', '/sns/InfoPage');
    $form.attr('method', 'post');    
    $form.appendTo('body');    
    
    var keyword = $('<input type="hidden" value='+user_id+' name="user_id">');

    $form.append(keyword);
    $form.submit();
}

function edoptsopen(index){	
	$(".ed-options.testtest"+index+"").toggleClass("active");
}

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

function handleImgFileSelect3(e) {
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
            $("#BoardImgPreview3").attr("src", e.target.result);
        }
        reader.readAsDataURL(f);
    });
}

function commentpopup(index){
	$.post("/sns/CommentList",{"bnum":index},function(s){
		$("#commentlist"+index+"").empty();
		$("#commentlist"+index+"").append(s);
	});
    if($(".comment-popup"+index+"").css("display")=="none"){	      
	      $(".comment-popup"+index+"").css("display","block");
	      $(".baselist"+index+"").addClass("no-margin");
	    }else{
	      $(".comment-popup"+index+"").css("display","none");
	      $(".baselist"+index+"").removeClass("no-margin");
	    }
}

$(window).scroll(function() {	
	if ($(window).scrollTop()+$(window).height() + 10 > $(document).height()) {
		boardlist();
	};
});

/*$(window).scroll(function() {	
	if ($(window).scrollTop()+$(window).height() + 10 > $(document).height()) {
		if(scrolltest==start){
			return;
		}
		scrolltest = start;
		$.ajax({
			type : 'post',			
			url : '/sns/mainIndextest2',
			data: {"start":start,"end":end,"unum":$("#user_num").val()},
			dataType:'json',
			success : function(s) {
				start += 3;
				end += 3;
				$.each(s, function(idx, val) {
					boardhtml="";
					boardnum = val.bnum;
					var photourl = "resources/images/test/"+val.user_photo;
					var boardphoto = "";
					if(val.photo==null){
						boardphoto = "resources/images/test/null.png";
					}else if(val.photo!=null){
						boardphoto = "resources/images/test/"+val.photo;
					}
					boardhtml += "<div class='post-bar baselist"+scrollcomment+"'>" +
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
							"<li><a href='javascript:void(0)' class='com' onclick='commentpopup("+scrollcomment+")'><i class='fas fa-comment-alt'></i>댓글 갯수</a></li>"+												
							"</ul>"+
							"<a href='#' class='com'><i class='fas fa-heart'></i> FOLLOW!</a> "+
							"</div>"+
							"<div class='job-status-bar' style='margin-top: 16px'></div>"+
							"</div>"+
							"<div class='comment-section comment-popup"+scrollcomment+"' style='display: none; margin-bottom: 20px'><div class='comment-sec'><ul>";
					
					$.ajax({
						type:'post',
						url:'/sns/CommentList',
						data : {"bnum":boardnum},
						async : false, 
						dataType:'json',
						success:function(su){
							$.each(su,function(asdf,value){												
								if(boardnum == value.bnum){
									boardhtml += "<li>" +
										    "<div class='comment-list'><div class='bg-img'><img src='resources/images/resources/bg-img1.png' alt=''></div>" +
										    "<div class='comment'><h3>"+value.writer+"</h3><span><img src='resources/images/clock.png' alt=''>"+value.day+"</span>" +
										    "<p>"+value.content+"</p>" +
										    "</div></div>" +
										    "</li>";
								};								
							});										
						},error:function(er){
							alert(er);
						}
				});	
					boardhtml += "</ul></div><!--comment-sec end--><div class='post-comment'><div class='cm_img'></div><div class='comment_box'><form method='post' action='/sns/CommentInsert'><input type='hidden' name='bnum' value='"+val.bnum+"'><input type='hidden' name='unum' value='"+sessionStorage.getItem('user_num')+"'><input type='text' name='content' placeholder='Post a comment'><button type='submit'>Send</button></form></div></div><!--post-comment end--></div>";		
					$("#scrolltest").append(boardhtml);
					$("#scrollscripttest").empty();
					$("#scrollscripttest").append("<script> $('.ed-opts-open"+scroll+"').on('click',function(){ $(this).next('.ed-options').toggleClass('active');return false;}); </script>");
					scroll += 1;
					scrollcomment += 1;
				});
				
				
			},
			error : function(e) {
				alert(e);
			}
		})

	}
});*/
