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

                            <tr id="tb-pay">
                            <td>${i.count}</td>
                            <td>${p.product.titl}
                            <a href='#'><img src="${p.product.phot}" width="200px" height="150px"/></a>
                            </td>
                            <td>상품명<br></td>
                            <td>상품가격</td>
                            
                            
                            <td>
                            <button type="button" class="btn btn-primary" style="width:100px; margin:2px;">수정</button>
                            <button type="button" class="btn btn-primary" style="width:100px; margin:2px;">삭제</button>
                            <button type="button" class="btn btn-primary" style="width:100px; margin:2px;">판매종료</button>
                            <button type="button" class="btn btn-primary" style="width:100px; margin:2px;">주문자 목록</button>
                            <button type="button" class="btn btn-primary"
                                    data-toggle="modal" data-target="#exampleModal" style="width:100px; margin:2px;">배송정보</button>
                            </td>
                            </tr>

                            <!-- Modal 스타또-->
                            <div class="modal fade" id="exampleModal" tabindex="-1"
                                role="dialog" aria-labelledby="exampleModalLabel"
                                aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">배송정보</h5>
                                            <button type="button" class="close" data-dismiss="modal"
                                                aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">배송업체&nbsp;:&nbsp;${p.parc_name }<br>송장번호&nbsp;:&nbsp;${p.parc_no}</div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-primary"
                                                data-dismiss="modal"> 입력/수정 </button>
                                            <button type="button" class="btn btn-secondary"
                                                data-dismiss="modal">확인</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <!-- modal 끝 -->

        

                </tbody>
                
            </table>

        </div>

    </div>

</div>





