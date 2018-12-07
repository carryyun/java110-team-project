<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <link href="/css/signup.css" rel="stylesheet">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="/vendor/jquery/jquery.min.js"></script>
</head>
<body>
<div class="container">
        <!---heading---->
        <header class="heading" style="padding-top:15%; "> 비밀번호 찾기</header>
        <form class="searchuser" method="post" action="resultpwd" onsubmit="return searchCheck()" >
        <hr />
        <!---Form starting---->
        <div class="row">

            <!--- For Name---->
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-4">
                        <label class="name">이름</label> </div>
                    <div class="col-sm-8">
                        <input type="text" name="name" id="username" placeholder="이름을 입력해 주세요" class="form-control " style="width: 250px;" oninput="chkName()" maxlength="10">
                    </div>
                </div>
            </div>

            <!-----------For Phone number-------->
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-4">
                        <label class="mail">이메일</label></div>
                    <div class="col-sm-8">
                        <input type="text" name="email" id="useremail" placeholder="이메일 입력하세요" class="form-control" style="width: 250px;" oninput="chkEmail()">
                    </div>
                </div>
            </div>
            </div><!-- row -->

            
            <div class="row">
            <div class="col-sm-12">
                   <hr/>
                    <div class="col-sm-6">
                        <input type="button" class="btn btn-warning"id="backbtn" onclick="gohome();" value=뒤로가기>
                    </div>
                    
                    <div class="col-sm-6">
                        <input type="submit" class="searchemail btn btn-warning" value=비밀번호찾기 onclick="wow();">
                    </div>

                    
            </div>
            </div><!-- button row-->
            
        </form>
    </div>
    
    <script>
var nameCheck = 0; // 유효성검사
var emailCheck = 0;

function chkEmail() {
    var inputed2 = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    var inputed = $("#useremail").val();
    var y = inputed2.test(inputed);
    if(inputed==""){
        emailCheck = 0; 
    }else if(y == true){
        emailCheck = 1;
    }else{
        emailCheck = 0;
    }
}

function chkName(){ 
    var reg_name = /^[가-힣]{2,6}$/;
    var inputed2 = $("#username").val();
    var x = reg_name.test(inputed2);
    if(inputed2==""){
        nameCheck = 0;
    }else if(x == true){
        nameCheck = 1;
    }else{
        nameCheck = 0;
    }
}

function gohome(){
    location.href="/app/auth/form";
}

function wow(){
    if(searchCheck() == false)
        alert("회원정보를 다시 입력해주세요.");
    smtpTransport.sendMail(mailOpt, function(err, res) {
          if( err ) {
              console.log(err);
          }else{
              console.log('Message send :'+ res);
          }

          smtpTransport.close();
        })
}

function searchCheck() {
    var email = $("#useremail").val();
    var name = $("#username").val();
    if(email=="" || name=="") {
        return false;
    }else if(nameCheck == 0 || emailCheck == 0){
        return false;
    }else if(nameCheck == 1 && emailCheck == 1){
        return true;
    }
}




</script>

</body>
</html>