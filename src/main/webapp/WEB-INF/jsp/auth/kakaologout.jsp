<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<title>API Demo - Kakao JavaScript SDK</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

</head>
<body>
<a id="kakao-login-btn"></a>
<script type='text/javascript'>
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('c3399cefa864023dc0dd9737a09a0e98');
    // 카카오 로그아웃
   function loginWithKakao(){
    
    Kakao.Auth.logout({
        callback : Function(out){
            id = JSON.stringify(res.kaccount_id);
            location.href = JSON.stringify(res.id)+"님 로그아웃 하였습니다";
      
        }
        
      });
    }
    
  //]]>
</script>

</body>
</html>