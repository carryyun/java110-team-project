<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" 
	trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Haru 회원 가입</title>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	    <!------ 위에는 회원가입에 필요한 것들  ---------->
	    
	    <link rel="stylesheet" href="/css/sign.css">
</head>
<body style="background-color: #f2f4f7">
   <div id="wrap">
		<div class="container mx-auto px-0">
			<!-- Header (스크립트로 임시 inclue) -->
			<div id="row">
    <div class="container col-lg-12 mx-auto">
    <!-- <div id="headerMain"></div> -->
    <jsp:include page="../header.jsp"></jsp:include>
    </div>
    </div>

	<div class="container">
			<div class="main">
				<div class="main-center">
				<h1>Haru 회원가입</h1>
					<form class="signup" method="post" action="/app/mentee/signup" onsubmit="return signupCheck()" >
						<div class="form-group">
							<label for="name"> 이름 </label>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
				                    <input type="text" class="form-control" name="name" id="username" oninput="chkName()" placeholder="이름을 입력해주세요." maxlength="10"/>
							</div>
						</div>

						<div class="form-group">
							<label for="email">이메일</label>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="email" class="form-control" name="email" id="useremail" oninput="checkemail()" placeholder="이메일을 입력해주세요."/>
							</div>
						</div>

						<div class="form-group">
							<label for="username">닉네임</label>
								<div class="input-group"> 
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="nick" id="usernick" oninput="checknick()" placeholder="닉네임을 입력해주세요 "/>
								</div>
						</div>

						<div class="form-group">
							<label for="password">비밀번호</label>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="pwd" id="pass" oninput="checkPwd()" placeholder="8자이상 입력해주세요."/>
								</div>
						</div>

						<div class="form-group">
							<label for="confirm">비밀번호 확인</label>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" id="repwd" oninput="checkPwd()" placeholder="8자이상 입력해주세요."/>
								</div>
						</div>
                        <div class="selecct-but">
				            <input type="submit" class="signupbtn" value=회원가입 onclick="wow();">
				            <input type="button" id="backbtn" onclick="gohome();" value=뒤로가기>
						</div>
					</form>
				</div><!--main-center"-->
			</div><!--main-->
		</div><!--container-->
	</div>
</div>

<script>
var nameCheck = 0; // 유효성검사
var emailCheck = 0; // 이메일 중복체크 , 유효성검사
var pwdCheck = 0; // 패스워드 , 패스워드확인 값이 같은지 체크용
var nickCheck = 0;  // 닉네임 중복체크 , 유효성검사

function chkName(){	
	var reg_name = /^[가-힣]{2,4}$/;
	var inputed2 = $("#username").val();
	var x = reg_name.test(inputed2);
	if(inputed2==""){
		nameCheck = 0;
	}else if(x == true){
		nameCheck = 1;
        signupCheck();	
	}else{
		nameCheck = 0;
	}
	    	
}

function gohome(){
	location.href="/app/auth/form";
}

function checknick(){
	var emailChk = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\*]+$/;
	var inputed2 = $("#usernick").val();
	var x = emailChk.test(inputed2);
	$.ajax({
		data : {
			nick : inputed2
		},
		url : "checknick.do",
		success : function(data){
			if(inputed2=="" && data == '0'){
				$("#usernick").css("background-color", "#FA5858");
				nickCheck = 0;
			}else if(data =='0' && x == true){
				$("#usernick").css("background-color", "#B0F6AC");
				nickCheck = 1;
                signupCheck();
			}else if(data =='1'){
				$("#usernick").css("background-color", "#FA5858");
				nickCheck = 0;
			}else if(data =='1' && x == false){
				$("#usernick").css("background-color", "#FA5858");
				nickCheck = 0;
			}
		}
	});
}


function checkemail() {
	var inputed2 = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    var inputed = $("#useremail").val();
	var y = inputed2.test(inputed);
    $.ajax({
        data : {
            email : inputed,
        },
        url : "checkemail.do",
        success : function(data) {
            if(inputed=="" && data=='0') {
                $("#useremail").css("background-color", "white");
                emailCheck = 0;
            } else if (data == '0' && y == true) {
                	emailCheck = 1;
	                $("#useremail").css("background-color", "#B0F6AC");
                    signupCheck();
            } else if (data == '1') {
                $("#useremail").css("background-color", "#FA5858");
                emailCheck = 0;
            }else if(data=='0' && y == false) {
                $("#useremail").css("background-color", "#FA5858");
                emailCheck = 0;
            }
        }
    });
}
// 비밀번호 비밀번호 확인이 같은값인지  체크
function checkPwd() {
    var inputed = $('#pass').val();
    var reinputed = $('#repwd').val();
    if(reinputed=="" && (inputed != reinputed || inputed == reinputed)){
        $("#repwd").css("background-color", "#FA5858");
    }else if (inputed == reinputed && (inputed.length >= 8)) {
        $("#repwd").css("background-color", "#B0F6AC");
        pwdCheck = 1;
        signupCheck();
    } else if (inputed != reinputed) {
        pwdCheck = 0;
        $("#repwd").css("background-color", "#FA5858");
        
    }
}

function wow(){
	if(signupCheck() == false){
		alert("회원정보를 다시 입력해주세요.");
	}else if(signupCheck() == true){
		alert($("#username").val() + "님 회원가입을 축하드립니다^^");
	}
}

function signupCheck() {
    var nickname = $("#usernick").val();
    var email = $("#useremail").val();
    var pwd = $("#pass").val();
    var repwd = $("#repwd").val();
    var name = $("#username").val();
    if(nickname=="" || email=="" || name=="" || pwd=="" || repwd=="" || pwd.length < 8) {
        return false;
    }else if(emailCheck == 0 || pwdCheck == 0 || nickCheck == 0 || nameCheck == 0 || pwd.length < 8){
		return false;
	}else if(emailCheck == 1 && pwdCheck == 1 && nickCheck == 1 && nameCheck == 1){
        return true;
	}
}


</script>
</body>
</html>