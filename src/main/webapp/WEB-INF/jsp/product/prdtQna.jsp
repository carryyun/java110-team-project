<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{
    margin:0;
    padding:0;
}
table.fixed-table, table.fixed-table tr, table.fixed-table th, table.fixed-table td{
    margin:0;
    padding:8px;
    border-collapse: collapse;
    table-layout: fixed;
    width: 650px;
}
table.fixed-table td{
    border-bottom: 1px solid silver;
}
table.fixed-table th{
    border-right: 1px solid silver;
}

table.fixed-table td.noBorderBot{
    border-bottom: 0;
}

table.fixed-table td.noBorder{
    padding-right:0;
    border: 0;
}


table.fixed-table td.tableBtn{
    text-align: right;
    border: 0;
}
.customWidth {
  width: 95%;
  font-size: 1em;
}
</style>

</head>
<body>
<form method="post" action="addqna">


<table class="fixed-table">
<colgroup>
<col style="width:30%;">
<col style="width:70%;">
</colgroup>

<tr>
<td class="noBorder" colspan="2"><h4>상품명: 상품명 예제1</h4><hr color="red" style="height:2px; border-bottom-right-radius :25%;border-top-right-radius :25%;"/></td>
</tr>

<tr>
    <th>신고유형</th>
    <td width="10px">
	    <input type="radio" name="type" value="환불" id="opt1" checked="checked"/>
	    <label for="opt1">환불</label>
	    <input type="radio" name="type" value="배송" id="opt2"/>
	    <label for="opt2">배송</label>
    </td>
</tr>
<tr>
    <th>제　　목</th>
    <td><input type="text" name="titl" class="customWidth"><br></td>
</tr>
<tr>
    <th>내　　용</th>
    <td class="noBorderBot"><textarea name="conts" rows="5" class="customWidth" style="resize: none;"></textarea></td>
</tr>
<tr>
    <td class="tableBtn" colspan="2"><button type="reset">취소</button> <button type="submit">보내기</button></td>
</tr>

</table>

<br>
<br>

</form>
</body>
</html>