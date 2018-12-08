<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset='UTF-8'>
<title>매니저 관리</title>
<link rel='stylesheet' href='/css/common.css'>
<style>
table, th, td {
    border: 1px solid gray;
}
</style>
</head>
<body>


<h1>클래스목록</h1>
<p><a href='form'>추가</a></p>
<table>
<thead>
<tr>
    <th>카테고리</th> <th>제목</th> <th>멘토이름</th> <th>가격</th>
    <th>별정</th> <th>기본주소</th> <th>닉네임</th>
</tr>
</thead>
<tbody>

<c:forEach  items="${findAll}" var="c">
<tr>
    <td>${c.no}</td>
    <td>${c.titl}</td>
    <td>${c.conts}</td>
    <td><fmt:formatNumber value="${c.pric}" groupingUsed="true"/></td>
    <td>${c.rgdt}</td>
    <td>${c.time}</td>
    <td>${c.cfile}</td>
    <td>${c.tinfo}</td>
    <td>${c.cinfo}</td>
    <td>${c.pstno}</td>
    <td>${c.bas_addr}</td>
    <td>${c.det_addr}</td>
    <td>${c.edt}</td>
    <td>${c.mono}</td>
    <td>${c.mtno}</td>
</c:forEach>

</tbody>
</table>

<jsp:include page="../footer.jsp"/>

</body>
</html>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    