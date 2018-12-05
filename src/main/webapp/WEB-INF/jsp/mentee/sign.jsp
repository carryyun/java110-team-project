<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
<form class="signup" method="post" action="/app/mentee/signup" onsubmit="return signupCheck()" >
        <!---heading---->
        <header class="heading"> 회원 가입</header>
        <hr />
        <!---Form starting---->
        <div class="row">

            <!--- For Name---->
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-4">
                        <label class="name">이름</label> </div>
                    <div class="col-sm-8">
                        <input type="text" name="name" id="username" placeholder="이름을 입력해 주세요" oninput="chkName()" class="form-control" maxlength="10" style="width: 250px;" >
                    </div>
                </div>
            </div>

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

            <!-----For email---->
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-4">
                        <label class="mail">이메일</label></div>
                    <div class="col-sm-8">
                        <input type="email" name="email" id="useremail" placeholder="이메일을 입력해 주세요" class="form-control" oninput="checkemail()" style="width: 250px;">
                    </div>
                </div>
            </div>
            <!-----For Password and confirm password---->
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-4">
                        <label class="pass">비밀번호</label></div>
                    <div class="col-sm-8">
                        <input type="password" name="pwd" id="pass" placeholder="비밀번호를 입력해 주세요" class="form-control" oninput="checkPwd()" style="width: 250px;">
                    </div>
                </div>
            </div>

            <!-----For Password and confirm password---->
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-4">
                        <label class="repass">비밀번호 확인</label></div>
                    <div class="col-sm-8">
                        <input type="password" name="repwd" id="repwd" placeholder="비밀번호를 다시 입력해 주세요" class="form-control" oninput="checkPwd()" style="width: 250px;">
                    </div>
                </div>
            </div>
            </div><!-- row -->

            <!-----------For Phone number-------->
            <div class="row">
            <div class="col-sm-12">
                   <hr/>
                    <div class="col-sm-6">
                        <input type="submit" class="signupbtn btn btn-warning" value="회원가입" onclick="wow();">
                    </div>

                    <div class="col-sm-6">
                        <input type="button" class="backbtn btn btn-warning" onclick="gohome();" value="뒤로가기">
                    </div>
            </div>
            </div><!-- button row-->
            
        </form>
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
    }else if (inputed == reinputed) {
        $("#repwd").css("background-color", "#B0F6AC");
        pwdCheck = 1;
        signupCheck();
    } else if (inputed != reinputed) {
        pwdCheck = 0;
        $("#repwd").css("background-color", "#FA5858");
        
    }
}

var signChk = false;


function wow(){
    if(signupCheck() == false){
        console.log(signupCheck());
        swal ( "Oops" ,  "회원정보를 다시 입력해주세요." ,  "error" );
    }else if(signupCheck() == true){
        console.log(signupCheck());
        swal({
            icon: "success",
            text: $("#username").val() + "님 회원가입을 축하드립니다^^"
          });
        setTimeout(function() {
            location.href="/app/auth/form";
          }, 3000);
        
        /* alert($("#username").val() + "님 회원가입을 축하드립니다^^"); */
    }
}

function signupCheck() {
    var nickname = $("#usernick").val();
    var email = $("#useremail").val();
    var pwd = $("#pass").val();
    var repwd = $("#repwd").val();
    var name = $("#username").val();
    if(nickname=="" || email=="" || name=="" || pwd=="" || repwd=="") {
        return false;
    }else if(emailCheck == 0 || pwdCheck == 0 || nickCheck == 0 || nameCheck == 0){
        return false;
    }else if(emailCheck == 1 && pwdCheck == 1 && nickCheck == 1 && nameCheck == 1){
        return true;
        /* location.href="/app/auth/form"; */
    }
}


</script>

</body>
</html>