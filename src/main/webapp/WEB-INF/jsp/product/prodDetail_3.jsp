<%@page import="bitcamp.java110.cms.domain.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


                    <div id="STATICMENU" style="background-color: #fff">
                        <div class="col-lg-12 px-2">
                        <div class="card-body px-2">
                        <div class="mb-3" id="cfile">
                                        <c:set var="cfl" value="${product.classes.cfile}"/>
                                        <%
                                            String cfile = (String)pageContext.getAttribute("cfl");
                                            if(cfile.endsWith("jpg") || cfile.endsWith("png")){
                                        %>    
                                          <img style="width: 100%; height:130px;" src="${product.classes.cfile}" alt="${product.classes.cfile}"/>
                                          <%      
                                            }else {
                                             int cfileidx = cfile.indexOf("=");
                                             String cfileurl = cfile.substring(cfileidx+1);
                                        %>
                                              <iframe width="100%" height="120px" src="https://www.youtube.com/embed/<%=cfileurl%>" 
                                              frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" 
                                              allowfullscreen></iframe>
                                        <%
                                            }
                                        %> 
                        </div>
                                
                                <h5 class="title mb-3">${product.classes.titl}</h5>
                                <dl class="param param-feature row">
                                    <dd class="col-lg-4 pr-1 text-center"><img class="clsMetoPhot" src="${product.classes.mentee.phot}" alt="${product.classes.mentee.phot}"> </dd>
                                    <dd class="col-lg-8 pl-1"><strong>${product.classes.mentee.nick}</strong> 멘토님</dd>
                                </dl>
                                <dl class="param param-feature">ㅇㅇㅇㅇ원</dl>

                                <dl class="param param-feature">ㅇㅇㅇ멘토</dl>
                                        <dl class="param param-feature">
                                            <dd>ㅇㅇㄴㅇ</dd>
                                        </dl>
                                <dl>
                                    <%-- <c:set var="clsstar" value ="ㅇㅇㅇ"/>
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
                                    %> --%>
                                </dl>
                                        <!-- item-property .// -->
                                    <!-- col.// -->

                                <hr>
                                <!-- row.// -->
                                <!---->
                                <hr>
                                <a href="#" id="prdtSidebtnGo" class="btn btn-lg btn-primary text-uppercase"><i class="fas fa-graduation-cap"></i>수업듣기</a> 
                                <a href="#" id="prdtSidebtnLike" class="btn btn-lg btn-outline-primary text-uppercase"> 
                                    <i class="fas fa-star"></i>찜클래스 </a>
                        </div>
                        <!-- card-body.// -->
                    </div>
                    </div>
                    <!-- 사이드바 끝 -->




