$(function () {		
	
});


function viewMyFriendProfile(user_id){
    var $form = $('<form></form>');
    $form.attr('action', '/sns/InfoPage');
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