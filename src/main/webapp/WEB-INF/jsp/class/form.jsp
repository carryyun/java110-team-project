<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클래스 추가</title>
<link rel='stylesheet' href='/css/common.css'>
<style>
th {
    text-align: right;
}
</style>
</head>
<body>

<jsp:include page="../header.jsp"></jsp:include>

<h1>클래스 추가</h1>

<form action='/classinsert' method='post' enctype="multipart/form-data">
<table>
<tbody>
<tr>
    <th>제목</th>
    <td><input type='text' name='titl'></td>
</tr>
<tr>
    <th>내용</th>
    <td><input type='text' name='conts'></td>
</tr>
<tr>
    <th>가격</th>
    <td><input type='number' name='pric'></td>
</tr>
<tr>
    <th>등록일</th>
    <td><input type="date" name='rgdt'></td>
</tr>
<tr>
    <th>일수업시간</th>
    <td><input type='text' name='time'></td>
</tr>
<tr>
    <th>모집인원</th>
    <td><input type='number' name='capa'></td>
</tr>
<tr>
    <th>사진영상</th>
    <td><input type='file' name='cfile'></td>
</tr>
<tr>
    <th>강사소개</th>
    <td><input type='text' name='tinfo'></td>
</tr>
<tr>
    <th>강의소개</th>
    <td><input type='text' name='cinfo'></td>
</tr>
<tr>
    <th>우편번호</th>
    <td><input type='text' name='pstno'></td>
</tr>
<tr>
    <th>기본주소</th>
    <td><input type='text' name='bas_addr'></td>
</tr>
<tr>
    <th>상세주소</th>
    <td><input type='text' name='det_addr'></td>
</tr>
<tr>
    <th>마감일</th>
    <td><input type='date' name='edt'></td>
</tr>


<tr>
    <th></th>
    <td><button>등록</button></td>
</tr>
</tbody>
</table>
</form>

<jsp:include page="../footer.jsp"/>

</body>
</html>











    