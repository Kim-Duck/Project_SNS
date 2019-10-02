$(function () {		
	
});

function FriendRequest(main_id,friend_id){
	if(confirm("친구요청을 하시겠습니까?")){
		$.post("/sns/FriendRequest",{"main_id":main_id,"friend_id":friend_id});
		location.reload();
		return;
	}
}

function FriendAgree(user_id,friend_id){
	if(confirm("친구요청을 수락하시겠습니까?")){
		$.post("/sns/FriendAgree",{"user_id":user_id,"friend_id":friend_id});
		location.reload();
		return;
	}else{
		alert("매정한 사람..");
		return;
	}
}

function FriendRequestIng(){
	alert("받아...주실꺼예요...ㅎ..조금만 기다려보세요..");
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