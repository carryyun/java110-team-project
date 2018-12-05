<%@ page import="bitcamp.java110.cms.domain.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<div class="col-lg-12"> 
	<div class="panel panel-default">
	
    <span id="menu6re" style="dispay:inline; font-size:25px;">상품관리</span>
    <span style="dispay:inline; width:200px; font-size:20px;">&nbsp;&nbsp;>&nbsp;>&nbsp;&nbsp;주문자목록</span>
    
 
		<div class="panel-body">
		<table class="table table-condensed" style="border-collapse: collapse;">

                <thead>
                    <tr id="th-pay">

                        <th width="5%">No.</th>
                        <th width="25%">결제일자<br>(주문번호)</th>
                        <th width="20%">주문자</th>
                        <th width="35%">결제금액(수량)<br>(결제방법)      </th>
                        <th width="15%">상태</th>

                    </tr>
                </thead>

                <tbody>
                    
                  
                    <c:forEach items="${pmanage2}" var="p" varStatus="i">
                        
                        <tr id="tb-pay">
                            <td>${i.count}</td>
                            <td>${p.productOrder.paydt}<br> (<fmt:formatDate value="${p.productOrder.paydt}"
                                    pattern="yyyyMMdd" />${p.productOrder.no})</td>
                            <td>${p.mentee2.name}</td>
                            <td>${p.productOrder.tot_pric}(${p.productOrder.cnt})개<br>${p.productOrder.payopt}</td>
                            <td><button type="button" class="btn btn-primary" onclick="writeparc()">배송정보입력</button></td>
                        </tr>

                    </c:forEach>

                </tbody>
                
            </table>
		</div>

	</div>


</div>



<script>


function writeparc(){
    
     swal("Write something here:", {
        content: "input",
      })
      .then((value) => {
        swal(`You typed: ${value}`);
      }); 
     
      
     
}
   

$("#menu6re").click(function(){
 
    $("#menu6buyer").fadeOut(200);
    
    setTimeout(function() {
        $("#menu6").load("/app/mypage/menu6");
        $("#menu6").fadeIn(200);
    }, 200);
   
});


</script>

