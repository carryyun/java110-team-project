<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" 
	trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Haru 이메일찾기</title>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
	    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	    <link rel="stylesheet" href="/css/searchuser.css">
	    
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
				<h1>Haru 이메일찾기</h1>
					<form class="searchuser" method="post" action="/app/mentee/resultemail" onsubmit="return searchCheck()" >
						<div class="form-group">
							<label for="name"> 이름 </label>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
				                    <input type="text" class="form-control" name="name" id="username" oninput="chkName()" placeholder="이름을 입력해주세요." maxlength="10"/>
							</div>
						</div>
						<div class="form-group">
							<label for="phone">핸드폰 번호</label>
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span>
									<input type="text" class="form-control" name="phone" id="userphone" maxlength="13" placeholder="핸드폰번호를 입력해주세요."/>
							</div>
						</div>
                        <div class="selecct-but">
				            <input type="submit" class="searchemail" value=이메일찾기 onclick="wow();">
				            <input type="button" id="backbtn" onclick="gohome();" value=뒤로가기>
						</div>
					</form>
				</div><!--main-center"-->
			</div><!--main-->
		</div><!--container-->
	</div>
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