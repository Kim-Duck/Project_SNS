$(function () {		
	$("#userLogout").click(function(){
		sessionStorage.clear();
		location.href="/sns/Logout";
	});
	
})