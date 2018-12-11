<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 </title>

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
<form class="classadd"  method="post" action="sign" id="myfrm" >
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
                        <input type="email" name="email" id="useremail" placeholder="이메일을 입력해 주세요" maxlength="25" class="form-control" oninput="checkemail()" style="width: 250px;">
                    </div>
                </div>
            </div>
            <!-----For Password and confirm password---->
            <div class="col-sm-12">
                <div class="row">
                    <div class="col-sm-4">
                        <label class="pass">비밀번호</label></div>
                    <div class="col-sm-8">
                        <input type="password" name="pwd" id="pass" placeholder="비밀번호를 8자이상 입력해 주세요" maxlength="25" class="form-control" oninput="checkPwd()" style="width: 250px;">
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
                        <input type="button" class="backbtn btn btn-warning" onclick="gohome();" value="뒤로가기">
                    </div>
                    
                    <div class="col-sm-6">
                        <input type="button" onclick="signupCheck();" class="signupbtn btn btn-warning" value="회원가입" onclick="wow();">
                    </div>

                    
            </div>
            </div><!-- button row-->
            
        </form>
    </div>
    
 	<script>
var nameCheck = 0; // 유효성검사
var pwdCheck = 0; // 패스워드 , 패스워드확인 값이 같은지 체크용
var emailCheck = 0;
var nickCheck = 0;




function chkName(){	
	var reg_name = /^[가-힣]{2,4}$/;
	var inputed2 = $("#username").val();
	var x = reg_name.test(inputed2);
	if(inputed2==""){
		nameCheck = 0;
	}else if(x == true && inputed2.length > 1){
		nameCheck = 1;	
	}else{
		nameCheck = 0;
	}
	    	
}




function gohome(){
	 /* location.href="/app/auth/form"; */
     history.back();
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
			}else if(data =='0' && x == true && inputed2.length > 0){
				$("#usernick").css("background-color", "#B0F6AC");
				nickCheck = 1;
			}else if(data =='1'){
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
	console.log(y);
    $.ajax({
        data : {
            email : inputed,
        },
        url : "checkemail.do",
        success : function(data) {
            if(inputed=="" && data=='0' ) {
                $("#useremail").css("background-color", "white");
                emailCheck = 0;
            } else if (data == '0' && y == true && $("#useremail").val().length > 0) {
                $("#useremail").css("background-color", "#B0F6AC");
                emailCheck = 1;
            } else if (data == '1') {
                $("#useremail").css("background-color", "#FA5858");
                emailCheck = 0;
            }else if(data=='0') {
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
    if(reinputed=="" && (inputed != reinputed || inputed == reinputed || $('#repwd').val().length < 8 || $('#pass').val().length < 8)){
        $("#repwd").css("background-color", "#FA5858");
        pwdCheck = 0;
    }else if (inputed == reinputed && $('#pass').val().length > 7) {
        $("#repwd").css("background-color", "#B0F6AC");
        pwdCheck = 1;
    } else if (inputed != reinputed) {
        pwdCheck = 0;
        $("#repwd").css("background-color", "#FA5858");
        
    }
}

function signupCheck() {
    if($("#usernick").val() == "" || $("#useremail").val()=="" || $("#username").val() == "" || $("#pass").val() == "" || $("#repwd").val() == "") {
    	swal({
	        text: "공백을 확인해주세요.",
	        button:"확인"
	      });
        return false;
    }else if(nameCheck == 0){
    	swal({
	        text: "이름 2~4글자 입력해주세요.",
	        button:"확인"
	      });
		return false;
    }else if(emailCheck == 0){
    	swal({
	        text: "이메일을 확인해주세요..",
	        button:"확인"
	    });
		return false;
    }else if(pwdCheck == 0){
    	swal({
	        text: "비밀번호 값을 체크해주세요.",
	        button:"확인"
	      });
		return false;
    }else if(nickCheck == 0){
    	swal({
	        text: "이미 사용중인 닉네임입니다.",
	        button:"확인"
	      });
		return false;
    }else if($("#pass").val().length < 8){
		swal({
	        text: "비밀번호는 8자 이상입력해주세요..",
	        button:"확인"
	      });
		return false;
	}else {
      		  swal({
      		        icon: "success",
      		        text: $("#username").val() + "님 회원가입을 축하드립니다^^",
      		        timer:3000,
      		        button:"확인"
      		        }).then((value) => {
      		       		document.getElementById('myfrm').submit();
      		        });
	}
}


</script>

</body>
</html>