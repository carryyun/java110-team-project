<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 찾기</title>
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
        <header class="heading" style="padding-top:15%; "> 이메일 찾기</header>
        <form class="searchuser" method="post" action="/app/mentee/resultemail" onsubmit="return searchCheck()" >
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
                        <label class="phone">핸드폰 번호</label></div>
                    <div class="col-sm-8">
                        <input type="text" name="phone" id="userphone" placeholder="핸드폰 번호를 입력하세요" maxlength="13" class="form-control" style="width: 250px;">
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
                        <input type="submit" class="searchemail btn btn-warning" value=이메일찾기 onclick="wow();">
                    </div>

                    
            </div>
            </div><!-- button row-->
            
        </form>
    </div>
    <script>

    function autoHypenPhone(str){
        str = str.replace(/[^0-9]/g, '');
        var tmp = '';
        if( str.length < 4){
          return str;
        }else if(str.length < 7){
          tmp += str.substr(0, 3);
          tmp += '-';
          tmp += str.substr(3);
          return tmp;
        }else if(str.length < 11){
          tmp += str.substr(0, 3);
          tmp += '-';
          tmp += str.substr(3, 3);
          tmp += '-';
          tmp += str.substr(6);
          return tmp;
        }else{        
          tmp += str.substr(0, 3);
          tmp += '-';
          tmp += str.substr(3, 4);
          tmp += '-';
          tmp += str.substr(7);
          return tmp;
        }
        return str;
      }

var cellPhone = document.getElementById('userphone');
userphone.onkeyup = function(event){
event = event || window.event;
var _val = this.value.trim();
this.value = autoHypenPhone(_val) ;
}

var nameCheck = 0; // 유효성검사

function chkName(){ 
    var reg_name = /^[가-힣]{2,6}$/;
    var inputed2 = $("#username").val();
    var x = reg_name.test(inputed2);
    if(inputed2==""){
        nameCheck = 0;
    }else if(x == true){
        nameCheck = 1;
        searchCheck();  
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
}

function searchCheck() {
    var phone = $("#userphone").val();
    var name = $("#username").val();
    if(phone=="" || name=="") {
        return false;
    }else if(nameCheck == 0 || phone.length <= 9){
        return false;
    }else if(nameCheck == 1 && phone.length > 9 ){
        return true;
    }
}


</script>

</body>
</html>