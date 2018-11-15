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
	    
	    <link rel="stylesheet" href="/css/Sign.css">
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
				<h1>Haru</h1>
					<form class="" method="post" action="#">
						
						<div class="form-group">
							<label for="name"> 이름 </label>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
				                    <input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name" max=20/>
							</div>
						</div>

						<div class="form-group">
							<label for="email">이메일</label>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" id="useremail" oninput="checkemail()" placeholder="Enter your Email"/>
							</div>
						</div>

						<div class="form-group">
							<label for="username">닉네임</label>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" id="usernick" oninput="checknick()" placeholder="Enter your Username"/>
								</div>
						</div>

						<div class="form-group">
							<label for="password">비밀번호</label>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" id="pass" oninput="checkPwd()" placeholder="Enter your Password"/>
								</div>
						</div>

						<div class="form-group">
							<label for="confirm">비밀번호 확인</label>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" id="repwd" oninput="checkPwd()" placeholder="Confirm your Password"/>
								</div>
						</div>
                        <div class="selecct-but">
				            <button type="submit" class="signupbtn" disabled="disabled" oninput="signupCheck()">Sign Up</button>
				            <button id="backbtn" onclick="location.href='../auth/form.jsp'">Go Home</button>
						</div>
					</form>
				</div><!--main-center"-->
			</div><!--main-->
		</div><!--container-->
	</div>
</div>

<script>
var idCheck = 0;
var pwdCheck = 0;
var nickCheck = 0;

function checknick(){
	var inputed2 = $("#usernick").val();
	console.log(inputed2);
	$.ajax({
		data : {
			nick : inputed2
		},
		url : "checknick.do",
		success : function(data){
			console.log(data);
			if(inputed2=="" && data == '0'){
				$(".signupbtn").prop("disabled", true);
                $(".signupbtn").css("background-color", "#aaaaaa");
				$("#usernick").css("background-color", "#BEF781");
				nickCheck = 0;
			}else if(data =='0'){
				$("#usernick").css("background-color", "#BEF781");
				nickCheck = 1;
				if(idCheck==1 && pwdCheck == 1 && nickCheck == 1) {
                    $(".signupbtn").prop("disabled", false);
                    $(".signupbtn").css("background-color", "#4CAF50");
                    signupCheck();
                } 
			}else if(data =='1'){
				$(".signupbtn").prop("disabled", true);
                $(".signupbtn").css("background-color", "#aaaaaa");
				$("#usernick").css("background-color", "#FA5858");
				nickCheck = 0;
			}
			
		}
	});
}

function checkemail() {
    var inputed = $("#useremail").val();
    $.ajax({
        data : {
            email : inputed,
        },
        url : "checkemail.do",
        success : function(data) {
            if(inputed=="" && data=='0') {
                $(".signupbtn").prop("disabled", true);
                $(".signupbtn").css("background-color", "#aaaaaa");
                $("#useremail").css("background-color", "#BEF781");
                idCheck = 0;
            } else if (data == '0') {
                $("#useremail").css("background-color", "#BEF781");
                idCheck = 1;
                if(idCheck==1 && pwdCheck == 1 && nickCheck == 1) {
                    $(".signupbtn").prop("disabled", false);
                    $(".signupbtn").css("background-color", "#4CAF50");
                    signupCheck();
                } 
            } else if (data == '1') {
                $(".signupbtn").prop("disabled", true);
                $(".signupbtn").css("background-color", "#aaaaaa");
                $("#useremail").css("background-color", "#FA5858");
                idCheck = 0;
            } 
        }
    });
}

function checkPwd() {
    var inputed = $('#pass').val();
    var reinputed = $('#repwd').val();
    if(reinputed=="" && (inputed != reinputed || inputed == reinputed)){
        $(".signupbtn").prop("disabled", true);
        $(".signupbtn").css("background-color", "#aaaaaa");
        $("#repwd").css("background-color", "#FFCECE");
    }
    else if (inputed == reinputed) {
        $("#repwd").css("background-color", "#B0F6AC");
        pwdCheck = 1;
        if(idCheck==1 && pwdCheck == 1 && nickCheck ==1) {
            $(".signupbtn").prop("disabled", false);
            $(".signupbtn").css("background-color", "#4CAF50");
            signupCheck();
        }
    } else if (inputed != reinputed) {
        pwdCheck = 0;
        $(".signupbtn").prop("disabled", true);
        $(".signupbtn").css("background-color", "#aaaaaa");
        $("#repwd").css("background-color", "#FFCECE");
        
    }
}

//닉네임과 이메일 입력하지 않았을 경우 가입버튼 비활성화
function signupCheck() {
    var nickname = $("#nickname").val();
    var email = $("#email").val();
    var pwd = $("#pass").val();
    var repwd = $("#repwd").val();
    var name = $("#name").val();
    if(nickname=="" || email=="" || name=="" || pwd=="" || repwd=="") {
        $(".signupbtn").prop("disabled", true);
        $(".signupbtn").css("background-color", "#aaaaaa");
    } else {
    }
}



</script>
</body>
</html>