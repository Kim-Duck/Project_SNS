$(function () {		
	$("#userLogout").click(function() {
		location.href="/sns/Logout";
		sessionStorage.clear();
	});
	
	$("#viewMypage").click(function() {		
    	document.viewprofile2.submit();
	});
	
})