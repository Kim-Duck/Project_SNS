$(function() {
	boardlist();

	$("#btnBoardInsert").click(function() {
		var SubmitBoardInsert = new FormData($("#SubmitBoardInsert")[0]);

		$.ajax({
			type : 'post',
			url : '/sns/boardinsert',
			data : SubmitBoardInsert,
			processData : false,
			contentType : false,
			async : false,
			success : function(s) {
				if (s.trim() == "0") {
					location.href = "/sns/index";
					return;
				}
			},
			error : function(e) {
				alert(e);
			}

		})

	});

	$("#boardinputImg").on("change", handleImgFileSelect);
	$("#boardinputImg2").on("change", handleImgFileSelect2);

	$("#btnPostClose").click(function() {
		$(".post-popup.job_post.post-main").removeClass("active");
		$(".wrapper").removeClass("overlay");
		return false;
	});

	$("#btnPostMain").click(function() {
		$(".post-popup.job_post.post-main").addClass("active");
		$(".wrapper").addClass("overlay");
		return false;
	})

	$("#btnBoardUpdate").click(function() {

		var SubmitBoardUpdate = new FormData($("#SubmitBoardUpdate")[0]);

		$.ajax({
			type : 'post',
			url : '/sns/boardupdate',
			data : SubmitBoardUpdate,
			processData : false,
			contentType : false,
			async : false,
			success : function(s) {
				if (s.trim() == "0") {
					location.reload();
					return;
				}

			},
			error : function(e) {
				alert(e);
			}
		})

	});

	$("#btnUpdatePostClose").click(function() {
		$(".post-popup.job_post.boardupdate").removeClass("active");
		$(".wrapper").removeClass("overlay");
		return false;
	});

	$("#viewprofile").click(function() {
		document.viewprofile.submit();
	});

});
var scroll = 1;
var start = 1;
var end = 3;
var scrollcomment = 4;
var boardnum = 0;
var scrolltest = 0;

function btnCommentInsert(bnum) {
	$.ajax({
		type : 'post',
		url : '/sns/CommentInsert',
		data : {
			"bnum" : bnum,
			"writer" : $("#comment_writer").val(),
			"content" : $("#comment_content").val()
		},
		success : function(s) {
			$.post("/sns/CommentList", {
				"bnum" : bnum,
				"commentstart" : 1,
				"commentend" : 5
			}, function(ff) {
				$("#commentlist" + bnum + "").empty();
				$("#commentlist" + bnum + "").append(ff);
				commentstart = 6;
				commentend = 10;
				var comment_cnt = s.trim();
				$("#comment_count" + bnum + "").empty();
				$("#comment_count" + bnum + "").append(
						"( " + comment_cnt + " )");
			});
		},
		error : function(e) {
			alert(e);
			return;
		}
	})
}

function boardlist() {
	$.post("/sns/boardlist", {
		"start" : start,
		"end" : end
	}, function(s) {
		$("#boardlist").append(s);
	});
	start += 3;
	end += 3;
}

function follow(mainid, followunum) {
	if (confirm("팔로우 하시겠습니까?")) {
		$.ajax({
			type : "post",
			url : "/sns/FollowInsert",
			data : {
				"mainid" : mainid,
				"funum" : followunum
			},
			success : function(s) {
				if (s.trim() == "0") {
					alert("추가되었습니다");
					location.reload();
					return;
				}
				if (s.trim() == "1") {
					alert("이미 추가되었습니다.");
					return;
				}
			},
			error : function(e) {
				alert("팔로우 에러");
			}
		})
	}
}

function edoptsopen(index) {

	$(".ed-options.showbtn" + index + "").toggleClass("active");

	/*
	 * if($(".ed-options.showbtn"+index+"").css("visibility")=="hidden"){
	 * $(".ed-options.showbtn"+index+"").css("visibility","visible");
	 * $(".ed-options.showbtn"+index+"").toggleClass("active"); }else{
	 * $(".ed-options.showbtn"+index+"").css("visibility","hidden");
	 * $(".ed-options.showbtn"+index+"").toggleClass("active"); }
	 */
}

function commentpopup(index) {
	$.post("/sns/CommentList", {
		"bnum" : index,
		"commentstart" : 1,
		"commentend" : 5
	}, function(s) {
		$("#commentlist" + index + "").empty();
		$("#commentlist" + index + "").append(s);
	});
	if ($(".comment-popup" + index + "").css("display") == "none") {
		$(".comment-popup" + index + "").css("display", "block");
		$(".baselist" + index + "").addClass("no-margin");
	} else {
		$(".comment-popup" + index + "").css("display", "none");
		$(".baselist" + index + "").removeClass("no-margin");
	}
}

function BoardUpdate(boardnum, boardunum, unum) {
	if (boardunum != unum) {
		alert("글쓴이와 일치하지 않습니다.");
		return;
	} else {
		$(".post-popup.job_post.boardupdate").addClass("active");
		$(".wrapper").addClass("overlay");
		$.ajax({
			type : "post",
			url : "/sns/boardData",
			data : {
				"bnum" : boardnum
			},
			dataType : "json",
			success : function(data) {
				$.each(data, function(idx, val) {
					$("#updateContent").val(val.content);
					$("#updateBnum").val(val.bnum);
					$("#updateWriter").val(val.writer);
					$("#updateUnum").val(val.unum);
				});
			},
			error : function(e) {

			}
		});
		return false;
	}
};

function BoardDelete(boardnum, boardunum, unum) {
	if (boardunum != unum) {
		alert("글쓴이와 일치하지 않습니다.");
		return;
	} else {
		if (confirm("정말 삭제 하시겠습니까?")) {
			$.post("/sns/boardDelete", {
				"bnum" : boardnum
			}, function(s) {
				alert("삭제되었습니다.");
				location.href = "/sns/index";
			});

		}
	}

}

function handleImgFileSelect(e) {
	var files = e.target.files;
	var filesArr = Array.prototype.slice.call(files);

	filesArr.forEach(function(f) {
		if (!f.type.match("image.*")) {
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

function handleImgFileSelect2(e) {
	var files = e.target.files;
	var filesArr = Array.prototype.slice.call(files);

	filesArr.forEach(function(f) {
		if (!f.type.match("image.*")) {
			alert("이미지업로드 오류!");
			return;
		}

		sel_file = f;

		var reader = new FileReader();
		reader.onload = function(e) {
			$("#BoardImgPreview2").attr("src", e.target.result);
		}
		reader.readAsDataURL(f);
	});
}

var commentstart = 6;
var commentend = 10;
function Comment_Paging(bnum, size) {
	$.post("/sns/CommentList", {
		"bnum" : bnum,
		"commentstart" : commentstart,
		"commentend" : commentend
	}, function(s) {
		$("#comment_page").append(s);
	});

	if (size < commentend) {
		$("#comment_plus").remove();
	}
	commentstart += 5;
	commentend += 5;
}

$(window).scroll(
		function() {
			if ($(window).scrollTop() + $(window).height() + 30 > $(document)
					.height()) {
				boardlist();
			}
			;
		});