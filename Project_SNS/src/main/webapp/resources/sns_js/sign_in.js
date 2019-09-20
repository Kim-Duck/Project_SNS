$(function () {
	$("#btnSubmit").click(function () {
		var SubmitSignUp = $("#SubmitSignUp");
		SubmitSignUp.attr("action","/sns/signup");
		SubmitSignUp.attr("method","POST");
		SubmitSignUp.submit();
	});
	$("#btnLogin").click(function () {
		var Login = $("#LoginTest");
		Login.attr("action","/sns/index");
		Login.attr("method","GET");
		Login.submit();
	});
	
})