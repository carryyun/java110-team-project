<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
    <title>Login Page</title>
   <!--Made with love by Mutiullah Samim -->
   
    <!--Bootsrap 4 CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="/css/form.css">
    <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
</head>
<body>

<!-- 네이버 -->
<%
    String clientId = "TnNcED7klJ8X7xSS3nja";//애플리케이션 클라이언트 아이디값";
    String redirectURI = URLEncoder.encode("http://localhost:8888/app/auth/callback", "UTF-8");
    SecureRandom random = new SecureRandom();
    String state = new BigInteger(130, random).toString();
    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
    apiURL += "&client_id=" + clientId;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&state=" + state;
    session.setAttribute("state", state);
 %>
 
<div class="container">
    <div class="d-flex justify-content-center h-100">
        <div class="card">
            <div class="card-header">
                <h3>로그인</h3>
                <div class="d-flex justify-content-end social_icon">
                        <fb:login-button scope="public_profile,email" 
                            onlogin="checkLoginState();"></fb:login-button>
                    <a id="custom-login-btn" href="javascript:loginWithKakao()">
                    <img src="/upload/img/kakao_login_btn_small.png" height="22" width="62"/>
                    </a>
                    <a href="<%=apiURL%>"><img width="62"height="22" src="http://static.nid.naver.com/oauth/small_g_in.PNG"/></a>
                </div>
            </div>
            <div class="card-body">
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                        </div>
                        <input type="email" name="email" id="email" value='${cookie.email.value}' 
                        class="form-control" placeholder="useremail">
                        
                    </div>
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                        </div>
                        <input type="password" name="pwd" id="pwd" class="form-control" placeholder="password">
                    </div>
                    <div class="row align-items-center remember">
                        <input type="checkbox"  id="save" name="save" ${cookie.save.value}>이메일 저장
                    </div>
                    <div class="row" style="margin-top:10%">
                    <div class="col-sm-12">
                    
                    <div id="login" class="form-group">
                        <input type="button" id="submitbtn" onClick="submitbtnClick()" value="로그인" class="btn btn-warning btn-sm"/>
                    </div>
                    
                    <div id="main" class="form-group" style="position:absolute; right:10px; bottom:0;">
                        <input type="button" value="메인으로" class="btn btn-warning btn-sm" onclick="mainhome()" />
                    </div>
                    
                    </div>
                    </div>
                    
            </div>
            <div class="card-footer">
                <div class="d-flex justify-content-center links">
                    <a href="/app/mentee/sign">회원 가입</a>
                </div>
                <div class="d-flex justify-content-center">
                    <a href="/app/mentee/searchmail">이메일 찾기</a>
                </div>
                <div class="d-flex justify-content-center">
                    <a href="/app/mentee/searchpwd">비밀번호 찾기</a>
                </div>
            </div>
        </div>
    </div>
</div>


 <!-- 페이스북 -->
<script type="text/javascript">

function autoLogin(accessToken) {
    location.href = "fblogin?" + 
            "accessToken=" + accessToken;
}
function checkLoginState() {
    FB.getLoginStatus(function(response) { 
        if (response.status === 'connected') {
            autoLogin(response.authResponse.accessToken);
        } else {
        	swal({
		        text: "Facebook 로그인 실패!",
		        timer:3000,
		        button:"확인"
			});
        }
    });
}

window.fbAsyncInit = function() {
  FB.init({
    appId      : '182049192723689', // 개발자가 등록한 앱 ID
    cookie     : true,  
    xfbml      : true,  
    version    : 'v3.2' 
  });
  FB.AppEvents.logPageView();
};

(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "https://connect.facebook.net/en_US/sdk.js";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));

<!-- 카카오톡 -->
var email = "";

// 사용할 앱의 JavaScript 키를 설정해 주세요.
Kakao.init('84669683f5618779917565387337bb61');
// 카카오 로그인 버튼을 생성합니다.
function loginWithKakao(){
    Kakao.Auth.loginForm({
    // 로그인 성공시, API를 호출합니다.
    success: function(authObj) {
          Kakao.API.request({
        url: '/v1/user/me',
        success: function(res) {
        email = JSON.stringify(res.kaccount_email);
            location.href = "kakao?email=" + JSON.stringify(res.kaccount_email) +
                    "&id=" + JSON.stringify(res.id) +
                    "&profile_image=" + JSON.stringify(res.properties.profile_image) +
                    "&nickname=" + JSON.stringify(res.properties.nickname);
            alert(JSON.stringify(res.id));
      },
      fail: function(error) {
        alert(JSON.stringify(error));
      }
    });
    }
    });
    
    
}
function submitbtnClick(){
	$.ajax({
	 	type:"POST",
		data : {
			email : $("#email").val(),
			pwd : $("#pwd").val(),
			save : $("#save").val()
		},
		url : "login.do",
		success : function(data){
			console.log(data);
			if(data == -1){
				swal({
			        text: "정지된 회원입니다.",
			        timer:3000,
			        button:"확인"
				});
			}else if(data == -2){
				swal({
			        text: "탈퇴한 회원입니다.",
			        timer:3000,
			        button:"확인"
				});
			}else if(data == 0){
				swal({
					 text:"회원정보가 일치하지 않습니다.",
					 timer:3000,
					 button:"확인"
				  });
			}else if(data == 1){
				location.href="../mainpage/mainpage";
			}
		}
	});
}


function mainhome(){
    location.href="/app/mainpage/mainpage";
}
</script>
 <!-- Kakao.Auth.logout(function () {  alert("카카오로그아웃");}); -->
</body>
</html>