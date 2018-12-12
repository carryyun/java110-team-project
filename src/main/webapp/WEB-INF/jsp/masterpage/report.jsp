<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
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
    width: 600px;
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



<table class="fixed-table">
<colgroup>
<col style="width:20%;">
<col style="width:80%;">
</colgroup>

<tr>
<td class="noBorder text-left" colspan="2"><h4>상품명: 상품명 예제1</h4><hr color="red" style="height:2px; border-bottom-right-radius :25%;border-top-right-radius :25%;"/></td>
</tr>

<tr>
    <th>분류</th>
    <td class="text-left" style="padding-left: 20px">
        <input type="radio" name="type" class="type" value="클래스" id="opt1" checked="checked"/>
        <label for="opt1">클래스</label>
        <input type="radio" name="type" class="type" value="상품" id="opt2"/>
        <label for="opt2">상품</label>
        <input type="radio" name="type" class="type" value="댓글" id="opt3"/>
        <label for="opt3">댓글</label>
        <input type="radio" name="type" class="type" value="기타" id="opt4"/>
        <label for="opt4">기타</label>
    </td>
</tr>
<tr>
    <th>신고유형</th>
    <td class="text-left" style="padding-left: 20px;display: none" id="tdetail-cls">
        <input type="radio" name="type-detail" onselect="" class="detail" value="카테고리" id="opt1" checked="checked"/>
        <label for="opt1">카테고리</label>
        <input type="radio" name="type-detail" class="detail" value="수업관련" id="opt2"/>
        <label for="opt2">수업관련</label>
        <input type="radio" name="type-detail" class="detail" value="멘토관련" id="opt3"/>
        <label for="opt3">멘토관련</label>
        <input type="radio" name="type-detail" class="detail" value="기타" id="opt4"/>
        <label for="opt4">기타</label>
    </td>
    <td class="text-left" style="padding-left: 20px;display: table-cell;" id="tdetail-prdt">
        <input type="radio" name="type-detail" class="detail" value="카테고리" id="opt1" checked="checked"/>
        <label for="opt1">카테고리</label>
        <input type="radio" name="type-detail" class="detail" value="상품관련" id="opt2"/>
        <label for="opt2">상품관련</label>
        <input type="radio" name="type-detail" class="detail" value="판매자관련" id="opt3"/>
        <label for="opt3">판매자관련</label>
        <input type="radio" name="type-detail" class="detail" value="기타" id="opt4"/>
        <label for="opt4">기타</label>
    </td>
    <td class="text-left" style="padding-left: 20px;display: none"  id="tdetail-rep">
        <input type="radio" name="type-detail" class="detail" value="광고" id="opt1"/>
        <label for="opt1">광고</label>
        <input type="radio" name="type-detail" class="detail" value="음란성" id="opt2"/>
        <label for="opt2">음란성</label>
        <input type="radio" name="type-detail" class="detail" value="욕설" id="opt3"/>
        <label for="opt3">욕설</label>
        <input type="radio" name="type-detail" class="detail" value="기타" id="opt4"/>
        <label for="opt4">기타</label>
    </td>
    <td class="text-left" style="padding-left: 20px;display: none"  id="tdetail-etc">
        <input type="radio" name="type-detail" class="detail" value="기타" id="opt1"/>
        <label for="opt1">기타</label>
    </td>
</tr>
<tr>
    <th>신고닉네임</th>
    <td class="text-left" style="padding-left: 20px"><input type="text" value="징징이" name="nick" class="customWidth" id="usernick" oninput="checknick()" onfocusout="checknick()" style="width: 35%"><br></td>
</tr>
<tr>
    <th>제　　목</th>
    <td><input type="text" value="테스트 제목입니다" name="titl" class="customWidth" id="titl"><br></td>
</tr>
<tr>
    <th>내　　용</th>
    <td><textarea name="conts" rows="5" class="customWidth" id="conts" style="resize: none;">테스트 내용입니다2</textarea></td>
</tr>
<tr>
    <th>U R L</th>
    <td class="noBorderBot"><input type="text" value="테스트 url" name="url" id="url" class="customWidth"><br></td>
</tr>
<tr>
    <td class="tableBtn" colspan="2"><button type="reset">취소</button> <button id="send" onclick="addRept()">보내기</button></td>
</tr>


</table>


</body>
<script>
function addRept(){
    var type = $('input:radio:checked.type').val();
    var type_detail = $('input:radio:checked.detail').val();
    console.log(type);
    console.log(type_detail);
    var nick = $('input:text#usernick').val();
    var titl = $('input:text#titl').val();
    var conts = $('textarea#conts').val();
    var url = $('input:text#url').val();
    
    if(checknick() == false){
        swal ( "Oops" ,  "유효한 닉네임이 아닙니다." ,  "error" );
    }else{
        
        $.ajax({
            data : {
                type : type,
                type_detail : type_detail,
                nick : nick,
                titl : titl,
                conts : conts,
                url : url,
                meno : 1
            },
            url : "addreport.do",
            success : function() {
                /* location.href="#"; */
            }
            
        });
        
    }
    
}

function checknick(){
    var nickChk = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\*]+$/;
    var inputed = $("#usernick").val();
    
    $.ajax({
        data : {
            nick : inputed
        },
        url : "reptchecknick.do",
        success : function(data){
            if(inputed=="" && data == '0'){
                $("#usernick").css("background-color", "white");
                return false;
            }else if(data =='0'){
                $("#usernick").css("background-color", "#FA5858");
                return false;
            }else if(data =='1'){
                $("#usernick").css("background-color", "#B0F6AC");
                return true;
            }
        }
    });
}
</script>

</html>