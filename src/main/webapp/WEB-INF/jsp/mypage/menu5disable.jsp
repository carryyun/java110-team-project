<%@ page import="bitcamp.java110.cms.domain.Classes"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
  
   
<div class="col-lg-12" >
	
	
        <a href="#" data-nav-section="about"><img class="copypop" src="/img/mentor1.png" width="800px" style="margin-top:30px"></a>
        <img src="/img/mentor2.png" width="800px" style="margin-bottom:10px">
        <img src="/img/mentor3.png" width="800px">
     
     

</div> 

<script>
  // copypop -> pop 으로 연결
     
     $("#btn-cancle").click(function(){
         $(".copypop").removeClass("hide");
         return $(".popup").removeClass("show");
       });
     
     
     (function() {
         $(".copypop").click(function(){
                 
                 return $(".popup").addClass("show");
           
         });

         $(".icon i").click(function(){
           $(".copypop").removeClass("hide");
           return $(".popup").removeClass("show");
         });

       }).call(this);
         
</script>
  




