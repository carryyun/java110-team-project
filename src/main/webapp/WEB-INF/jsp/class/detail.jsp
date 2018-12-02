<%@page import="bitcamp.java110.cms.domain.Classes"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
    content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Clean Blog - Start Bootstrap Theme</title>

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

<!-- Custom styles for this template -->
<!--  <link href="/css/clean-blog2.css" rel="stylesheet"> -->
<link href="/css/common.css" rel="stylesheet">
<link href="/css/class_detail.css" rel="stylesheet">

	<!-- 아래와 같이 주석처리한 이유는 bootstrap이 두번 선언된 경우에 동작이 두번할수도 있음 -->

<style type="text/css">
#STATICMENU { 
	margin: 0pt; padding: 0pt;  
	position: absolute; right: 0px; top: 0px;
	transform: translateX(95%);
	width : 300px;
	}
</style>

</head>
<body style="background-color: #F2F4F7" onload="InitializeStaticMenu()">
<div class="col" style="position: absolute; height: 105px; background-color: white">
    <!-- 헤더 배경색 적용 -->
</div>
    <div class="container">
        <div class="row">
			<div class="col-lg-12">
                <jsp:include page="../headerMain.jsp"></jsp:include>
            </div>
            <!-- 카테고리 nav (스크립트로 임시 inclue) -->
            <div class="col-lg-12">
                <jsp:include page="../headerNav.jsp"></jsp:include>
            </div>
            
            <div class="col-lg-12 col-md-12 mt-5">
	            <h2>클래스 상세보기</h2>
	            <hr class="FhrBotMargin">
            </div>
            <div class="col-lg-12">
            <div class="col-lg-9 text-center">
                <div class="row">
                    <aside class="col-lg-12 col-md-12 mx-auto">
                        <article class="gallery-wrap">
                                <div>
				                    <div id="carouselExampleIndicators" class="carousel slide" data-interval="false" data-ride="carousel">
									  <ol class="carousel-indicators">
									    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
									    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
									    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
									    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
									  </ol>
									  <div class="carousel-inner">
									    
									    <c:set var="cfl" value="${detailclass.cfile}"/>
									    <%
                                            String cfile = (String)pageContext.getAttribute("cfl");
                                            if(cfile.endsWith("jpg") || cfile.endsWith("png")){
                                        %>    
                                        <div class="carousel-item active">
									      <img style="width=100%; margin-left:-10px;" class="d-block w-100" src="${detailclass.cfile}" alt="First slide">
									      <%     
                                            }else {
                                             int cfileidx = cfile.indexOf("=");
                                             String cfileurl = cfile.substring(cfileidx+1);
                                        %>
                                            <div class="carousel-item active" style="margin-bottom: -5px;">
                                              <iframe width="100%" height="450" style="margin-left:-10px;" src="https://www.youtube.com/embed/<%=cfileurl%>" 
                                              frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
                                              allowfullscreen></iframe>
                                        <%
                                            }
                                        %>
									      
									    </div>
									    <c:forEach items="${clsfilelist}" var="cf" varStatus="i">
									    	<c:set var="divi" value="${cf.fname}"/>
									    	<%
									    		String fna = (String)pageContext.getAttribute("divi");
									    		if(fna.endsWith("jpg") || fna.endsWith("png")){
									    	%>	  
									    		<div class="carousel-item">
											      <img class="d-block w-100" style="width:100%; height:450px; margin-left:-10px; " 
											      src="${cf.fname}" alt="${i.count}">
											    </div>
									    	<%	  
									    		}else {
									    		 int idx = fna.indexOf("=");
									    		 String fnaurl = fna.substring(idx+1);
									    	%>
											    <div class="carousel-item" style="margin-bottom: -5px;">
											      <iframe width="100%" height="450" style="margin-left:-10px;" src="https://www.youtube.com/embed/<%=fnaurl%>" 
											      frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
											      allowfullscreen></iframe>
											    </div>
											<%
									    		}
											%>
										</c:forEach>
									  </div>
									  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
									    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
									  </a>
									  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
									    <span class="carousel-control-next-icon" aria-hidden="true"></span>
									  </a>
									</div>
								</div>
                            </div>
						</article>
                    </aside>
                    <!-- 사이드바 -->
                    <div id="STATICMENU">
                    	<aside class="col-lg-8">
                        <article class="card-body p-3">
                            <div class="text-center">
                            <img style="width: 200px; height:200px;" src="${detailclass.cfile}" alt=""/>
                                <h3 class="title mb-3">${detailclass.titl}</h3>
                                <dl class="param param-feature">
                                    <dd>${detailclass.middleTag.name}</dd>
                                </dl>
                                <dl class="param param-feature">
                                    ${detailclass.pric}원
                                </dl>

                                <dl class="param param-feature">
                                    	${detailclass.mentee.nick} 멘토
                                </dl>
                                
                                <dl class="param param-feature">
                                            <dd>${detailclass.basAddr}</dd>
                                </dl>
                                
                                <dl>
                                	<c:set var="clsstar" value ="${detailclass.star}"/>
                                	<%
		                            	int clsstar = (int)pageContext.getAttribute("clsstar");
		                            for(int i=0; i<5;i++){
									  if(i<clsstar){
									%>
									<img class="starimg" alt="star-on-big" src="/upload/img/raty/star-on-big.png"
									style="width:20px; height:20px;">
									<%}else{
		              					%>
		              				<img class="starimg" alt="star-off-big" src="/upload/img/raty/star-off-big.png"
		              				style="width:20px; height:20px;">
		              				<%
		            						}
		            					}
		            				%>
                                </dl>
                                        <!-- item-property .// -->
                                    <!-- col.// -->

                                <dl class="param param-feature">
                                            <select name="time">
	                                            <c:forEach items="${clstimelist}" var="t">
	                                            	<option value="">날짜 : ${t.date} , 시간 : ${t.stime}</option>
	                                            </c:forEach>
                                            </select>
                                </dl>
                                
                                <hr>
                                <!-- row.// -->
                                <!---->
                                <hr>
                                <a href="#" class="btn btn-lg btn-primary text-uppercase"
                                onClick="cls"> 수업 신청하기 </a>
                                <a href="#" class="btn btn-lg btn-outline-primary text-uppercase"
	                                	onClick="clslikeins(${sessionScope.loginUser.no});"> 
	                                    	<i class="fas fa-shopping-cart"></i> 찜클래스 </a>
                            </div>
                        </article>
                        <!-- card-body.// -->
                    </aside>
                    
                    </div>
                    <!-- 사이드바 끝 -->
                    <!-- col.// -->
                    
                </div>
                <!-- row.// -->
                
            </div>
            <!-- <div class="col-lg-12 col-md-12 text-center"> -->
        </div>
        <!-- <div class="row"> -->
						<div class="col-lg-12" id="testt">
				            <ul class="under-navbar-nav col-lg-9 col-md-12">
				                <li class="under-nav-item"><a class="nav-link"
				                    href="#class_detail">
				                        <h4>요약</h4> 
				                </a></li>
				                <li class="under-nav-item"><a class="nav-link"
				                    href="#mentor-info">
				                        <h4>강사소개</h4>
				                </a></li>
				                <li class="under-nav-item"><a class="nav-link" 
				                	href="#class-info">
				                        <h4>강의설명</h4>
				                </a></li>
				                <li class="under-nav-item"><a class="nav-link" 
				                	href="#location">
				                        <h4>위치</h4>
				                </a></li>
				                <li class="under-nav-item"><a class="nav-link" 
				                	href="#class-review">
				                        <h4>클래스 후기</h4>
				                </a></li>
				            </ul>
			        	</div>
    <!--요약 , 강사소개 , 강의설명,  위치, 클래스후기-->
        <div class="row">
          <div class="col-lg-9">
            <!-- Links -->
            <div class="col-lg-12 col-md-12 mx-auto" id="detail">
            
                <div class="detail_info">
                    <hr class="Fhr" id="class_detail">
                    <h3>요약</h3>
                    <!-- <div class="row"> -->
                    <div>
                    	<img style = "width:200px; height:200px; float:left;"src="${detailclass.mentee.phot}" alt="">
                    	<br><br><br>
                    	<div class = "shortinfo"><strong>금액</strong><div class="inf">${detailclass.pric}원</div></div>
	                    <div class = "shortinfo"><strong>총 수업시간</strong><div class="inf">${detailclass.time}시간</div></div>
	                    <div class = "shortinfo"><strong>모집인원</strong><div class="inf">${detailclass.capa}명</div></div>
                    </div>
                    <div style="margin-left : 40px;"><strong>멘토 : ${detailclass.mentee.nick}</strong></div>
                </div>
                <!-- <div class="detail_info"> -->
                
                <div class="detail_info">
                    <hr class="Fhr" id="mentor-info">
                    <h3>강사소개</h3>
                    ${detailclass.tinfo}
                </div>
                
                <div class="detail_info">
                    <hr class="Fhr" id="class-info">
                    <h3>강의설명</h3>
                    ${detailclass.cinfo}
                </div>
	                <div class="detail_info">
	                    <hr class="Fhr" id="location">
	                    <h3>위치</h3>
	                    <div class ="row" >
	                    <div id="map" style="width:500px; height:400px; margin-left:10px; float:left;"></div>
	                    <div class="dddd" style="float:right; width:200px; margin-top:60px;">
	                    <div id="adr" class = "addr" style="height:50px;"><div><strong>기본 주소</strong></div>  ${detailclass.basAddr}</div>
	                    <div id="adr" class = "addr"><div><strong>상세 주소</strong></div>  ${detailclass.detAddr}</div>
	                    </div>
	                    </div>
	                </div>
                
                <!-- <hr class="Fhr" id="class_info"> -->    
                <div class="detail_info">
                </div>  
                <!-- <div class="detail_info"> -->  
                <hr class="Fhr" id="class-review">   
                <div class="detail_info">   
                    <div class="row" style="margin: 0 auto">    
                        <div class="col text-center">   
                            <c:set var="starint" value="${detailclass.star}"/>
                            <strong>별점</strong>
                            <div class="rating col">
                                <% int star = (int)pageContext.getAttribute("starint"); 
                                for( int i=0;i<5;i++){
                                  if(i<star){
                                %> 
                                    <img alt="star-on-big" src="/upload/img/raty/star-on-big.png">
                                <%}else{
                                  %>
                                  <img alt="star-off-big" src="/upload/img/raty/star-off-big.png">
                                  <%
                                }
                                }
                                %>
                            </div>  
                            <div>
                            	 
                                	<span class="glyphicon glyphicon-user"></span>후기인원 : ${fn:length(clsreqlist)} 
                            </div>  
                        </div>  
                    </div>  
                </div>  
                
                <div class="container col-lg-12" id="prod_review">
                    <div class="row">
                        <div class="col">
				<form class="form-horizontal" action="detail?no=${detailclass.no}" method="post">
                    <fieldset>
					<table class="fixed-table w-100" >
							<tr>
								<td colspan="3">
									<!-- <div class=""> -->
									
											<!-- Message body -->
											<div class="form-group">
												<div class="col-lg-12">
													<input type="file" id="phot" name="phot">사진만 가능합니다.</input>
												</div>
												<div class="col-lg-12">
													<textarea class="form-control" id="conts" name="conts"
														placeholder="클래스평을 등록해주세요." rows="5"></textarea>
												</div>
											</div>
                                                </td>
                                </tr>
                                <tr>
                                            <td>
												<label class="control-label my-0" id="star" name="star" for="message">별점</label>
                                            </td>
                                            <td>
												<div id="star1"></div>
											<!-- </div> -->
											<!-- <div class=""> -->
                                            </td>
								<td align="right" valign="top">
									<!-- Form actions -->
										<!--col-lg-12추가했음-->
										<div class="col-md-12 col-lg-12 text-right" style="vertical-align: middle;">
												<button id="repbtn" type="button" onClick="repins(${sessionScope.loginUser.no});" 
												class="btn btn-primary btn-md"
													style="background-color: #606066; color: #ffffff">등록</button>
											</div>
								</td>
							</tr>
						<!-- <div class="col-md-9 col-md-offset-0"> -->
					</table>
					                                       </fieldset>
                                    </form>
                                    </div>
                    </div>

                    <hr>
                    <div class ="row">
	                    <div class="col-lg-12 col-md-12 mx-auto detail_info">
	                    <hr class="Fhr" id="class-review">
	                    <h3>클래스 후기</h3>
	                
	                    <c:forEach items="${clsreqlist}" var="r" varStatus="i">
	                        <div class="media"
	                            style="border-bottom: 0.3px solid rgba(0, 0, 0, 0.5)">
	                            <div class="col-lg-2 text-center">
	
	                                <img src='${r.mentee.phot}' alt="singup" id="circle">
	                                ${r.mentee.nick}
	                            </div>
	                            <div id="rcont${i.index}" class="col-lg-10 media-body">${r.conts}</div>
	                            <textarea class="repupda col-lg-9 media-body" id="repup${i.index}" rows="5" name="repup"
					                       style =" margin-left:10px; width : 500px; display: none;"></textarea>
					            <c:choose>
					            <c:when test="${sessionScope.loginUser eq null}">
					            	<button type="button" onClick="deleterepnull()"
	                             class="delebtn" id="delebtn${i.index}">삭제</button>
					            </c:when>
					            <c:otherwise>         
	                            <button type="button" data-toggle="modal" data-target="#deleteModal_${r.no}"
	                             class="delebtn" id="delebtn${i.index}">삭제</button>
	                             </c:otherwise>
	                             </c:choose>
	                            
			                            <div class="modal fade" id="deleteModal_${r.no}" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
										  <div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h4 class="modal-title" id="repdelet">해당 게시글 삭제하시겠습니까?</h4>
													<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
												</div>
												<div class="modal-body">
													
										            <!-- content goes here -->
													<form action="detail?no=${detailclass.no}" method="post">
										              <button type="button" class="btn btn-default" 
															onClick="delerep(${sessionScope.loginUser.no} , ${r.no} , ${r.meno});">삭제하기</button>
													  <button type="button" class="btn btn-default" data-dismiss="modal"  role="button">취소</button>
										            </form>
												</div>
											</div>
										  </div>
										</div>
										
								<c:choose>
									<c:when test="${sessionScope.loginUser eq null}">
										<button type="button" class="edbtn" id="edbtn${i.index}" 
	                            onClick="deleterepnull()" >수정</button>
									</c:when>
									<c:otherwise>
										<button type="button" class="edbtn" id="edbtn${i.index}" 
	                            onClick="updarep(${sessionScope.loginUser.no} , ${r.no} , ${r.meno} ,${i.index});" >수정</button>
									</c:otherwise>
								</c:choose>
								
	                            <button type="button" class="updabtn" id="updabtn${i.index}" data-toggle="modal" 
	                            data-target="#updateModal_${r.no}" 
	                             style="display:none;">수정완료</button>
			                            <div class="modal fade" id="updateModal_${r.no}" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
										  <div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h4 class="modal-title" id="repupdat">해당 게시글 수정하시겠습니까?</h4>
													<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
												</div>
												<div class="modal-body">
										            <!-- content goes here --> 
													<form action="detail?no=${detailclass.no}" method="post">
										              <button type="button" class="btn btn-default" data-dismiss="modal"
															 onClick="updabtn(${r.no} , ${i.index})" >수정하기</button>
													  <button type="button" class="btn btn-default" data-dismiss="modal" role="button"
													  onClick="updano(${i.index})">취소</button>
										            </form>
												</div>
											</div>
										  </div>
										</div>
	                        </div>
	                    </c:forEach>
	                    </div>
                    </div>
                    <hr class="Fhr" id="qna">
                    <br><br>
				 <nav aria-label="Page navigation example" id="product-pn" 
		            style="margin : auto; margin-top: -40px;">
		                <ul class="pagination justify-content-center">
		                    <li class="page-item disabled "><a class="page-link" href="#"
		                        tabindex="-1"> <</a></li>
		                    <li class="page-item"><a class="page-link" href="#">1</a></li>
		                    <li class="page-item"><a class="page-link" href="#">2</a></li>
		                    <li class="page-item"><a class="page-link" href="#">3</a></li>
		                    <li class="page-item"><a class="page-link" href="#">4</a></li>
		                    <li class="page-item"><a class="page-link" href="#">5</a></li>
		                    <li class="page-item"><a class="page-link" href="#">></a></li>
		                </ul>
		          </nav>
                    <div class="detail_info">
                        <h3>Q&A</h3>
                        <div class="row">
                            <div class="col-lg-12">
                                <table class="table table-condensed" id="qna_table" 
                                style="margin: 0 auto; border-collapse:collapse;">
                                    <thead class="col-lg-12">
                                        <tr class="row">
                                            <th scope="col" class="col-lg-1" id="qna_th">번호</th>
                                            <th scope="col" class="col-lg-2" id="qna_th">문의유형</th>
                                            <th scope="col" class="col-lg-2" id="qna_th">답변상태</th>
                                            <th scope="col" class="col-lg-3" id="qna_th">질문 제목</th>
                                            <th scope="col" class="col-lg-2" id="qna_th">작성자</th>
                                            <th scope="col" class="col-lg-2" id="qna_th">작성일</th>
                                        </tr>
                                    </thead>
                                    
                                    <tbody class="col-lg-12">
                                    <c:forEach items="${clsqnalist}" var="cq" varStatus="i">
                                        <tr data-toggle="collapse" 
                                        data-target="#demo1-${i.count}" class="accordion-toggle row">
                                            <td class="col-lg-1" scope="row" id="qna_th">${i.count}</td>
                                            <td class="col-lg-2">${cq.type}</td>
                                            <c:set var="yn" value="${cq.anser}"/>
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
                                            <td class="col-lg-3">${cq.titl}</td>
                                            <td class="col-lg-2">${cq.mentee.nick}</td>
                                            <td class="col-lg-2">${cq.rgdt}</td>
                                        </tr>
                                        <tr>
                                        	<td colspan="6" class="hiddenRow">
                                        		<div class="accordian-body collapse" id="demo1-${i.count}">
                                        		<div class="adddet col-lg-2" style="text-align: center;
                                        		vertical-align: middle;
															display : block;">질문 내용</div>
                                        		<div class="acco" id="cont">${cq.conts}</div><br>
                                        			<c:set var="ans" value="${cq.anser}"/>
		                                            <%
		                                            	String ans = (String)pageContext.getAttribute("ans");
		                                            	if(ans==null){
		                                           	%>
		                                           		<div class="adddet col-lg-2" style="text-align: center;
		                                           			vertical-align: middle;
															display : block;">질문 답변</div>
															
														<c:choose>	
															<c:when test="${sessionScope.loginUser eq null}">
																<div class="acco" id="ans${i.index}">답변이 등록되지 않았습니다.</div>
															</c:when>
		                                           			<c:when test="${sessionScope.loginUser.no eq detailclass.mentee.no}">
		                                           				<form class="ansinss" action="detail?no=${detailclass.no}" method="post">
			                                           				<label onClick="ansbtn(${i.index})" class="allbtn"
			                                           				id="allbtn${i.index}">답변을 작성하시려면 클릭해주세요!</label>
					                                           		<textarea class="clsanser" id="cls${i.index}" rows="5" name="clsanser"
					                                           		style ="width : 500px; display: none;"></textarea>
					                                           		<div class="butmana" style="margin-left:10px;">
						                                           		<button class="btn btn-default" 
						                                           		onClick="answerins(${sessionScope.loginUser.no},cls${i.index},${cq.no})"
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
		                                           		<div class="acco" id="ans${i.index}">${cq.anser}</div>
		                                           	<%  
		                                           	}
		                                            %>
                                        		</div>
                                        	</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                                
		                        <div class="center"><button data-toggle="modal" data-target="#squarespaceModal" class="btn btn-primary center-block"
								style="width: 120px; height: 40px; float : right; background-color: #606066; color: #ffffff;">클래스 문의</button></div>
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
										<div class="modal fade" id="squarespaceModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
										  <div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h4 class="modal-title" id="clsname">클래스 명: ${detailclass.titl}</h4>
													<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
												</div>
												<div class="modal-body">
													
										            <!-- content goes here -->
													<form action="detail?no=${detailclass.no}" style="width: 400px" method="post">
													  <div class="form-group">
										                <label for="exampleInputEmail1">문의 유형</label>
										                		<input type="radio" name="type" class="type" value="환불" id="opt1" checked="checked"/>
															    <label for="opt1">환불</label>
															    <input type="radio" name="type" class="type" value="위치" id="opt2"/>
															    <label for="opt2">위치</label>
															    <input type="radio" name="type" class="type" value="강의" id="opt3"/>
															    <label for="opt2">강의</label>
															    <input type="radio" name="type" class="type" value="기타" id="opt4"/>
															    <label for="opt2">기타</label>
										              </div>
										              <div class="form-group">
										                <label for="exampleInputEmail1">Q&A 제목</label>
										                <input type="text" class="form-control" name="titl" id="titl" placeholder="제목을 입력해주세요">
										              </div>
										              <div class="form-group">
										                <label for="exampleInputconts1">Q&A 내용</label>
										                <div>
										                <textarea name="qnaconts" id="qnaconts" rows="5" class="customWidth" style="resize: none; width:100%;" 
										                placeholder="내용을 입력해주세요"></textarea></div>
										              </div>
										              <button type="button" class="btn btn-default" 
															onClick="addqna(${sessionScope.loginUser.no});">등록하기</button>
													  <button type="button" class="btn btn-default" data-dismiss="modal"  role="button">취소</button>
										            </form>
										
												</div>
											</div>
										  </div>
										</div>
									</c:otherwise>
								</c:choose>
                            </div>
                            <!-- <div class="col-lg-12"> -->
                        </div>
                        <!-- <div class="row"> -->



                    </div>
                    <!-- <div class="detail_info"> -->
					<!--페이지 넘버-->
		            <nav aria-label="Page navigation example" id="product-pn" 
		            style="margin : auto; margin-top: -40px;">
		                <ul class="pagination justify-content-center">
		                    <li class="page-item disabled "><a class="page-link" href="#"
		                        tabindex="-1"> <</a></li>
		                    <li class="page-item"><a class="page-link" href="#">1</a></li>
		                    <li class="page-item"><a class="page-link" href="#">2</a></li>
		                    <li class="page-item"><a class="page-link" href="#">3</a></li>
		                    <li class="page-item"><a class="page-link" href="#">4</a></li>
		                    <li class="page-item"><a class="page-link" href="#">5</a></li>
		                    <li class="page-item"><a class="page-link" href="#">></a></li>
		                </ul>
		            </nav>
                </div>
                <!-- <div class="row"> -->
            </div>
            <!-- <div class="container col-lg-12"> -->
            </div>
		</div>
			</div>
        </div>
        <!-- <div class="col-lg-12 col-md-12 mx-auto" id="detail"> -->
    <!-- <div class="container"> -->
    <!-- </div> -->
    <!-- <div class="row"> -->
        <footer>
            <div class="col px-0">
                <jsp:include page="../footer.jsp"></jsp:include>
            </div>
        </footer>

</body>
<script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script>
$('.accordian-body').on('show.bs.collapse', function () {
    $(this).closest("table")
        .find(".collapse.in")
        .not(this)
})
</script>
	<script src="/vendor/jquery/jquery.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="/js/jquery.raty.min.js"></script>
    <script src="/js/clean-blog.js"></script>
    
<script>
function addqna(no) {
    var type = $('input:radio:checked.type').val();
    var titl = $('input:text#titl').val();
    var conts = $('textarea#qnaconts').val();
    var cno = ${detailclass.no};
    
    console.log(titl);
    console.log(conts);
    
    if(titl == "" || conts == ""  ) {
        swal({
            title: "필수 입력항목을 입력안하셨습니다.",
            button : "확인",
          })
    } else {
        $.ajax({
            type:"POST",
            data : {
	            "type" : type,
	            "titl" : titl,
	            "conts" : conts,
	            "cno" : cno,
	            "meno" : no
	        },
	        url : "qnainsert",
	        success : function() {
	            swal({
	                title : "Q&A 질문이 등록되었습니다",
	                text : "축하드립니다.",
	                icon : "success",
	                button : "확인",
	              })
	            location.href="detail?no="+${detailclass.no};
	        },error : function(error,status){
	            console.log(error);
	            console.log(status);
	        }
        });
    }
}

function answerins(no,clsno,qno) {
    var cno = ${detailclass.mentee.no};
    
    console.log(cno);
    console.log(clsno.value);
    console.log(qno);
    
	if(clsno.value == ""){
	    swal({
            text : "내용이 비어있으면 답변이 등록이 안됩니다.",
            button : "확인",
          })
	} else {
	    $.ajax({
	        type : "POST" ,
	        data : {
	            "anser" : clsno.value ,
	            "no" : qno
	        },
	        url : "ansupdate.do",
	        success : function() {
	            swal({
	                text : "해당후기에 해당하는 답변이 등록되었습니다",
	                icon : "success",
	                button : "확인",
	              })
	            location.href="detail?no="+${detailclass.no};
	        },error : function(error,status){
	            swal({
	                text : "해당 Q&A는 삭제되었거나 존재하지 않는 글입니다.",
	                button : "확인",
	              })
	        }
	    });
	}
}
function deleterepnull(){
        swal({
            text : "로그인 후 이용가능합니다..",
            button : "확인",
          })
}
function repins(no) {
    var cno = ${detailclass.no};
    var conts = $('textarea#conts').val();
    var star = $('#star1-score').val();
    var phot = $('input:file#phot').val();

    if(conts == ""){
        swal({
            text : "내용이 비어있으면 후기가 등록이 안됩니다.",
            button : "확인",
          })
    }else if("${sessionScope.loginUser}" == ""){
        swal({
            text : "로그인 후 이용가능합니다..",
            button : "확인",
          })
    } else {
	    $.ajax({
	        type : "POST",
	        data : {
	            "meno" : no ,
	            "cno" : cno , 
	            "conts" : conts , 
	            "star" : star ,
	            "phot" : phot 
	        },
	        url : "repinsert",
	        success : function() {
	            swal({
	                text : "클래스 후기가 등록되었습니다",
	                icon : "success",
	                button : "확인",
	              })
	            /* location.href="detail?no="+${detailclass.no}; */
	            location.reload();
	        },error : function(error,status){
	            swal({
	                text : "이미 후기를 등록을 하셨습니다.",
	                button : "확인",
	              })
	        }
	    });
    }
}

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

function ansbtn(indexno){  /* QnA 나타나는 답변 버튼*/
    if($("#cls"+indexno).css("display") == "none"){
		$("#cls"+indexno).show();
		$("#allbtn"+indexno).hide();
	}else{
		$("#cls"+indexno).hide();
		$("#allbtn"+indexno).show();
	}
}

function answercansle(indexno) {
    $("#cls"+indexno).val("");
    $("#cls"+indexno).hide();
    $("#ans"+indexno).show();
    $("#allbtn"+indexno).show();
}

function updano(teno) {  /* 댓글 수정 취소 버튼 */
    $("#repup"+teno).val("");
    $("#updabtn"+teno).hide();
	$("#repup"+teno).hide();
	$("#rcont"+teno).show();
	$("#edbtn"+teno).show();
	$("#delebtn"+teno).show();
}

function delerep(no , rno , repmeno){ /* 댓글 삭제 버튼 */
    console.log(no);
    console.log(rno);
    console.log(repmeno);
    
    if(no != repmeno) {
        swal({
            text : "후기 작성자가 아니시면 삭제가 안됩니다.",
            button : "확인" ,
        })
    } else {
	        $.ajax({
	        type : "POST" ,
	        data : {
	            "no" : rno
	        },
	        url : "clsrepdele.do" ,
	        success : function() {
	            swal({
	                text : "댓글 삭제가 완료되었습니다.",
	                icon : "success",
	                button : "확인",
	              })
	            location.href="detail?no="+${detailclass.no};
		        },error : function(error,status){
		            swal({
		                text : "이미 삭제되었거나 존재하지 않는 댓글입니다.",
		                button : "확인",
		              })
		        }
	    });
    }
}

function updarep(no , rno , repmeno , teno) { /* 댓글 회원 인식해서 수정 버튼 */
    console.log(no);
    console.log(rno);
    console.log(repmeno);
    console.log(teno);
    
    var disstat = 0; /* 댓글이 hide 된 여부 알려주는 변수 */
    
     if(no != repmeno) {
        swal({
            text : "후기 작성자가 아니시면 수정이 안됩니다.",
            button : "확인" ,
        })
    } else if( no = repmeno) {
        if($("#repup"+teno).css("display") == "none"){
        	$("#updabtn"+teno).show();
        	$("#repup"+teno).show();
			$("#rcont"+teno).hide();
			$("#edbtn"+teno).hide();
			$("#delebtn"+teno).hide();
			/* $("#updateModal_"+rno).hide(); */
		
		disstat = 1;
    }
    } else {
		
		swal({
            text : "이미 삭제되었거나 존재하지 않는 댓글입니다.",
            button : "확인",
          })
	}
}

function updabtn(rno , teno) { /* 회원 인식해서 댓글 수정해주는 버튼 */
    var updateconts = $("#repup"+teno).val();
    
    console.log(rno);
    console.log(updateconts);
    
    if(updateconts == "") {
        swal({
            text : "내용이 비어있습니다.",
            button : "확인",
          })
    } else {
	        $.ajax({
	        type : "POST" ,
	        data : {
	            "no" : rno ,
	            "conts" : updateconts
	        },
	        url : "clsrepchange.do" ,
	        success : function() {
	            $("#updabtn"+teno).hide();
	            $("#repup${i.index}").hide();
	    		$("#rcont${i.index}").show();
	    		$("#edbtn"+teno).show();
				$("#delebtn"+teno).show();
	            swal({
	                text : "댓글 수정이 완료되었습니다.",
	                icon : "success",
	                button : "확인",
	              })
	            location.href="detail?no="+${detailclass.no};
		        },error : function(error,status){
		            swal({
		                text : "이미 삭제되었거나 존재하지 않는 댓글입니다.",
		                button : "확인",
		              })
		        }
	    });
    }
}
</script>
<script type="text/javascript">
 var stmnLEFT = 0; // 오른쪽 여백 
 var stmnGAP1 = 0; // 위쪽 여백 
 var stmnGAP2 = 50; // 스크롤시 브라우저 위쪽과 떨어지는 거리 
 var stmnBASE = 0; // 스크롤 시작위치 
 var stmnActivateSpeed = 35; //스크롤을 인식하는 딜레이 (숫자가 클수록 느리게 인식)
 var stmnScrollSpeed = 20; //스크롤 속도 (클수록 느림)
 var stmnTimer; 
 var stmnsub = 300; // stmtEndPoint 맞춰줄 때 쓴다.
 
 function RefreshStaticMenu() { 
  var stmnStartPoint, stmnEndPoint; 
  stmnStartPoint = parseInt(document.getElementById('STATICMENU').style.top, 10); 
  stmnEndPoint = Math.max(document.documentElement.scrollTop, document.body.scrollTop) + stmnGAP2 - stmnsub; 
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
    <!-- Custom scripts for this template -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=74d4f74bdd85b5f1c1d2492eaf6b2a88&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 7 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new daum.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new daum.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('${detailclass.basAddr}', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === daum.maps.services.Status.OK) {

        var coords = new daum.maps.LatLng(result[0].y, result[0].x);
        
        var Circle = new daum.maps.Circle({
            center : new daum.maps.LatLng(result[0].y, result[0].x),  // 원의 중심좌표 
            radius: 1000, // 미터 단위의 원의 반지름
            strokeWeight: 5, // 선의 두께 
            strokeColor: '#75B8FA', // 선의 색깔
            strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명
            strokeStyle: 'dashed', // 선의 스타일 
            fillColor: '#CFE7FF', // 채우기 색깔
            fillOpacity: 0.7  // 채우기 불투명도
        });
       	Circle.setMap(map); 
       
        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new daum.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new daum.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">클래스 받을 지역</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>
    <script>
    
        var testtTop;
        var setId = "#testt";
        $(document).ready(function() {
            $("#headerNav").load("headerNav.html")

            testtTop = $("#detail").offset().top;
            console.log(testtTop);
            console.log("toggle2");
            $(setId).css("position", "absolute");
            $(setId).css("top", (testtTop) + "px");
            
            $('#star1').raty({
                path : "/upload/img/raty/",
                start : 1,
                starOff : 'star-off-big.png',
                starOn : 'star-on-big.png',
                width : 200
            }); 
        });

        function scroll_follow(id) {
            $(window).scroll(function() //스크롤이 움직일때마다 이벤트 발생
            {
                var position = $(window).scrollTop(); // 현재 스크롤바의 위치값을 반환합니다.
                if (position > 985) {
                    $(id).css("position", "fixed-top");
                    $(id).css("top", position + "px");
                    $(id).css("width", "1110px");

                } else {
                    $(id).css("top", (testtTop) + "px");
                    $(id).css("position", "absolute");
                    $(id).css("width", "1110px");
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
</html>
