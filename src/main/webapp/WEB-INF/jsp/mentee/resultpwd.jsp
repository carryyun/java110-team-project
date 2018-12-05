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
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="/css/signup.css" rel="stylesheet">
</head>
<body>
<div class="container">
        <!---heading---->
        <header class="heading" style="padding-top:15%; "> 이메일로 임시 번호 전송</header>
        <form class="searchuser" method="post" action="/app/mentee/resultemail" onsubmit="return searchCheck()">
            
            <!---Form starting---->
            <div class="row">

                <!--- For Name---->
                <div class="row">
                <hr />
                    <div class="col-sm-12">
                        <div class="col-sm-4">
                            <label for="useremail" class="mail">이메일 전송</label> </div>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" name="email" value="${value}" id="useremail" readonly style="width: 250px;">
                        </div>
                    </div>
                </div>




                <div class="row">
                    <div class="col-sm-12">
                        <hr />
                        <div class="col-sm-12">
                            <input type="button" class="btn btn-warning" id="backbtn" onclick="gohome();" value=뒤로가기 style="position:relative; float:right;">
                        </div>
                    </div>
                </div><!-- button row-->
            </div>

        </form>
    </div>
    
    <script>

function gohome(){
    location.href="/app/auth/form";
}
</script>
</body>
</html>