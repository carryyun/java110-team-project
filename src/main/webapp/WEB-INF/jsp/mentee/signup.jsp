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
				                    <input type="text" class="form-control" name="name" id="name"  placeholder="Enter your Name"/>
							</div>
						</div>

						<div class="form-group">
							<label for="email">이메일</label>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" id="useremail" placeholder="Enter your Email"/>
							</div>
							<input type="button" id="emailcheck" value="중복체크" onclick="checkemail()"/>
						</div>

						<div class="form-group">
							<label for="username">닉네임</label>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" id="usernick" name="username" placeholder="Enter your Username"/>
								</div>
							<input id="niccheck" type="button" name="niccheck" value="중복체크" >
						</div>

						<div class="form-group">
							<label for="password">비밀번호</label>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="pwd" placeholder="Enter your Password"/>
								</div>
						</div>

						<div class="form-group">
							<label for="confirm">비밀번호 확인</label>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="confirm" placeholder="Confirm your Password"/>
								</div>
						</div>
                        <div class="selecct-but">
				            <input id="signupbtn" type="button" name="signup" value="회원 등록 완료"
				            	onclick="location.href='../auth/form.jsp'";>
				            <button id="backbtn" type="submit">뒤로 가기</button>
						</div>
					</form>
				</div><!--main-center"-->
			</div><!--main-->
		</div><!--container-->
	</div>
</div>

<script>
var idCheck = 0;
var nickCheck = 0;	
var pwdCheck = 0;
function checkemail(){
    console.log($("#useremail").val());
    if($("#useremail").val() == ${checkemail} ){
        alert("ㅇㅇ");
    } else {
        alert("ㄴㄴ");
    }
}


</script>
</body>
</html>