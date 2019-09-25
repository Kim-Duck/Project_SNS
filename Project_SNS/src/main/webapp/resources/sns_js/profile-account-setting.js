var nameCheck = RegExp(/^[가-힣]{2,6}$/);

var passwdCheck = RegExp(/^((?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^*()\-_=+\\\|\[\]{};:\'",.<>\/?])).{8,16}$/);

var phoneCheck = RegExp(/^\d{3}-\d{3,4}-\d{4}$/);

var emailCheck = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);

$(function () {		
	$("#btnUserUpdate").click(function () {
		if(confirm("변경하시겠습니까?")){
			if(!nameCheck.test($("#user_name").val())){			
				alert("이름은 한글로 2~6자 입니다.");
				$("#user_name").val("");
				$("#user_name").focus();
				return;
			}
			if(!phoneCheck.test($("#user_phone").val())){			
				alert("ex) 010-1111-1111 방식으로 입력해주세요.");
				$("#user_phone").val("");
				$("#user_phone").focus();
				return;
			}
			if(!emailCheck.test($("#user_email").val())){			
				alert("올바른 이메일 형식으로 입력해주세요.");
				$("#user_email").val("");
				$("#user_email").focus();
				return;
			}
			if(!passwdCheck.test($("#user_pwd").val())){			
				alert("비밀번호는 영문+숫자+특수기호 8~16자 입니다.");
				$("#user_pwd").val("");
				$("#user_pwd").focus();
				return;
			}
			if($("#user_pwd").val()!=$("#repeat_user_pwd").val()){
				alert("비밀번호 확인칸을 다시 확인해주세요.");
				$("#repeat_user_pwd").val("");
				$("#repeat_user_pwd").focus();
				return;	
			}
			
			var SubmitUserUpdate = $("#SubmitUserUpdate");
			SubmitUserUpdate.attr("action","/sns/UserUpdate");
			SubmitUserUpdate.attr("method","POST");
			SubmitUserUpdate.submit();
			
			
			alert("변경되었습니다. 다시 로그인 해주세요!");
			location.href="/sns/Logout";
			sessionStorage.clear();
		}
	});
	
})