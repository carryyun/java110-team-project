<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카카오 로그인</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
</head>
<h1>카카오 로그인</h1>
<body>
    <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
 

<a id="kakao-login-btn"></a>

<a href="http://developers.kakao.com/logout"></a>
 
 
<!-- Kakao Login -->

<script type="text/javascript">

var email = "";

      // 사용할 앱의 JavaScript 키를 설정해 주세요.
      Kakao.init('84669683f5618779917565387337bb61');
      // 카카오 로그인 버튼을 생성합니다.
      Kakao.Auth.createLoginButton({
        container: '#kakao-login-btn',
        success: function(authObj) {
          // 로그인 성공시, API를 호출합니다.
          Kakao.API.request({
            url: '/v1/user/me',
            success: function(res) {
              console.log(JSON.stringify(res.kaccount_email));
              email = JSON.stringify(res.kaccount_email);
              console.log(JSON.stringify(res.id));
              console.log(JSON.stringify(res.properties.profile_image));
              console.log(JSON.stringify(res.properties.nickname));
              
                  location.href = "kakao?email=" + JSON.stringify(res.kaccount_email) +
                          "&id=" + JSON.stringify(res.id) +
                          "&profile_image=" + JSON.stringify(res.properties.profile_image) +
                          "&nickname=" + JSON.stringify(res.properties.nickname);
              
             
            },
            fail: function(error) {
              alert(JSON.stringify(error));
            }
          });
        },
        fail: function(err) {
          alert(JSON.stringify(err));
        }
      });

      
      console.log(email);

</script>


</body>
</html>