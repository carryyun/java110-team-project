<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" 
	trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
	.col-sm-4{
		width: 23.33333333% !important;
	}
</style>
<meta charset="UTF-8">
<title>필수항목</title>
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
		<link href="/css/signup.css" rel="stylesheet">
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		<script src="/vendor/jquery/jquery.min.js"></script>
</head>
<body style="background-color: #f2f4f7">
<div class="container">
<form class="fbsignup" method="post" id="uploadForm" action="/app/mentee/fbsignup" onsubmit="return signupCheck()">
        <!---heading---->
        <header class="heading"> 필수 입력 사항</header>
        <hr />
        <!---Form starting---->
        <div class="row">

            <!--- For nickname---->
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-4">
                        <label class="nick">닉네임</label> </div>
                    <div class="col-sm-8">
                        <input type="text" name="nick" id="usernick" placeholder="닉네임을 입력해 주세요" class="form-control " oninput="checknick()" maxlength="10" style="width: 250px;">
                    </div>
                </div>
            </div>
        </div><!-- row -->

            <div class="row">
            <div class="col-sm-12">
                   <hr/>
                    <div class="col-sm-6">
                        <input type="button" class="signupbtn btn btn-warning" value="회원가입" onclick="wow();">
                    </div>

                    <div class="col-sm-6">
                        <input type="button" class="backbtn btn btn-warning" onclick="gohome();" value="뒤로가기">
                    </div>
            </div>
            </div><!-- button row-->
            
        </form>
    </div>

<script>
var nickCheck = 0;  // 닉네임 중복체크 , 유효성검사

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

function wow(){
	if(signupCheck() == false){
		swal({
		        text: "회원정보를 다시 입력해주세요",
		        timer:3000,
		        button:"확인"
        	});
	}else if(signupCheck() == true){
		swal({
		        icon: "success",
		        text: $("#usernick").val() + "님 환영합니다^^",
		        timer:3000,
		        button:"확인"
		        }).then((value) => {
		        	document.getElementById('uploadForm').submit();
		        });
	}
}

function signupCheck() {
    var nickname = $("#usernick").val();
    if(nickname=="") {
        return false;
    }else if(nickCheck == 0){
		return false;
	}else if(nickCheck == 1){
        return true;
	}
}


</script>
</body>
</html>