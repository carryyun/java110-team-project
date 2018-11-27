<%@ page import="bitcamp.java110.cms.domain.ClassOrder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="col-lg-12">
	<div class="panel panel-default">
		<div class="panel-body">

			<table class="table table-condensed"
				style="border-collapse: collapse;">
				<thead>
					<tr id="th-pay">
						<th width="5%">No.</th>
						<th width="40%">클래스</th>
						<th width="20%">카테고리</th>
						<th width="20%">수업기간</th>
						<th width="15%">멘티보기</th>
					</tr>
				</thead>
				<tbody>
					<%--  <c:forEach items="${colist}" var="c" varStatus="i"> --%>
					<tr id="tb-pay">
						<td>${i.count}1</td>
						<td><a href='#'>2${c.classes.titl}</a></td>
						<td>${c.mentornick}3</td>
						<td>${c.timetable.date}4</td>
						<td> <button class="btn-primary" style="width:70px;">멘티!</button></td>
					</tr>
					<%--         </c:forEach>      --%>
 
				</tbody>
			</table>
		</div>
		
		<div class="panel-body">
		<table class="table table-condensed"
                style="border-collapse: collapse;">
                <thead>
                    <tr id="th-pay">
                        <th width="5%">No.</th>
                        <th width="40%">멘티</th>
                        <th width="20%">연락처</th>
                        <th width="20%">수료여부</th>
                        <th width="15%">신고</th>
                    </tr>
                </thead>
                <tbody>
                    <%--  <c:forEach items="${colist}" var="c" varStatus="i"> --%>
                    <tr id="tb-pay">
                        <td>${i.count}1</td>
                        <td><a href='#'>멘티예티</a></td>
                        <td>010-6645-1010</td>
                        <td>
                        <button class="btn-primary" style="width:70px;">수료</button><br>
                        
                        
                        
                        </td>
                        <td><img src="/upload/img/rpt-before.png" style=" width:50%; height:auto;"></td>
                    </tr>
                    <%--         </c:forEach>      --%>
                </tbody>
                
                <tbody>
                    <%--  <c:forEach items="${colist}" var="c" varStatus="i"> --%>
                    <tr id="tb-pay">
                        <td>${i.count}2</td>
                        <td><a href='#'>멘티예티2</a></td>
                        <td>010-6645-1012</td>
                        <td>
                        <button class="btn-danger" style="width:70px;">미수료</button>
                        
                        
                        
                        </td>
                        <td><img src="/upload/img/rpt-after.png" style=" width:50%; height:auto;"></td>
                    </tr>
                    <%--         </c:forEach>      --%>
                </tbody>
            </table>
		</div>
		
		
	</div>
</div>



