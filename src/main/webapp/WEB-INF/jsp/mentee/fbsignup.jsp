<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" 
	trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 화면</title>
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
				<h1>필수 입력 사항</h1>
					<form class="fbsignup" method="post" action="/app/mentee/fbsignup" onsubmit="return signupCheck()" >
						<div class="form-group">
							<label for="username">닉네임</label>
								<div class="input-group"> 
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="nick" id="usernick" oninput="checknick()" placeholder="닉네임을 입력해주세요 "/>
								</div>
						</div>
                        <div class="selecct-but">
				            <input type="submit" class="signupbtn" value=확인 onclick="wow();">
				            <input type="button" id="backbtn" onclick="gohome();" value=뒤로가기>
						</div>
					</form>
				</div><!--main-center"-->
			</div><!--main-->
		</div><!--container-->
	</div>
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
		alert("회원정보를 다시 입력해주세요.");
	}else if(signupCheck() == true){
		alert($("#usernick").val() + "님 환영합니다^^");
		location.href="/app/auth/form";
	}
}

function signupCheck() {
    var nickname = $("#usernick").val();
    if(nickname=="") {
        return false;
    }else if(nickCheck == 0){
		return false;
	}else if(nameCheck == 1){
        return true;
	}
}


</script>
</body>
</html>