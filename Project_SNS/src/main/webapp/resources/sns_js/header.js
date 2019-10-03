$(function () {		
	$("#userLogout").click(function() {
		location.href="/sns/Logout";
		sessionStorage.clear();
	});
	
	$("#viewMypage").click(function() {		
    	document.viewprofile2.submit();
	});
	
	
	
})

function friendpagego(user_id){
	 var $form = $('<form></form>');
	    $form.attr('action', '/sns/Friend');
	    $form.attr('method', 'post');    
	    $form.appendTo('body');    
	    
	    var keyword = $('<input type="hidden" value='+user_id+' name="user_id">');

	    $form.append(keyword);
	    $form.submit();
}