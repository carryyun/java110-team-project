<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매니저 관리</title>
<link rel='stylesheet' href='/css/common.css'>
<style>
th {
    text-align: right;
}
</style>
</head>
<body>


<h1>매니저 등록(MVC)</h1>

<form action='add' method='post' enctype="multipart/form-data">
<table>
<tbody>
<tr>
    <th>이름</th>
    <td><input type='text' name='name'></td>
</tr>
<tr>
    <th>이메일</th>
    <td><input type='email' name='email'></td>
</tr>
<tr>
    <th>비밀번호</th>
    <td><input type='password' name='password'></td>
</tr>
<tr>
    <th>닉네임</th>
    <td><input type="text" name='phone'></td>
</tr>
<tr>
    <th>너의 전화번호</th>
    <td><input type="text" name='phone'></td>
</tr>
<tr>
    <th>우편번호</th>
    <td><input type='number' name='pstno'></td>
</tr>
<tr>
    <th>상세주소</th>
    <td><input type='text' name='det_addr'></td>
</tr>
<tr>
    <th>기본주소</th>
    <td><input type='text' name='das_addr'></td>
</tr>


<tr>
    <th></th>
    <td><button>등록</button></td>
</tr>

</tbody>
</table>
</form>


</body>
</html>