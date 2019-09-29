$(function () {			

});

function FriendRequest(main_id,friend_id){
	if(confirm("친구요청을 하시겠습니까?")){
		$.post("/sns/FriendRequest",{"main_id":main_id,"friend_id":friend_id});
		location.reload();
		return;
	}
}

function FriendRequestIng(){
	alert("받아...주실꺼예요...ㅎ..조금만 기다려보세요..");
}

function viewSearchProfile(user_id){
    var $form = $('<form></form>');
    $form.attr('action', '/sns/Mypage');
    $form.attr('method', 'post');    
    $form.appendTo('body');    
    
    var keyword = $('<input type="hidden" value='+user_id+' name="user_id">');

    $form.append(keyword);
    $form.submit();
}

