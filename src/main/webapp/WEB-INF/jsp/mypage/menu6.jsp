<%@ page import="bitcamp.java110.cms.domain.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


    
<div class="col-lg-12"> 
    <div class="panel panel-default">

 <span style="dispay:inline; font-size:24px; font-weight:900; color:black; vertical-align: middle;" >상품 목록</span>
        <div class="panel-body">
        <table class="table table-condensed" style="border-collapse: collapse;">

                <thead>
                    <tr id="th-pay">

                        <th width="5%">No.</th>
                        <th width="30%">상품사진</th>
                        <th width="20%">상품명</th>
                        <th width="20%">상품가격</th>
                        <th width="30%"></th>


                    </tr>
                </thead>

                <tbody>
 <c:forEach items="${pmanage}" var="p" varStatus="i">
                            <tr id="tb-pay">
                            <td>${i.count}</td>
                            <td><a href="../product/detail?no=${p.no}"><img src="${p.phot}" width="200px" height="150px"/></a></td>
                            <td>${p.titl}<br></td>
                            <td>${p.pric}</td>
                            
                            
                            <td>
                            <a href="../product/prodUpdate?no=${p.no}">
                            <button type="button" class="btn btn-primary" style="width:100px; margin:2px;">수정</button></a>
                           
                            
                            <button type="button" class="btn btn-primary" name="${p.no}" onclick="updatestat(this.name)" style="width:100px; margin:2px;">삭제</button>
                            
                            <form action="javascript:void(0)" id="buyer${i.index}" method="post" >
                            <input name="ptno" id="ptno${i.index}" type="hidden" value="${p.no}"/>
                            <button  id="submit_btn${i.index}" class="btn1 btn-warning"  style="width:100px; margin:2px;">주문자 목록</button>
                            </form>
                            
                            </td>
                            </tr>
                            
                            
                            
</c:forEach>   
                            


                </tbody>
                <tbody>
                </tbody>
            </table>

        </div>

    </div>

</div>

<script>

<c:forEach items="${pmanage}" var="pp" varStatus="i"> 

   $('#submit_btn'+${i.index}).click(function() { 
     
        $("#menu6").fadeOut(200);
        
        setTimeout(function() {
            var j = ${i.index};
            var getptno = $('input#ptno'+j).val();
            $("#menu6buyer").load("/app/mypage/menu6buyer?ptno="+getptno);
            $("#menu6buyer").fadeIn(200);
        }, 200);
       
    });
    
   </c:forEach> 
    
   // 상품삭제
   
   function updatestat(pno){
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
                  location.href="../product/updatestat?no="+pno+"&stat=N";
                }
              })
        } else {
           
        }
      });
}
</script>



