<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>옥션 - 앞으로의 인터넷쇼핑, 옥션</title>
        <meta http-equiv="Content-type" content="text/html; charset=KSC_5601" />
        <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR" />
        <meta content="C#" name="CODE_LANGUAGE" />
        <meta content="JavaScript" name="vs_defaultClientScript" />
        <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema" />
        <link rel="stylesheet" type="text/css" href="http://script.auction.co.kr/style/css/myauction/popup.css" />
        <script type="text/javascript" src="http://script.auction.co.kr/common/jquery.js"></script>
        <script type="text/javascript" src="http://script.auction.co.kr/style/js/common.js"></script>       
        <!--  상단 menu script  -->
        <script type="text/javascript" src="http://script.auction.co.kr/buy/qna/qnaInputCheck.js"></script>
        <script type="text/javascript">
            document.domain = "auction.co.kr";

            var itemNo = "B304651825";
        </script>
        
        <script type="text/javascript">
            window.onload = function () {
                resize_popup2(730,830,true,true);
                
                
            };

            function resize_popup2(w, h, scroll, center) {
                var docEl = document.documentElement,
                    width,
                    height;

                function resize() {
                    // 창 내부 너비와 높이
                    width = docEl.clientWidth;
                    height = docEl.clientHeight;

                    // 창 내부 너비와 높이가 입력 받은 너비/높이와 다를 경우 그 차이만큼 리사이즈
                    if (width !== w || height !== h) {
                        window.resizeBy(w - width, h - height);
                    }
                }

                scroll = scroll === false ? false : true; // 스크롤 여부: 기본은 스크롤 활성

                if (!scroll) {
                    // 스크롤 비활성
                    docEl.style.overflowY = 'hidden';
                    docEl.style.overflowX = 'hidden';
                } else {
                    // 스크롤 활성
                    docEl.style.overflowY = 'auto';
                    docEl.style.overflowX = 'hidden';
                }

                // 창을 화면 중앙으로 이동
                if (center) {
                    // 크롬 영역(창 테두리, 주소표시줄 등)까지 고려해야하지만 큰 효과 없으므로 무시
                    window.moveTo((screen.availWidth / 2) - (w / 2), (screen.availHeight / 2) - (h / 2));
                }

                resize();
        }
        </script>
        <script type="text/javascript">
            $(function () {
                qnaList();
            });
        </script>

        <script type="text/javascript">
            function GotoInputCheckEx() {

                if (fn_Insert()) {
                    //var frm;
                    //frm = document.frmMain

                    //if ((frm.org_email.value != frm.email1.value + '@' + frm.email2.value) && (frm.dup_chk.value == '0')) {
                    if ((document.getElementById("org_email").value != document.getElementById("email1").value + '@' + document.getElementById("email2").value) && (document.getElementById("dup_chk").value == '0')) {
                        alert(" 이메일 중복확인을 하지 않았습니다.");
                        document.getElementById("email1").focus();
                        return false;
                    }

                    //if ((frm.org_email.value != frm.email1.value + '@' + frm.email2.value) && (frm.dup_chk.value == '1')) {
                    if ((document.getElementById("org_email").value != document.getElementById("email1").value + '@' + document.getElementById("email2").value) && (document.getElementById("dup_chk").value == '1')) {
                        alert(" 중복된 이메일이 있습니다. 다른 이메일을 입력해 주세요.");
                        document.getElementById("email1").focus();
                        return false;
                    }

                    //if (!checkWrongEmail(frm.email1.value.replace(/ /g, '') + '@' + frm.email2.value.replace(/ /g, ''))) {
                    if (!checkWrongEmail(document.getElementById("email1").value.replace(/ /g, '') + '@' + document.getElementById("email2").value.replace(/ /g, ''))) {
                        //alert(frm.email1.value + '@' + frm.email2.value);
                        alert(document.getElementById("email1").value + '@' + document.getElementById("email2").value);
                        alert(" 이메일 주소가 정확하지 않습니다.");
                        document.getElementById("email1").focus();
                        return false;
                    }

                    if (document.getElementById("htxtQueryType") != undefined) {
                        if (document.getElementById("htxtQueryType").value == "") {
                            alert(" 문의유형을 선택해주세요.");
                            return false;
                        }
                    }

                    if (document.getElementById("txtContent").value.length < 2 || document.getElementById("txtContent").value == '') {
                        alert(" 문의내용을 기재해 주세요.");
                        return false;
                    }
                    if (document.getElementById("MyCaptcha1_htxtCaptchaAnswer") != null) {
                        if (document.getElementById("MyCaptcha1_htxtCaptchaAnswer").value.length < 1 || document.getElementById("MyCaptcha1_htxtCaptchaAnswer").value == '') {
                            alert(" 보안 문자를 입력해주세요.");
                            document.getElementById("txtContent").focus();
                            return false;
                        }
                    }

                    if (parent.IsFreeExperience != null && parent.IsFreeExperience.toLowerCase() == "true") {
                        //alert(frm.txtTitle);
                        var isFind = document.getElementById("txtTitle").value.match(/체험단/);
                        if (isFind != null) {
                            window.open("FreeExperienceNotice.html", "", "toolbar=0,location=0,directories=0,status=0,menubar=0,scrollbars=no,resizable=Yes,copyhistory=0,width=320,height=220"); ///(isFind[0]);

                            return false;
                        }
                    }
                    return true;
                }

                else {
                    return false;
                }
            }

            function parentResize() {
                if (window.frameElement == null)
                    return;

                try {
                    var thisFrame = window.frameElement;
                    if (navigator.appName == "Microsoft Internet Explorer") {
                        thisFrame.style.height = "0px";
                        thisFrame.style.height = document.body.scrollHeight + "px";
                    } else {
                        thisFrame.style.height = "0px";
                        thisFrame.style.height = document.documentElement.scrollHeight + "px";
                    }

                } catch (ex) { }
            }



            /*=======================================================================
            Function fn_Insert

            ========================================================================*/

            function fn_Insert() {
                var title = "";//document.getElementById("txtTitle").value; //frm.txtTitle.value;
                var contents = document.getElementById("txtContent").value; // frm.txtContent.value;

                try {
                    if (CreateAJAX() == true) {
                        if (gAJAX != null) {
                            var URL = "http://buy.auction.co.kr/Buy/QnA/ItemQnaProhibition.aspx?title=" + title + "&contents=" + contents;
                            gAJAX.open('GET', URL, false);
                            gAJAX.setRequestHeader("Content-Type", "text/xml;charset=utf-8");
                            gAJAX.send();
                            if ((gAJAX.readyState == 4) && (gAJAX.status == 200)) {
                                if (gAJAX.responseText == "false") {
                                    alert("죄송합니다. 문의게시판 입력 중 입력 금지된 문구가 포함되어 있습니다. 다시 입력해주 시기 바랍니다.");
                                    return false;
                                } else {
                                    return true;
                                }
                            }
                        }
                    }
                }
                catch (ex) {
                }
                return;
            }

            /*=======================================================================
            Function Ajax Engine

            ========================================================================*/
            function CreateAJAX() {
                try {
                    gAJAX = null;

                    if (gAJAX == null) {
                        if (window.ActiveXObject) {
                            try {
                                gAJAX = new ActiveXObject("Msxml2.XMLHTTP");
                            }
                            catch (e) {
                                try {
                                    gAJAX = new ActiveXObject("Microsoft.XMLHTTP");
                                }
                                catch (oc) {
                                    gAJAX = null;
                                }
                            }
                            if (gAJAX) {
                                return true;
                            }
                        } else if (window.XMLHttpRequest) {
                            gAJAX = new XMLHttpRequest();
                            return true;
                        }
                    }
                    else {
                        return true;
                    }
                }
                catch (ex) {
                }

                return false;
            }


            function ShowItemQuestion(idx) {
                document.getElementById("htxtQueryType").value = idx;
                ShowItemFAQ(idx);

                $.getRecentItemQnA(idx);
            }

            function ShowItemFAQ(FAQIdx) {
                for (var i = 1; i <= 5; i++) {
                    if (document.getElementById("htrFAQ" + i) != undefined) {
                        if (row = document.getElementById("htrFAQ" + i)) {
                            hideRow(row);
                        }
                    }
                }

                if (row = document.getElementById("htrFAQ" + FAQIdx)) {
                    showRow(row);
                }
            }

            function showRow(row) {
                if (row && row.style) {
                    var children = row.getElementsByTagName("*"),
                i = children.length,
                child;

                    while (i--) {
                        child = children[i];
                        if (child.style) {
                            child.style.display = "";
                        }
                    }

                    row.style.display = "";
                }
            }

            function hideRow(row) {
                if (row && row.style) {
                    var children = row.getElementsByTagName("*"),
                i = children.length,
                child;

                    while (i--) {
                        child = children[i];
                        if (child.style) {
                            child.style.display = "none";
                        }
                    }

                    row.style.display = "none";
                }
            }
        
        </script>
        
        
        <script type ="text/javascript" language ="javascript">
            $.extend({

                getRecentItemQnA: function (queryTypeCode) {

                    $("#htrRecentQnA").html("<th><img src=\"http://pics.auction.co.kr/popup/txt_sellqna_th03.gif\" alt=\"최근등록된질문\"></th><td class=\"oft-qst\"><ul></ul></td>");
                    $("#htrRecentQnA").css("display", "none");

                    $.ajax({
                        type: "GET",
                        cache: false,
                        dataType: "text",
                        url: "http://buy.auction.co.kr/Buy/Service/ItemQnAService.svc/GetRecentQnAList",
                        data: "itemNo=" + itemNo + "&queryTypeCode=" + queryTypeCode,
                        success: function (data) {
                            obj = jQuery.parseJSON(data);

                            $.bindRecentItemQnA(obj);
                        },
                        error: function (xhr, textStatus) {
                            alert(textStatus)
                            window.status = xhr.status + "|" + textStatus;
                        }
                    });
                },

                bindRecentItemQnA: function (data) {

                    var retValue = "";

                    if (data.length > 0) {
                        retValue += "<th><img src=\"http://pics.auction.co.kr/popup/txt_sellqna_th03.gif\" alt=\"최근등록된질문\"></th>";
                        retValue += "<td class=\"oft-qst\">";
                        retValue += "   <ul>";

                        for (i = 0; i < data.length; i++) {
                            if (i == 0 && data[i].QuestionSeqNo == 0)
                                retValue += "       <li class=\"qst first\">";
                            else if (data[i].QuestionSeqNo == 0) {
                                retValue += "       </li>";

                                retValue += "       <li class=\"qst\">";
                            }

                            if (data[i].QuestionSeqNo == 0) {
                                retValue += "           <img class=\"ico\" src=\"http://pics.auction.co.kr/myauction/2011/ic_reply_yes.gif\" alt=\"답변완료\">";
                                retValue += "           <em>";
                                retValue += "               <a href=\"#oftAns" + i + "\">" + data[i].Title + "</a>";
                                retValue += "           </em> <span>(" + data[i].RegDate + ")</span>";
                                retValue += "           <a href=\"#oftAns" + i + "\" class=\"btn\"><img src=\"http://pics.auction.co.kr/membersapp/help/btn_minus.gif\" alt=\"접기\"></a>";
                                retValue += "       </li>";

                                retValue += "       <li class=\"ans\" id=\"oftAns" + i + "\" style=\"display:none\">";
                            }

                            if (data[i].QuestionSeqNo == 1) {
                                retValue += "           <div class=\"add-ans\">";
                                retValue += "               <strong><span>(판매자답변) </span>";
                            }
                            else if (data[i].QuestionSeqNo == 2) {
                                retValue += "           <div class=\"add-ans\">";
                                retValue += "               <strong><span>(추가답변1) </span>";
                            }
                            else if (data[i].QuestionSeqNo == 3) {
                                retValue += "           <div class=\"add-ans\">";
                                retValue += "               <strong><span>(추가답변2) </span>";
                            }
                            else {
                                retValue += "           <div>";
                                retValue += "               <strong>";
                            }

                            retValue += data[i].Title + "</strong><p>" + data[i].Content + "</p>";
                            retValue += "           </div>";

                            if (i == (data.length - 1)) {
                                retValue += "       </li>";

                                retValue += "   </ul>";
                                retValue += "</td>";
                            }
                        }

                        $("#htrRecentQnA").html(retValue);
                        $("#htrRecentQnA").css("display", "");
                    }
                    else {
                        retValue += "<th><img src=\"http://pics.auction.co.kr/popup/txt_sellqna_th03.gif\" alt=\"최근등록된질문\"></th>";
                        retValue += "<td class=\"oft-qst\"><ul></ul></td>";

                        $("#htrRecentQnA").html(retValue);
                        $("#htrRecentQnA").css("display", "none");
                    }

                    qnaList();
                }
            });

        </script>
        
        
        
        
        
    </head> 
    <body cz-shortcut-listen="true">
        <form method="post" action="./ItemQnAInsert.aspx?ItemNo=B304651825&amp;asrtType=S&amp;CategoryName=%ubcbd%uc9c0&amp;WeblogYN=N&amp;asrtLevelType=S&amp;asrtName=%ub2e8%uc5f4%ubcbd%uc9c0&amp;viptype=default" id="frmMain">
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMTU0OTg1NzcxN2QYAQUeX19Db250cm9sc1JlcXVpcmVQb3N0QmFja0tleV9fFgMFCmlucF9zZWNyZXQFCWJ0bk1vZGlmeQUJYnRuSW5zZXJ0TNn0+Y+goPpHkixVMgQTScehsWE=" />
</div>

<div class="aspNetHidden">

    <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="A0346779" />
</div>
        
            <!-- body -->
            <div id="body" class="withname">

                <!-- 타이틀 -->
                <h2 class="fl">판매자에게 문의하기</h1>
                <!-- 타이틀 //-->

                <hr>

                <!-- 탑 15px, 좌우 5px영역 -->
                <div id="maxzone" style="clear:both;padding:14px 5px 0;">

                    <!-- 컨텐츠 -->
                    <div id="contents" class="uxb-com-cont vip-renewal" style="padding:0 10px;">
                        <div class="seller-notice">
                            <ul>
                                <li>결제, 구매취소에 대한 문의는 <a href="http://member.auction.co.kr/help/FAQ2.aspx?tcode=M05&mcode=01&topCode=M" target="_blank">고객센터 바로가기</a></li>
                                <li>이미 구매한 상품에 대한 문의는 <a href="http://member.auction.co.kr/myauction/Default.aspx" target="_blank">마이옥션 바로가기</a></li>
                            </ul>
                        </div>
                        <p class="product-seller"><strong>상품명 : </strong>20M 접착식 단열벽지 결로 곰팡이방지 KC인증 벽지</p>
                        
                        <div style="padding-right:7px;">
                            <table class="tbl-qna" style="table-layout:fixed;">
                                <colgroup>
                                    <col style="width:17%;">
                                    <col>
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th><img src="http://pics.auction.co.kr/popup/txt_sellqna_th01.gif" alt="문의유형" /></th>
                                        <td class="type">
                                            <input type="radio" id="hchkQueryType1" name="hchkQueryType" onclick="javascript:ShowItemQuestion('1');" /><label for="hchkQueryType1" class="chk">상품(성능/사이즈)</label>
                                            <input type="radio" id="hchkQueryType2" name="hchkQueryType" onclick="javascript:ShowItemQuestion('2');" /><label for="hchkQueryType2" class="chk">배송</label>
                                            <input type="radio" id="hchkQueryType3" name="hchkQueryType" onclick="javascript:ShowItemQuestion('3');" /><label for="hchkQueryType3" class="chk">교환</label>
                                            <input type="radio" id="hchkQueryType4" name="hchkQueryType" onclick="javascript:ShowItemQuestion('4');" /><label for="hchkQueryType4" class="chk">반품/취소/환불</label>
                                            <input type="radio" id="hchkQueryType5" name="hchkQueryType" onclick="javascript:ShowItemQuestion('5');" /><label for="hchkQueryType5" class="chk">기타</label>                                       
                                        </td>
                                    </tr>
                                
                                
                                    <tr id="htrRecentQnA" style="display:none;">
                                        <th><img src="http://pics.auction.co.kr/popup/txt_sellqna_th03.gif" alt="최근등록된질문"></th>
                                        <td class="oft-qst"><ul></ul></td>
                                    </tr>
                                    
<script type="text/javascript">
<!--
  function CheckLen() 
  { 
      frmMain.txtTitleLength.value = frmMain.txtTitle.value.length; 
  }
  
  function HideWarningMessage()
  {
        var objDivContents = document.getElementById('divContents');
        var objDivWarning = document.getElementById('divWarning');
        var objTxtContent = document.getElementById('txtContent');
        
        if(objDivContents != null)
        {
            objDivContents.style.display = 'block';
        }
        
        if(objDivWarning != null)
        {
            objDivWarning.style.display = 'none';
        }
        
        if(objTxtContent != null)
        {
            objTxtContent.focus();
        }
  }

    $(document).ready(function() {
        var objDivContents = document.getElementById('divContents');
        var objDivWarning = document.getElementById('divWarning');
        var objTxtContent = document.getElementById('txtContent');
    
        if (objTxtContent.value.length > 0) {
            objDivContents.style.display = 'block';
            objDivWarning.style.display = 'none';
            //objTxtContent.focus();
        }
    });
 
-->                         
</script>


<tr class="cont">
    <th><img src="http://pics.auction.co.kr/popup/txt_sellqna_th05.gif" alt="내용" /></th>
    <td>
        
        <div id="divContents" style="display:none" class="text-box text-input1">
            <textarea name="txtContent" id="txtContent"  scrollbar="no" cols="50" rows="10"></textarea>
        </div>
        <div id="divWarning" onclick="HideWarningMessage();" class="text-box text-input2">
            <textarea cols="50" rows="10" onfocus="HideWarningMessage();">개인정보가 타인에게 유출되지 않도록 주의해 주시기 바랍니다. 비방, 광고, 불건전한 내용의 글은 관리자에 의해 사전 동의 없이 삭제 될 수 있습니다</textarea>
        </div>
            
    </td>
</tr>
                                    
<script type="text/javascript" src="http://script.auction.co.kr/Buy/email.js"></script>
<script type="text/javascript">
    // 추가 정보를 보여줄것인지 확인
    function changedomainV2(em1,em2,frm)
    {
        var em11, em22
        //em11 = frm.email1.value;
        em11 = document.getElementById("email1").value;
        //em22 = frm.emailselect.value;
        em22 = document.getElementById("emailserver_select").value;
        if ((em1!=em11)||(em2!=em22)){      // 이메일 주소가 달라졌을 때
            //frm.dup_chk.value = '0';
            document.getElementById("dup_chk").value = '0';
            addShowV2(frm,'Y');     
        }else{
            addShowV2(frm,'N');     
        }
    }

    // 추가 정보 보이기 / 숨기기
    function addShowV2(frm,yn)
    {
        var sval;
        //sval = frm.emailselect.value;
        sval = document.getElementById("emailserver_select").value;
        //frm.email2.value = sval;
        document.getElementById("email2").value = sval;
        if (yn == 'Y')
        {
            if (sval=='direct_input'){
                //frm.email2.value = '';
                document.getElementById("email2").value = '';
                document.getElementById("email2").style.display = '';
                //frm.email2.focus();
                document.getElementById("email2").focus();
            } else {
                document.getElementById("email2").style.display = 'none';
                //frm.emailselect.focus();          
            }   
            show_dup.style.display = '';
        } else {
            document.getElementById("email2").style.display = 'none';
            //frm.emailselect.focus();          
            document.getElementById("show_dup").style.display = 'none';
        }   
    }
</script>

<tr class="alarm">
    <th><img src="http://pics.auction.co.kr/popup/txt_sellqna_th06.gif" alt="답변알림" /></th>
    <td>
        <p>답변이 도착하면 등록하신 이메일로 알려드립니다. 이메일 주소 수정 시 회원정보 메일 주소도 변경됩니다.</p>
        <div class="fl">
            <input type="text" id="email1" name="email1" style="width:107px;" onchange="if(frmMain.emailselect.value=='direct_input') frmMain.dup_chk.value='0';  else  changedomainV2('bear930920','gmail.com', frmMain);" value="bear930920" size="20" maxlength="35" /> @
            <input id="email2" type="text" name="email2" style="display:none; width:107px;" maxlength="30" value="gmail.com" onchange="frmMain.dup_chk.value='0';" />
        </div>
        <div class="selectbox">
            <select id="emailserver_select" name="emailselect" style="width:110px;" onchange="changedomainV2('bear930920','gmail.com',document.frmMain);">
                <option value="gmail.com" selected>gmail.com</option><option value="empal.com">empal.com</option><option value="dreamwiz.com">dreamwiz.com</option><option value="naver.com">naver.com</option><option value="hotmail.com">hotmail.com</option><option value="chollian.net">chollian.net</option><option value="freechal.com">freechal.com</option><option value="hanafos.com">hanafos.com</option><option value="kebi.com">kebi.com</option><option value="korea.com">korea.com</option><option value="lycos.co.kr">lycos.co.kr</option><option value="netian.com">netian.com</option><option value="netsgo.com">netsgo.com</option><option value="yahoo.co.kr">yahoo.co.kr</option><option value="hanmail.net">hanmail.net</option><option value="daum.net">daum.net</option><option value="direct_input">직접입력     </option>
            </select>
        </div><span id="show_dup" class="btn" style="display:none"><a href="javascript:EmailValidation(frmMain, frmMain.email1.value, frmMain.email2.value)"><img src="http://pics.auction.co.kr/popup/btn_rcheck.gif" alt="중복체크" /></a></span>
        <input type="hidden" id="dup_chk" name="dup_chk" value="0" />
        <input type="hidden" id="org_email" name="org_email" value="bear930920@gmail.com" />
        <input type="hidden" value="Y" id="UpdateMail" name="UpdateMail" />
        
    </td>
</tr>
                                        
                                </tbody>
                            </table>

                            <div class="sec_secret">
                                <input name="inp_secret" type="checkbox" id="inp_secret" />
                                <label for="inp_secret" class="lbe_secret">비밀글로 문의하기</label>
                                <p class="txt_commt">상품 페이지에 노출되지 않고,  <span class="txt_bold">마이옥션&lt;상품문의</span>에서 판매자와 1:1로 대화할 수 있습니다.</p>
                            </div>


                                </div>
                            </div>
                            <!-- //푸시메세지확대 eun -->
                            <input type="hidden" name="txtSellerId" value="kumo2016" />
                            <input type="hidden" name="Itemno" value="B304651825" />
                            <input type="hidden" name="txtItemName" value="20M 접착식 단열벽지 결로 곰팡이방지 KC인증 벽지" />
                            <!-- //경우 2 -->

                                
                                
            
                            <!-- 2014-03-12 하단 버튼 위치 변경 시작 -->
                            <div id="bottombutton" class="bottom-button layerpopup">
                                <input type="image" name="btnInsert" id="btnInsert" class="vm" src="http://pics.auction.co.kr/vip/2013/btn_cont_conf.png" alt="게시물등록" onclick="return GotoInputCheckEx();" />
                                
                                                
                                <a href="javascript:self.close();"><img src="http://pics.auction.co.kr/vip/2013/btn_cancel3.png" alt="취소" /></a>
                            </div>
                            <!-- 2014-03-12 하단 버튼 위치 변경 끝 -->
                        </div>
                    </div>
                    <!-- 컨텐츠 //-->
                </div>
                <!-- 탑 15px, 좌우 5px영역 //-->

            </div>
            <!-- body //-->

            <!-- //2014-02-13vip하단컨텐츠개선 -->

            <div id="divData"></div>
            <input name="flag" type="hidden" id="flag" />
            <input name="htxtQueryType" type="hidden" id="htxtQueryType" />
</form>
    </body>
</html>