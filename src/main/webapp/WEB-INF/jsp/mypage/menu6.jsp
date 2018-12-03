<%@ page import="bitcamp.java110.cms.domain.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


    
<div class="col-lg-12"> 
    <div class="panel panel-default">


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
                            <td><a href='#'><img src="${p.phot}" width="200px" height="150px"/></a></td>
                            <td>${p.titl}<br></td>
                            <td>${p.pric}</td>
                            
                            
                            <td>
                            <button type="button" class="btn btn-primary" style="width:100px; margin:2px;">수정</button>
                            <button type="button" class="btn btn-primary" style="width:100px; margin:2px;">삭제</button>
                            <button type="button" class="btn btn-primary" style="width:100px; margin:2px;">판매종료</button>
                            <button id="buyer-${i.index}" type="button" class="btn btn-warning"  style="width:100px; margin:2px;">주문자 목록</button>
                            </td>
                            </tr>
</c:forEach>   
                            

        

                </tbody>
                
            </table>

        </div>

    </div>

</div>

<script>

<c:forEach items="${pmanage}" var="pp" varStatus="i">
    $("#buyer-"+${i.index}).click(function(){
     
        $("#menu6").fadeOut(200);
        
        setTimeout(function() {
            $("#menu6buyer").load("/app/mypage/menu6buyer");
            $("#menu6buyer").fadeIn(200);
        }, 200);
       
    });
    </c:forEach>

</script>



