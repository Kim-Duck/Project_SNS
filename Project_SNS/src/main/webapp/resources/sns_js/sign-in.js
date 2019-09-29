
var userIdCheck = RegExp(/^((?=.*[a-zA-Z])(?=.*[0-9])).{5,15}$/);

var nameCheck = RegExp(/^[가-힣]{2,6}$/);

var passwdCheck = RegExp(/^((?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^*()\-_=+\\\|\[\]{};:\'",.<>\/?])).{8,16}$/);

var phoneCheck = RegExp(/^\d{3}-\d{3,4}-\d{4}$/);

var emailCheck = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);

var overlapIdCheck = 0;

$(function () {	
	
	$("#btnOverLabId").click(function() {
		$.ajax({
			type:'post',
			url:'/sns/OverLabId/'+$("#signup_user_id").val(),
			data:{"user_id":$("#signup_user_id").val()},
			success:function(s){
				if(s.trim()=="0"){
					alert("중복 입니다.");
					overlapIdCheck = 0;
					return;
				}else if(s.trim()=="1"){
					alert("사용 가능한 아이디입니다.");
					overlapIdCheck = 1;
					return;
				}
			},
			error:function(e){
				alert("ID중복확인 오류");
			}
		})
	});
	
	//회원가입
	$("#btnSubmitSignUp").click(function () {
		
		if(!userIdCheck.test($("#signup_user_id").val())){
			alert("아이디는 영문+숫자로 5~15자 입니다.");
			$("#signup_user_id").val("");
			$("#signup_user_id").focus();
			return;
		}
		if(!nameCheck.test($("#signup_user_name").val())){			
			alert("이름은 한글로 2~6자 입니다.");
			$("#signup_user_name").val("");
			$("#signup_user_name").focus();
			return;
		}
		if(!phoneCheck.test($("#signup_user_phone").val())){			
			alert("ex) 010-1111-1111 방식으로 입력해주세요.");
			$("#signup_user_phone").val("");
			$("#signup_user_phone").focus();
			return;
		}
		if(!emailCheck.test($("#signup_user_email").val())){			
			alert("올바른 이메일 형식으로 입력해주세요.");
			$("#signup_user_email").val("");
			$("#signup_user_email").focus();
			return;
		}
		if(!passwdCheck.test($("#signup_user_pwd").val())){			
			alert("비밀번호는 영문+숫자+특수기호 8~16자 입니다.");
			$("#signup_user_pwd").val("");
			$("#signup_user_pwd").focus();
			return;
		}
		if($("#signup_user_pwd").val()!=$("#signup_user_pwd_2").val()){
			alert("비밀번호 확인칸을 다시 확인해주세요");
			$("#signup_user_pwd_2").val("");
			$("#signup_user_pwd_2").focus();
			return;			
		}if(overlapIdCheck==0){
			alert("ID중복확인을 해주세요!");
			return;
		}else if(overlapIdCheck==1){
			overlapIdCheck=0;
		}
		
		alert("가입이 완료되었습니다!");
		var SubmitSignUp = $("#SubmitSignUp");
		SubmitSignUp.attr("action","/sns/signup");
		SubmitSignUp.attr("method","POST");
		SubmitSignUp.submit();
	});
	
	
	//로그인
	$("#btnLogin").click(function () {		
		var LoginID = $("#login_user_id").val();
		var LoginPWD = $("#login_user_pwd").val();
		
		if(LoginID == "" || LoginPWD == ""){
			alert("로그인 정보를 입력해주세요.");
			$("#login_user_id").val("");
			$("#login_user_pwd").val("");
			return
		};
		
		$.ajax({
			type:'post',
			url:'/sns/LoginCheck/'+LoginID+'/'+LoginPWD,
			data:{"user_id":LoginID,"user_pwd":LoginPWD},
			success:function(d){				
				if(d.trim() == "0"){
					alert("아이디 비밀번호를 확인해주세요.");
					$("#login_user_id").val("");
					$("#login_user_pwd").val("");
					$("#login_user_id").focus();
					return;
				}else{
					alert("로그인 성공");
					sessionStorage.setItem("user_num",d.trim());
					var Login = $("#LoginForm");
					Login.attr("action","/sns/index");
					Login.attr("method","POST");
					Login.submit();					
				}
			},
			error:function(e){	
				alert("오류!오류!오류!");
			}
		});	
		
	});
	
})
