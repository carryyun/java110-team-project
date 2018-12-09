<%@page import="bitcamp.java110.cms.domain.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 

<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
    content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>하루 - </title>

<!-- Bootstrap core CSS -->
<link href="/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


<!-- 폰트 추가 -->
<link href="https://fonts.googleapis.com/css?family=Jua"
    rel="stylesheet">
<!-- Custom fonts for this template -->
<link href="/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
    type="text/css">
<link
    href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic'
    rel='stylesheet' type='text/css'>
<link
    href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
    rel='stylesheet' type='text/css'>

<link href="/css/common.css" rel="stylesheet">
<link href="/css/prod_detail.css" rel="stylesheet">

<link rel="stylesheet" href="/css/footer.css">
    
<style type="text/css">
    a.page-link{
        color : #007bff !important;
    }
</style>



</head>
<body onload="InitializeStaticMenu()">


<div id="wrap" style="background-color: #F2F4F7">
        <div class="col" style="position: absolute; height: 147px; background-color: #fff">
            <!-- 헤더 배경색 적용 -->
        </div>
        
    <div class="container">
    <div class="row">
    
            <div class="col-lg-12" id="headermain">
                <jsp:include page="../headerMain.jsp"></jsp:include>
            </div>
            <!-- 카테고리 nav (스크립트로 임시 inclue) -->
            <div class="col-lg-12" id="headernav">
                <jsp:include page="../headerNav.jsp"></jsp:include>
            </div>
         <!-- background-color: white; background-clip: content-box; -->
        <div class="col-lg-9" style="padding-top: 50px;">
            <!-- 상품 상세보기 -->
            <jsp:include page="prodDetail_1.jsp"></jsp:include>

            <!-- 상품 상세정보, 상품평, QnA-->
            <jsp:include page="prodDetail_2.jsp"></jsp:include>
        </div>

        <div class="col-lg-3">
            <!-- 판매자가 수강한 클래스 정보들 -->
            <jsp:include page="prodDetail_3.jsp"></jsp:include>

        </div>

    </div>
</div>
</div>


<!-- 풋터추가 -->
<div class="col px-0 text-center " id="footerCss">
    <div class="footes">        
            <div class="row ">
                <!-- footer-about -->
                <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-6 ">
                    <div class="footer-widget ">
                        <div class="footer-title">COMPANY</div>
                        <ul class="list-unstyled">
                            <li><a href="#">회사소개</a></li>

                        </ul>
                    </div>
                </div>
                <!-- /.footer-about -->
                <!-- footer-about -->
                <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-6 ">
                    <div class="footer-widget ">
                        <div class="footer-title">POLISH</div>
                        <ul class="list-unstyled">
                            <li><a href="#">이용약관</a></li>
                            <li><a href="#">개인정보처리방침</a></li>
                        </ul>
                    </div>
                </div>
                <!-- /.footer-about -->

                <!-- footer-links -->
                <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-6 ">
                    <div class="footer-widget ">
                        <div class="footer-title">SUPPORT</div>
                        <ul class="list-unstyled">
                            <li><a href="#">공지사항</a></li>
                            <li><a href="#">FAQ</a></li>
                        </ul>
                    </div>
                </div>
                <!-- /.footer-links -->
                <!-- footer-links -->
                <div class="col-xl-3 col-lg-3 col-md-12 col-sm-6 col-6 ">
                    <div class="footer-widget ">
                        <div class="footer-title">
                            CONTACT
                            <!-- <div class="ft-logo"><img src="/upload/img/logo.png" alt="logo" style="width: 200px;"></div> -->
                        </div>
                        <p><b>카카오톡 플러스</b><br>: @Haru</p>

                        <p><b>고객센터 운영시간</b><br>평일 AM 10:00 ~ PM 06:00<br>점심 AM 12:30 ~ PM 01:30</p>

                    </div>
                </div>
                <!-- /.footer-links -->
                <!-- tiny-footer -->
            </div>
            <div class="row ">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 text-center ">
                    <div class="tiny-footer">
                        <p>상호 : (주)하루 | 주소 : 비트캠프 서울시 서초구 서초동 1327-15 비트아카데미빌딩 | 사업자등록번호 : 767-88-00000 | 대표자명 : 오호라 </p>
                        <p>Copyright ⓒ2018 Haru inc, ltd. All rights reserved</p>
                    </div>
                </div> 
                <!-- /. tiny-footer -->
            </div>
        </div>
         </div>

<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/vendor/jquery/jquery.min.js"></script>
<script>
$('.accordian-body').on('show.bs.collapse', function () {
    $(this).closest("table")
        .find(".collapse.in")
        .not(this)
})
</script>
<script src="/js/jquery.raty.min.js"></script>
<script src="/js/clean-blog.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery.lazyload/1.9.1/jquery.lazyload.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script>
    var testtTop;
    var setId = "#testt";
    testtTop = $("#detail").offset().top - 105 - $("#headermain").offset().top - $("#headernav").offset().top;
    
    $(setId).css("position", "absolute");
    $(setId).css("top", (testtTop) + "px");
</script>
<script>
$("img.lazy").lazyload({
    threshold : 500,        //뷰포트에 보이기 300px 전에 미리 로딩
    effect : "fadeIn"       //효과
});
</script>
    
<script>
 var stmnLEFT = 0; // 오른쪽 여백 
 var stmnGAP1 = 0; // 위쪽 여백 
 var stmnGAP2 = 52; // 스크롤시 브라우저 위쪽과 떨어지는 거리 
 var stmnBASE = 52; // 스크롤 시작위치 
 var stmnActivateSpeed = 30; //스크롤을 인식하는 딜레이 (숫자가 클수록 느리게 인식)
 var stmnScrollSpeed = 10; //스크롤 속도 (클수록 느림)
 var stmnTimer; 
 
 function RefreshStaticMenu() { 
  var stmnStartPoint, stmnEndPoint; 
  stmnStartPoint = parseInt(document.getElementById('STATICMENU').style.top, 10); 
  stmnEndPoint = Math.max(document.documentElement.scrollTop, document.body.scrollTop) + stmnGAP2; 
  if (stmnEndPoint < stmnGAP1) stmnEndPoint = stmnGAP1; 
  if (stmnStartPoint != stmnEndPoint) { 
   stmnScrollAmount = Math.ceil( Math.abs( stmnEndPoint - stmnStartPoint ) / 15 ); 
   document.getElementById('STATICMENU').style.top = parseInt(document.getElementById('STATICMENU').style.top, 10) + ( ( stmnEndPoint<stmnStartPoint ) ? -stmnScrollAmount : stmnScrollAmount ) + 'px'; 
   stmnRefreshTimer = stmnScrollSpeed; 
   }
  stmnTimer = setTimeout("RefreshStaticMenu();", stmnActivateSpeed); 
  } 
 function InitializeStaticMenu() {
  document.getElementById('STATICMENU').style.right = stmnLEFT + 'px';  //처음에 오른쪽에 위치. left로 바꿔도.
  document.getElementById('STATICMENU').style.top = document.body.scrollTop + stmnBASE + 'px'; 
  RefreshStaticMenu();
  }
</script>

<script>
    $(document).ready(function() {
        $('#star1').raty({
            path : "/upload/img/raty/",
            start : 1,
            starOff : 'star-off-big.png',
            starOn : 'star-on-big.png',
            width : 200
        });
        
        if("${sessionScope.loginUser}" == ""){
            $('button#repbtn').click(function(){
                swal({
                    text : "로그인 후 이용가능합니다..",
                    button : "확인",
                  })
            });
        }else{
           $('button#repbtn').click(function(){
               var repconts = $('#repconts').val();
               var repstar = $('#star1-score').val();
               var repptno = ${product.no};
               $.ajax({
                   type : "POST",
                   data : {
                       "conts" : repconts,
                       "meno" : "${sessionScope.loginUser.no}",
                       "ptno" : repptno,
                       "star" : repstar
                   },
                   url : "addrep.do",
                   success : function(result) {
                       $('#repconts').val("");
                       $('#star1').empty();
                       $('#star1').raty({
                           path : "/upload/img/raty/",
                           start : 1,
                           starOff : 'star-off-big.png',
                           starOn : 'star-on-big.png',
                           width : 200
                       });
                       var html="";
                       var addrep_target = $('div#addrep_target');
                       for(var item in result){
                           html+= '<div class="col-lg-12 my-3">';
                           html+= '    <div class="container pb-3" style="border-bottom: 0.5px solid rgba(0, 0, 0, 0.5)">';
                           html+= '    <div class="row">';
                           html+= '        <div class="col-lg-2 text-center">';
                           html+= '            <img src="' + result[item].mentee.phot + '" alt="singup" id="circle"><br>';
                           html+=                result[item].mentee.nick;
                           html+= '        </div>';
                           html+= '        <div class="col-lg-8 media-body">'+ result[item].conts +'</div>';
                           if(${sessionScope.loginUser != null}){
                               if(${sessionScope.loginUser.no} == result[item].meno){
                            	   html+= '  <div class="col-lg-1 media-body"><a href="javascript:void(0)" onclick="updaterep('+result[item].no +')"><i class="far fa-edit"></i></a></div>';
                                   html+= '  <div class="col-lg-1 media-body"><a href="javascript:void(0)" onclick="removerep('+result[item].no +')"><i class="fas fa-trash-alt"></i></a> </div>';
                               }
                           }
                           html+= '        </div>';
                           html+= '    </div>';
                           html+= '</div>';
                       }
                       addrep_target.html(html);
                   },
                   error : function(error, status) {
                       if(error.status == "500"){
                           swal({
                               text : "이미 상품평을 등록하셨습니다.",
                               button : "확인",
                             })
                       }
                   }
               });
           });
        }
        var Pric = jQuery.trim($('div#transPric').html());
        Pric= Pric.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
        $('div#transPric').html(Pric);
    });

    function scroll_follow(id) {
        $(window).scroll(function() //스크롤이 움직일때마다 이벤트 발생
        {
            var position = $(window).scrollTop()- $("#headermain").offset().top - $("#headernav").offset().top - 48; // 현재 스크롤바의 위치값을 반환합니다.
            if (position > testtTop) {
                $(id).css("position", "fixed-top");
                $(id).css("top", position + "px");
                /* $(id).css("width", "100%"); */

            } else {
                $(id).css("top", (testtTop) + "px");
                $(id).css("position", "absolute");
                /* $(id).css("width", "100%"); */
            }

        });
    }
    scroll_follow(setId);


    $('#click').raty({
        click : function(score, evt) {
            alert('ID: ' + this.attr('id') + '\nscore: ' + score
                    + '\nevent: ' + evt);
        }
    });
</script>


<script>
/* 디테일1 스크립트 */
$(document).ready(function(){
    var check = parseInt($('input#inputCnt').val());
    
    var getPric = parseInt(${product.pric});
    var getDeli = parseInt(${product.deli});
    var total =  String(getPric+getDeli);
    total = total.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
    document.getElementById('num').innerHTML=(total+"원");
});

function cntP(){
    var cnt = parseInt($('input#inputCnt').val()) +1;
    if(cnt>${product.stock}) cnt = ${product.stock};
    if(cnt>99) cnt=99;
    
    $('input#inputCnt').val(cnt);
    changePric(cnt);
}
function cntM(){
    var cnt = parseInt($('input#inputCnt').val()) -1;
    if(cnt<1) cnt=1;
    $('input#inputCnt').val(cnt);
    changePric(cnt);
}

function changePric(cnt){
    var check = parseInt($('input#inputCnt').val());
    if(check<1) check=1;
    
    check = parseInt($('input#inputCnt').val());
    if(check>${product.stock}) check = ${product.stock};
    if(check>999) check=999;
    
    var getPric = parseInt(${product.pric}) * cnt;
    var getDeli = parseInt(${product.deli});
    $('input#totalPric').val(getPric+getDeli);
    var total =  String(getPric+getDeli);
    
    total = total.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, '$1,');
    document.getElementById('num').innerHTML=(total+"원");
    
}
function checkLeng(obj){
    if (obj.value.length > obj.maxLength){
        obj.value = obj.value.slice(0, obj.maxLength);
      }  
    if( obj.value > ${product.stock}){
        obj.value = ${product.stock};
    }
    if( obj.value < 1){
        obj.value = 1;
    }
}

//수정버튼 여기서부터 . 
var befoetext;
function updaterep(rno){
	var flag;
	var aftertext;
	if(flag == null){
		befoetext =$('.col-lg-1.media-body').parent().children().eq(1).text();
		$('.col-lg-1.media-body').parent().children().eq(1).empty();
		$('.col-lg-1.media-body').parent().children().eq(2).empty();
		$('.col-lg-1.media-body').parent().children().eq(1).append('<textarea class="aftertest" style="width:100%; height:6rem;">'+befoetext+'</textarea>');
		$('.col-lg-1.media-body').parent().children().eq(2).append('<a href="javascript:void(0)" onclick="updaterepcomplete('+rno+')"><i class="far fa-edit"></i></a>')
		flag=$('.col-lg-1.media-body').parent().children().eq(1).children().attr("class");
	}
}

function updaterepcomplete(rno){
	var completetext = $('.aftertest').val();
	console.log(${product.no});
	console.log(rno);
	$.ajax({
		type : "POST",
		data : {
			conts : completetext,
			no : rno,
			ptno : ${product.no}
		},
		url : "updaterep.do",
		success(result){
			$('.col-lg-1.media-body').parent().children().eq(1).empty();
			$('.col-lg-1.media-body').parent().children().eq(2).empty();
			$('.col-lg-1.media-body').parent().children().eq(1).append(completetext);
			$('.col-lg-1.media-body').parent().children().eq(2).append('<div class="col-lg-1 media-body"><a href="javascript:void(0)"onclick="updaterep('+rno+')"><i class="far fa-edit"></i></a></div>');
			swal({
				text:"댓글수정완료",
				button:"확인"
			});
		}
	});
}



function removerep(rno){
    if('${sessionScope.loginUser}' != ''){
        $.ajax({
            type : "POST",
            data : {
                "ptno" : ${product.no},
                "rno" : rno
            },
            url : "removerep.do",
            success : function(result) {
                var html="";
                var addrep_target = $('div#addrep_target');
                for(var item in result){
                    html+= '<div class="col-lg-12 my-3">';
                    html+= '    <div class="container pb-3" style="border-bottom: 0.5px solid rgba(0, 0, 0, 0.5)">';
                    html+= '    <div class="row">';
                    html+= '        <div class="col-lg-2 text-center">';
                    html+= '            <img src="' + result[item].mentee.phot + '" alt="singup" id="circle"><br>';
                    html+=                result[item].mentee.nick;
                    html+= '        </div>';
                    html+= '        <div class="col-lg-8 media-body">'+ result[item].conts +'</div>';
                    if(${sessionScope.loginUser != null}){
                        if(${sessionScope.loginUser.no} == result[item].meno){
                        	html+= '  <div class="col-lg-1 media-body"><a href="javascript:void(0)" onclick="updaterep('+result[item].no +')"><i class="far fa-edit"></i></a>';
                            html+= '  <div class="col-lg-1 media-body"><a href="javascript:void(0)" onclick="removerep('+result[item].no +')"><i class="fas fa-trash-alt"></i></a> </div>';
                        }
                    }
                    html+= '        </div>';
                    html+= '    </div>';
                    html+= '</div>';
                }
                addrep_target.html(html);
            },
            error : function(error, status) {
                console.log(error);
            }
        });
    }
}

function qnaType(){
    // 문의 타입에따라 input hidden getQnaType에 값을 설정해둠. > 문의 추가할때 값을 편하게 가져오기위해
    var qnatypes = $('input.qnatype');
    for(var index=0;index < qnatypes.length;index++){
        if(qnatypes[index].checked == true){
            $('input#getQnaType').val(qnatypes[index].value);
        }
        
    }
}

function addqna(no){
    var qnatype = $('input#getQnaType').val();
    var qnatitl = $('input#qnatitl').val();
    var qnaconts = $('textarea#qnaconts').val();
    var ptno = ${product.no};
    /* var qnatitl = $('input#qnatitl').val(); */
   $.ajax({
       type : "POST",
       data : {
           "meno" : "${sessionScope.loginUser.no}",
            "ptno" : ptno,
           "type" : qnatype,
           "titl" : qnatitl,
           "conts" : qnaconts
       },
       url : "addqna.do",
       success : function(result) {
           $('#addQnaModal').modal('hide');
           $('.modal-backdrop.fade.show').remove();
           $('form#qnaModal')[0].reset();
       },
       error : function(error, status) {
           
       }
   });
}
</script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>
function npay(){
    if(${sessionScope.loginUser eq null}){
        swal({
            text : "로그인 후 이용가능합니다..",
            button : "확인",
          })
    }else{
       var IMP = window.IMP; // 생략해도 괜찮습니다.
       IMP.init("imp40971131"); // "imp00000000" 대신 발급받은 "가맹점 식별코드"를 사용합니다.
       
       IMP.request_pay({
           pg : 'naverco',
           pay_method : 'card', //연동되지 않습니다. 네이버페이 결제창 내에서 결제수단을 구매자가 직접 선택하게 됩니다.
           merchant_uid : 'merchant_' + new Date().getTime(), //상점에서 관리하시는 고유 주문번호를 전달
           name : '${product.titl}',
           amount : parseInt($('input#totalPric').val()),
           buyer_email : '${sessionScope.loginUser.email}',
           buyer_name : '${sessionScope.loginUser.name}',
           buyer_tel : '${sessionScope.loginUser.phone}',
           buyer_addr : '${sessionScope.loginUser.bas_addr}',
           buyer_postcode : '${sessionScope.loginUser.pstno}',
           naverProducts :
               {
                   id : "singleProductId",
                   name : '${product.titl}',
                   basePrice : 1000,
                   taxType : 'TAX_FREE', //TAX or TAX_FREE
                   quantity : 1,
                   infoUrl : "http://www.iamport.kr/product/detail",
                   imageUrl : "http://getwallpapers.com/wallpaper/full/a/5/d/544750.jpg",
                   shipping : {
                       groupId : "shipping-a",
                       method : "DELIVERY", //DELIVERY(택배·소포·등기), QUICK_SVC(퀵 서비스), DIRECT_DELIVERY(직접 전달), VISIT_RECEIPT(방문 수령), NOTHING(배송 없음)
                       baseFee : 2500,
                       feeRule : {
                           freeByThreshold : 20000
                       },
                       feePayType : "PREPAYED" //PREPAYED(선불), CASH_ON_DELIVERY(착불)
                   }
               }
           
       });
    }
}
</script>


<!-- 장바구니 -->
<script>
function prodBaskt(no) {
    var ptno = ${product.no}; 
    if("${sessionScope.loginUser}" == ""){
        swal({
            text : "로그인 후 이용가능합니다..",
            button : "확인",
          })
    } else{
        $.ajax({
            type : "POST" , 
            data : {
                "ptno" : ptno,
                "meno" : no,
                "cnt" : 1
            },
            url : "prodBaskt.do" ,
            success : function() {
                swal({
                    text : "장바구니에 등록되었습니다",
                    icon : "success",
                    button : "확인",
                  })
            },error : function(error,status){
                swal({
                    text : "이미 장바구니에 등록된 상품입니다.",
                    button : "확인",
                  })
            }
        });
    } 
}


</script>


<!-- 찜클래스 -->
<script>
function clslikeins(no) {
    var cno = ${detailclass.no};
    if("${sessionScope.loginUser}" == ""){
        swal({
            text : "로그인 후 이용가능합니다..",
            button : "확인",
          })
    } else{
        $.ajax({
            type : "POST" , 
            data : {
                "cno" : cno , 
                "meno" : no
            },
            url : "clslikeins.do" ,
            success : function() {
                swal({
                    text : "찜클래스가 등록되었습니다",
                    icon : "success",
                    button : "확인",
                  })
            },error : function(error,status){
                swal({
                    text : "이미 찜클래스에 등록된 클래스입니다.",
                    button : "확인",
                  })
            }
        });
    } 
}


</script>
<script>
function update(){
    var openWin;
    
    var url    = "prodUpdate?no="+${product.no};
    var title  = "하루 - 상품수정";
    var status = "toolbar=no,directories=no,scrollbars=no,resizable=no,status=no,menubar=no,width=1300, height=750, top=-1000,left=100"; 
    openWin = window.open(url, title,status); 
        //window.open(url,title,status); window.open 함수에 url을 앞에와 같이
        //인수로  넣어도 동작에는 지장이 없으나 form.action에서 적용하므로 생략
        //가능합니다.
    /* frm.target = title;    //form.target 이 부분이 빠지면 form값 전송이 되지 않습니다. 
    frm.action = url;         //form.action 이 부분이 빠지면 action값을 찾지 못해서 제대로 된 팝업이 뜨질 않습니다. 
    frm.method = "GET";
    frm.submit();   */
}
function updatestat(){
    swal({
        title: "삭제 하시겠습니까?",
        text: "삭제한 게시물은 복구할 수 없습니다.",
        icon: "warning",
        buttons: true,
        dangerMode: true,
    }).then((willDelete) => {
        if (willDelete) {
            swal({
                text : "삭제되었습니다.",
                button : "확인",
            }).then((willDelete) => {
                if(willDelete){
                  location.href="updatestat?no=${product.no}&stat=N";
                }
              })
        } else {
          
        }
      });
}
</script>

<!-- 상품상세보기에서 아코디언임 -->
<script>
$('.accordian-body').on('show.bs.collapse', function () {
    $(this).closest("table")
        .find(".collapse.in")
        .not(this)
})
</script>

<script>
function repPaging(rpageNo){
	
   $.ajax({
       type : "POST",
       data : {
           "ptno" : ${product.no},
           "pageNo" : rpageNo
       },
       url : "repLoad.do",
       success : function(result) {
           var html="";
           var addrep_target = $('div#addrep_target');
           for(var item in result){
               html+= '<div class="col-lg-12 my-3">';
               html+= '    <div class="container pb-3" style="border-bottom: 0.5px solid rgba(0, 0, 0, 0.5)">';
               html+= '    <div class="row">';
               html+= '        <div class="col-lg-2 text-center">';
               html+= '            <img src="' + result[item].mentee.phot + '" alt="singup" id="circle"><br>';
               html+=                result[item].mentee.nick;
               html+= '        </div>';
               html+= '        <div class="col-lg-8 media-body">'+ result[item].conts +'</div>';
               if(${sessionScope.loginUser != null}){
                   if(${sessionScope.loginUser.no} == result[item].meno){
                       html+= '  	<div class="col-lg-1 media-body"><a href="javascript:void(0)" onclick="removerep('+result[item].no +')"><i class="fas fa-trash-alt"></i></a> </div>';
                   }
               }
               html+= '        </div>';
               html+= '    </div>';
               html+= '</div>';
           }
           addrep_target.html(html);
       },
       error : function(error, status) {
           console.log(error);
       }
   });
}

function qnaPaging(rpageNo){
    var prodmeno = ${product.meno};
    $.ajax({
        type : "POST",
        data : {
            "ptno" : ${product.no},
            "pageNo" : rpageNo
        },
        url : "qnaLoad.do",
        success : function(data) {
            var html="";
            var addqna_target = $('tbody#qna_target');
            for(var i in data){
                var cqno = data[i].no;
                var qnatitl = data[i].titl;
                var qnatype = data[i].type;
                var qnargdt = data[i].rgdt;
                var qnaconts = data[i].conts;
                var qnaanser = data[i].anser;
                var qnanick = data[i].mentee.nick;
                var countqn = ${countqna};
                
                qnargdt = new Date();
                
                var dd= qnargdt.getDate();
                var mm= qnargdt.getMonth();
                var yy= qnargdt.getFullYear();
                
                if( dd < 10){
                    dd = '0' + dd;
                }
                if( mm < 10){
                    mm='0' +mm;
                }
                
                qnargdt = yy+'-'+mm+'-'+dd;
                
                html +=' <c:set var="qnasi" value="${countqna}" />'
                html +='    <tr data-toggle="collapse" '
                html +='    data-target="#demo1-'+(parseInt(i)+1)+'" class="accordion-toggle row">'
                html +='        <td class="col-lg-1" scope="row" id="qna_th">'+((rpageNo-1)*5+(parseInt(i)+1))+'</td>'
                html +='        <td class="col-lg-2">'+qnatype+'</td>'
                                    if(qnaanser == null){
                html +='            <td class="col-lg-2">미완료</td>'
                                    }else{
                html +='            <td class="col-lg-2">완료</td>'
                                    }
                        if(qnatitl.length > 8) {
                        var longtitl = qnatitl.substring(0, 7);
                html +=' <td class="col-lg-3">'+longtitl+'..</td>'
                        } else {
                html +=' <td class="col-lg-3">'+qnatitl+'</td>'
                        }
                html +='        <td class="col-lg-2">'+qnanick+'</td>'
                html +='        <td class="col-lg-2">'+qnargdt+'</td>'
                html +='    </tr>'
                html +='    <tr>'
                html +='        <td colspan="6" class="hiddenRow" style="width:1000px">'
                html +='             <div class="accordian-body collapse" id="demo1-'+i+'">'
                html +='             <div class="adddet col-lg-12" style="text-align: center;'
                html +='            vertical-align: middle;'
                html +='                        display : block;">질문 내용</div>'
                html +='            <div class="acco" id="cont">'+qnaconts+'</div><br>'
                                     if(qnaanser == null){
                html +='                      <div class="adddet col-lg-12" style="text-align: center;'
                html +='                          vertical-align: middle;'
                html +='                         display : block;">질문 답변</div>'
                                            if("${sessionScope.loginUser}" == ""){
                html +='                              <div class="acco" id="ans'+i+'">답변이 등록되지 않았습니다.</div>'
                                            } else if("${sessionScope.loginUser.no}" == prodmeno) {
                   html +='                            <form class="ansinss" action="detail?no='+cno+'" method="post">'
                   html +='                                <label onClick="ansbtn('+i+')" class="allbtn"'
                   html +='                                id="allbtn'+i+'">답변을 작성하시려면 클릭해주세요!</label>'
                   html +='                                <textarea class="clsanser" id="cls'+i+'" rows="5" name="clsanser"'
                   html +='                                style ="width : 500px; display: none;"></textarea>'
                   html +='                                <div class="butmana" style="margin-left:10px;">'
                   html +='                                    <button class="btn btn-default"' 
                   html +='                                    onClick="answerins(${sessionScope.loginUser.no},cls'+i+','+cqno+')"'
                   html +='                                     type="button" >등록</button>'
                   html +='                                    <button class="btn btn-default" id="ansstat" type="button"' 
                   html +='                                     onClick="answercansle('+i+')">취소</button>'
                   html +='                                 </div>'
                   html +='                              </form>'
                                            } else {
                   html +='                            <div class="acco" id="ans'+i+'">답변이 등록되지 않았습니다.</div>'
                                            }
                                    }else{
                   html +='                    <div class="adddet col-lg-2" style="text-align: center;'
                   html +='                    vertical-align: middle;'
                   html +='                        display : block;">질문 답변</div>'
                   html +='                     <div class="acco" id="ans'+i+'">'+qnaanser+'</div>'
                                   }
                   html +='            </div>'
                   html +='        </td>'
                   html +='    </tr>'
                
            }
            addqna_target.html(html);
        },
        error : function(error, status) {
            console.log(error);
        }
    });
}

function qnaCheck(){
    if(${sessionScope.loginUser == null}){
        swal({
            text : "로그인 후 이용가능합니다..",
            button : "확인",
          })
          return false
    }
}
</script>
</body>

</html>