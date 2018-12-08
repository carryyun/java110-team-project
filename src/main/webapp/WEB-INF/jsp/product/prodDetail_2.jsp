<%@page import="java.sql.Date"%>
<%@page import="bitcamp.java110.cms.domain.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<div class="container">
	<!-- 상세정보, 상품평, QnA navi바 -->
	<div id="testt">
		<ul class="under-navbar-nav">
			<li class="under-nav-item"><a class="nav-link"
				href="#target_detail"><h5>상세정보</h5></a></li>

			<li class="under-nav-item"><a class="nav-link"
				href="#target_review"><h5>상품평</h5></a></li>

			<li class="under-nav-item"><a class="nav-link"
			     href="#target_qna"><h5>Q&A</h5></a></li>
		</ul>
	</div>

	<!-- 상세정보, 수업정보, 상품평, QnA -->
	<div class="row">
		<div class="col-lg-12 mx-auto mb-4 px-5 pt-3" style="background-color: #fff;" id="detail">
            
			<h3 id="target_detail">상세정보</h3>
			<hr class="Fhr" id="prod_detail" style="margin-bottom: 25px">
			<div class="detail_info px-4 pb-3">
				${product.conts}
			</div>
        </div> 
        <div class="col-lg-12 mx-auto mb-4 px-5 pt-3" style="background-color: #fff;">
			<h3 id="target_review">상품평</h3>
			<hr class="Fhr" id="prod_review">
			
			<div class="detail_review">
				<div class="row" style="margin: 0 auto">
					<div class="col text-center">
						<h1 class="rating-num">${product.star}</h1>
						<div class="rating col">
							<%
							  Product p2 = (Product) request.getAttribute("product");
							  for (int i = 0; i < 5; i++) {
							    if (i < p2.getStar()) {
							%>
							<img alt="star-on-big" src="/upload/img/raty/star-on-big.png">
							<% 
							  } else {
							%>
							<img alt="star-off-big" src="/upload/img/raty/star-off-big.png">
							<%
							  }
							  }
							%>
						</div>
						<div>
							<i class="fas fa-user"></i>total ${repCnt}
						</div>
					</div>
				</div>
				
                    <div class="col my-3">
                                <table class="fixed-table w-100">
                                    <tr>
                                        <td colspan="3">
                                            <div class="col-lg-12 mb-3">
                                                <textarea class="form-control" id="repconts" name="conts"
                                                    placeholder="상품평을 등록해주세요." rows="4"></textarea>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><label class="control-label my-0" for="message">별점</label>
                                        </td>
                                        <td>
                                            <div id="star1"></div> <!-- </div> --> <!-- <div class=""> -->
                                        </td>

                                        <td align="right" valign="top">
                                            <!-- Form actions --> <!--col-lg-12추가했음-->
                                            <div class="col-md-12 col-lg-12 text-right"
                                                style="vertical-align: middle;">
                                                <button type="button" id="repbtn" class="btn btn-primary btn-md"
                                                    style="background-color: #606066; color: #ffffff">등록</button>
                                                <!-- <button type="reset" class="btn btn-default btn-md">취소</button> -->
                                            </div>
                                        </td>
                                    </tr>
                                    <!-- <div class="col-md-9 col-md-offset-0"> -->
                                </table>
                    </div>
                    <div class="row">
                    <div class="col-lg-12">
	                    <hr class="Fhr">
                    </div>
                    <div class="col-lg-12 px-0" id="addrep_target">
		                <c:forEach items="${replyList}" var="r" varStatus="i">
		                    <div class="col-lg-12 my-3">
			                    <div class="container pb-3" style="border-bottom: 0.5px solid rgba(0, 0, 0, 0.5)">
			                    <div class="row">
			                        <div class="col-lg-2 text-center">
			                            <img src='${r.mentee.phot}' alt="singup" id="circle"><br>
			                            ${r.mentee.nick}
			                        </div>
			                        
			                        <div class="col-lg-9 media-body">${r.conts}</div>
			                        <c:if test="${sessionScope.loginUser != '' }">
			                          <c:if test="${sessionScope.loginUser.no == r.meno }">
				                        <div class="col-lg-1 media-body"><a href="javascript:void(0)" onclick="removerep(${r.no})"><i class="fas fa-trash-alt"></i></a> </div>
			                          </c:if>
			                        </c:if>
			                        
			                        </div>
			                    </div>
			                    
		                    </div>
		                </c:forEach>
		                </div>
                    </div>
                    <!-- <table width="100%" border="0"> -->
                    <!--페이지 넘버-->
    <nav aria-label="Page navigation example" id="product-pn">
        <ul class="pagination justify-content-center">
            <li class="page-item disabled "><a class="page-link" href="#"
                tabindex="-1"> <</a></li>
                <c:set var="reppage" value="${repPageSize}"/>
                
                <%
	                int repsize = (int)pageContext.getAttribute("reppage");
                    for(int pno = 1; pno<= repsize ; pno++){
                %>
                    <li class="page-item"><a class="page-link" 
                    onClick="repPaging(<%=pno%>)"><%=pno%></a></li>
                <%
                    }
                %>
                
            <li class="page-item"><a class="page-link" href="javaScript:void(0)">></a></li>
        </ul>
    </nav>
			</div>
            </div>

            <div class="col-lg-12 mx-auto mb-4 px-5 pt-3" style="background-color: #fff;">
			<div id="prod_review">
				<div class="detail_info px-0 py-3">
					<h3 id="target_qna">Q&A</h3>
					<div class="row">
						<div class="col-lg-12">

							<table class="table row" id="qna_table" style="margin: 0 auto">
								<!-- container생략  -->
								<thead class="col-lg-12">
									<tr class="row">
										<th scope="col" class="col-lg-1" id="qna_th">번호</th>
										<th scope="col" class="col-lg-2" id="qna_th">문의유형</th>
										<th scope="col" class="col-lg-2" id="qna_th">답변상태</th>
										<th scope="col" class="col-lg-3" id="qna_th">문의/답변</th>
										<th scope="col" class="col-lg-2" id="qna_th">작성자</th>
										<th scope="col" class="col-lg-2" id="qna_th">작성일</th>

									</tr>
								</thead>
								
								
								
								
									<tbody class="col-lg-12" id="qna_target">
								<c:forEach items="${prodQnaList}" var="qna" varStatus="i">
										<tr data-toggle="collapse" data-target="#demo1-${i.count}" class="accordion-toggle row">
                                            <td class="col-lg-1" scope="row" id="qna_th">${i.count}</td>
                                            <td class="col-lg-2">${qna.type}</td>
                                            <c:set var="yn" value="${qna.anser}"/>
                                            <%
                                                String qnayn = (String)pageContext.getAttribute("yn");
                                                if(qnayn==null){
                                            %>
                                                <td class="col-lg-2">미완료</td>
                                            <%  }else{
                                            %>
                                                <td class="col-lg-2">완료</td>
                                            <%  
                                            }
                                            %>
                                            <td class="col-lg-3">${qna.titl}</td>
                                            <td class="col-lg-2">${qna.mentee.nick}</td>
                                            <td class="col-lg-2">${qna.rgdt}</td>
                                        </tr>
                                        <tr>
                                            <td colspan="6" class="hiddenRow" style="width:1000px">
                                                <div class="accordian-body collapse" id="demo1-${i.count}">
                                                <div class="adddet col-lg-12" style="text-align: center;
                                                vertical-align: middle;
                                                            display : block;">질문 내용</div>
                                                <div class="acco" id="cont">${qna.conts}</div><br>
                                                    <c:set var="ans" value="${qna.anser}"/>
                                                    <%
                                                        String ans = (String)pageContext.getAttribute("ans");
                                                        if(ans==null){
                                                    %>
                                                        <div class="adddet col-lg-12" style="text-align: center;
                                                            vertical-align: middle;
                                                            display : block;">질문 답변</div>
                                                            
                                                        <c:choose>  
                                                            <c:when test="${sessionScope.loginUser eq null}">
                                                                <div class="acco" id="ans${i.index}">답변이 등록되지 않았습니다.</div>
                                                            </c:when>
                                                            <c:when test="${sessionScope.loginUser.no eq product.mentee.no}">
                                                                <form class="ansinss" action="detail?no=${product.no}" method="post">
                                                                    <label onClick="ansbtn(${i.index})" class="allbtn"
                                                                    id="allbtn${i.index}">답변을 작성하시려면 클릭해주세요!</label>
                                                                    <textarea class="clsanser" id="cls${i.index}" rows="5" name="clsanser"
                                                                    style ="width : 500px; display: none;"></textarea>
                                                                    <div class="butmana" style="margin-left:10px;">
                                                                        <button class="btn btn-default" 
                                                                        onClick="answerins(${sessionScope.loginUser.no},cls${i.index},${qna.no})"
                                                                         type="button" >등록</button>
                                                                        <button class="btn btn-default" id="ansstat" type="button" 
                                                                        onClick="answercansle(${i.index})">취소</button>
                                                                    </div>
                                                                </form>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <div class="acco" id="ans${i.index}">답변이 등록되지 않았습니다.</div>
                                                            </c:otherwise>
                                                        </c:choose>
                                                        
                                                    <%  }else{
                                                    %>
                                                        <div class="adddet col-lg-2" style="text-align: center;
                                                        vertical-align: middle;
                                                            display : block;">질문 답변</div>
                                                        <div class="acco" id="ans${i.index}">${qna.anser}</div>
                                                    <%  
                                                    }
                                                    %>
                                                </div>
                                            </td>
                                        </tr>
								</c:forEach>
									</tbody>
							</table>
						</div>
						<div class="col-lg-12 text-right">
							 <!-- <button onclick="location.href='prdtQna'">상품 문의</button>  -->
							
							<button type="button" data-toggle="modal" data-target="#addQnaModal"
							style="width: 120px; height: 40px; background-color: #606066; color: #ffffff">상품문의</button>
                                        <!--여기에 코드 작성-->
                                        
                                        <c:choose>
                                    <c:when test="${sessionScope.loginUser eq null}">
                                        <div class="modal fade" id="squarespaceModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
                                              <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title" class="replogin">로그인 후 이용가능합니다.</h4>
                                                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                                                    </div>
                                                </div>
                                              </div>
                                            </div>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="modal fade" id="addQnaModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" style="text-align: center" aria-hidden="true">
                                          <div class="modal-dialog">
                                            <div class="modal-content text-left">
                                                <div class="modal-header">
                                                    <h4 class="modal-title" id="repupdat">상품 명: ${product.titl}</h4>
                                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                                                </div>
                                                <div class="modal-body">
                                                    
                                                    <!-- content goes here -->
                                                    <form action="detail?no=${product.no}" id="qnaModal" method="post">
                                                      <div class="form-group">
                                                        <label for="exampleInputEmail1">문의 유형</label>
                                                                <input type="radio" name="type" onclick="qnaType()" class="qnatype" value="환불" id="qnaopt1" checked="checked"/>
                                                                <label for="opt1">환불</label>
                                                                <input type="radio" name="type" onclick="qnaType()" class="qnatype" value="배송" id="qnaopt2"/>
                                                                <label for="opt2">배송</label>
                                                                <input type="radio" name="type" onclick="qnaType()" class="qnatype" value="상품" id="qnaopt3"/>
                                                                <label for="opt2">상품</label>
                                                                <input type="radio" name="type" onclick="qnaType()" class="qnatype" value="기타" id="qnaopt4"/>
                                                                <label for="opt2">기타</label>
                                                                <input type="hidden" id="getQnaType" value="환불"/>
                                                      </div>
                                                      <div class="form-group">
                                                        <label for="exampleInputTitle1">Q&A 제목</label>
                                                        <input type="text" class="form-control" name="titl" id="qnatitl" placeholder="제목을 입력해주세요">
                                                        
                                                      </div>
                                                      <div class="form-group">
                                                        <label for="exampleInputconts1">Q&A 내용</label>
                                                        <div>
                                                        <textarea name="qnaconts" id="qnaconts" rows="5" class="customWidth" style="resize: none; width:100%;" 
                                                        placeholder="내용을 입력해주세요"></textarea></div>
                                                      </div>
                                                      <button type="button" class="btn btn-default" data-dismiss="modal"
                                                            onClick="addqna(${sessionScope.loginUser.no});">등록하기</button>
                                                      <button type="button" class="btn btn-default" data-dismiss="modal"  role="button">취소</button>
                                                    </form>
                                        
                                                </div>
                                            </div>
                                          </div>
                                        </div>
                                    </c:otherwise>
                                </c:choose>
                                        
                                        <!--여기까지 코드 작성-->
             
								
						</div>
						<!-- <div class="col-lg-12"> -->
					</div>
					<!-- <div class="row"> -->

				</div>
				<!-- <div class="detail_info"> -->

			</div>
			<!-- <div class="row"> -->
			<!--  <div id="prod_review"> -->
		</div>
		<!-- <div class="container col-lg-12"> -->


	</div>
	<!-- <div class="row"> -->


	<!--페이지 넘버-->
	<nav aria-label="Page navigation example" id="product-pn">
		<ul class="pagination justify-content-center">
			<li class="page-item disabled "><a class="page-link" href="#"
				tabindex="-1"> <</a></li>
			<li class="page-item"><a class="page-link" href="javaScript:void(0)" onclick="qnaPaging(1)">1</a></li>
			<li class="page-item"><a class="page-link" href="javaScript:void(0)" onclick="qnaPaging(2)">2</a></li>
			<li class="page-item"><a class="page-link" href="javaScript:void(0)" onclick="qnaPaging(3)">3</a></li>
			<li class="page-item"><a class="page-link" href="javaScript:void(0)" onclick="qnaPaging(4)">4</a></li>
			<li class="page-item"><a class="page-link" href="javaScript:void(0)" onclick="qnaPaging(5)">5</a></li>
			<li class="page-item"><a class="page-link" href="javaScript:void(0)">></a></li>
		</ul>
	</nav>

</div>