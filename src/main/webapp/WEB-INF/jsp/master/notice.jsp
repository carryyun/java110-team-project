<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- ===============필수포함=============== -->
<!-- Bootstrap core CSS -->
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/notice.css" rel="stylesheet">
<link href="/css/common.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Jua" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
    integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
    crossorigin="anonymous">
<!-- ===============필수포함=============== -->
</head>
<body>
<div class="container">

    <c:forEach items="${noticeList}" var="nl" varStatus="i">
    <%-- onclick="location.href='${nl.url}'"   style="cursor: pointer;" --%>
    <div class="notice notice-lg">
        <span><strong>Big notice</strong> <a href='${nl.url}'>${nl.url}</a></span> 
        <span style="float: right; cursor: pointer;" onclick="del(${nl.no})"><i class="fas fa-trash-alt"></i></span>
    </div>
    
    </c:forEach>
</div>
</body>
<script>
function del(no){
    
}
</script>
</html>