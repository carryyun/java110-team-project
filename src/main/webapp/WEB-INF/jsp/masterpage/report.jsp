<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>Insert title here</title>
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/common.css" rel="stylesheet">
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


<div class="col-12">
<table class="fixed-table">
<colgroup>
<col style="width:20%;">
<col style="width:80%;">
</colgroup>

<tr>
<td class="noBorder text-left" colspan="2">
    <div class="row">
	    <div class="col-2" style="font-size: 1.75rem"><strong>신고</strong></div> 
	    <div class="col-8 pl-4" style="margin-top:17px; font-size: 13px; color: #c9c9c9">불량게시물 · 불량회원을 신고해주세요</div>
    </div>
    <hr class="my-2" color="#FFB53C" style="height:3px; border-bottom-right-radius :25%;border-top-right-radius :25%;"/>
</td>
</tr>

<tr>
    <th>분류</th>
    <td class="text-left" style="padding-left: 20px">
        <input type="radio" name="type" class="type" value="클래스" id="opt1" onclick="selOpt(this)" checked="checked"/>
        <label for="opt1">클래스</label>
        <input type="radio" name="type" class="type" value="상품" id="opt2" onclick="selOpt(this)"/>
        <label for="opt2">상품</label>
        <input type="radio" name="type" class="type" value="댓글" id="opt3" onclick="selOpt(this)"/>
        <label for="opt3">댓글</label>
        <input type="radio" name="type" class="type" value="기타" id="opt4" onclick="selOpt(this)"/>
        <label for="opt4">기타</label>
    </td>
</tr>
<tr>
    <th>신고유형</th>
    <td class="text-left" style="padding-left: 20px;display: table-cell" id="tdetail-cls">
        <input type="radio" name="type-detail" class="detail" value="카테고리" id="opt1" checked="checked"/>
        <label for="opt1">카테고리</label>
        <input type="radio" name="type-detail" class="detail" value="수업관련" id="opt2"/>
        <label for="opt2">수업관련</label>
        <input type="radio" name="type-detail" class="detail" value="멘토관련" id="opt3"/>
        <label for="opt3">멘토관련</label>
        <input type="radio" name="type-detail" class="detail" value="기타" id="opt4"/>
        <label for="opt4">기타</label>
    </td>
    <td class="text-left" style="padding-left: 20px;display: none;" id="tdetail-prdt">
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
    <%String nick = request.getParameter("nick");
    pageContext.setAttribute("nick", nick);
    %>
    <td class="text-left" style="padding-left: 20px"><input type="text" value="${sessionScope.loginUser.nick}" readonly name="nick" class="customWidth" id="usernick" oninput="checknick()" onfocusout="checknick()" style="width: 35%"><br></td>
</tr>
<tr>
    <th>제　　목</th>
    <td style="padding-left: 20px"><input type="text" value="" name="titl" class="customWidth" id="titl"><br></td>
</tr>
<tr>
    <th>내　　용</th>
    <td style="padding-left: 20px"><textarea name="conts" rows="5" class="customWidth" id="conts" style="resize: none;"></textarea></td>
</tr>
<tr>
    <th>U R L</th>
    <%String url = request.getParameter("url");
    pageContext.setAttribute("url", url);
    %>
    <td style="padding-left: 20px" class="noBorderBot">
    <input type="text" value="${url}"name="url" disabled="disabled" id="url" class="customWidth"><br>
    </td>
</tr>
<tr>
    <td class="tableBtn" colspan="2">
	    <button class="btn btn-danger" style="width: 70px; border:none;" type="reset" onclick="window.close()">취소</button>
	    <button id="send" class="btn btn-primary" style="background-color:#FFB53C; border:none; width: 70px" onclick="addRept()">보내기</button>
    </td>
    
</tr>

</table>
</div>


<script src="/vendor/jquery/jquery.min.js"></script>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script>
function selOpt(obj){
    //    
    if($(obj)[0].id == "opt1"){
        $('td#tdetail-cls').css("display","table-cell");
        $('td#tdetail-prdt').css("display","none");
        $('td#tdetail-rep').css("display","none");
        $('td#tdetail-etc').css("display","none");
    }else if($(obj)[0].id == "opt2"){
        $('td#tdetail-cls').css("display","none");
        $('td#tdetail-prdt').css("display","table-cell");
        $('td#tdetail-rep').css("display","none");
        $('td#tdetail-etc').css("display","none");
    }else if($(obj)[0].id == "opt3"){
        $('td#tdetail-cls').css("display","none");
        $('td#tdetail-prdt').css("display","none");
        $('td#tdetail-rep').css("display","table-cell");
        $('td#tdetail-etc').css("display","none");
    }else if($(obj)[0].id == "opt4"){
        $('td#tdetail-cls').css("display","none");
        $('td#tdetail-prdt').css("display","none");
        $('td#tdetail-rep').css("display","none");
        $('td#tdetail-etc').css("display","table-cell");
    }
    
}



function report(){
    var openWin;
    var Curpath = $(location).attr('href');
    Curpath = Curpath.replace("http://localhost:8888/app/", '');
    console.log(Curpath);
    var url    = "../masterpage/report?url="+Curpath;
    var title  = "하루 - 신고하기";
    var status = "toolbar=no,directories=no,scrollbars=no,resizable=no,status=no,menubar=no,width=635, height=465, top=-1000,left=100"; 
    openWin = window.open(url, title,status); 
}
        //window.open(url,title,status); window.open 함수에 url을 앞에와 같이
        //인수로  넣어도 동작에는 지장이 없으나 form.action에서 적용하므로 생략
        //가능합니다.
    /* frm.target = title;    //form.target 이 부분이 빠지면 form값 전송이 되지 않습니다. 
    frm.action = url;         //form.action 이 부분이 빠지면 action값을 찾지 못해서 제대로 된 팝업이 뜨질 않습니다. 
    frm.method = "GET";
    frm.submit();   */

function addRept(){
    var type = $('input:radio:checked.type').val();
    var type_detail = $('input:radio:checked.detail').val();
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
                meno : '${sessionScope.loginUser.no}'
            },
            url : "addreport.do",
            success : function() {
                swal({
                    text : "신고가 완료되었습니다. 관리자가 확인 후 처리됩니다.",
                    icon : "success",
                    button : "확인",
                }).then((willDelete) => {
                    if(willDelete){
                        window.close();
                    }
                  });
                
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

</body>

</html>