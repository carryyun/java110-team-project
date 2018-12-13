        // 회원정보수정 load 
        $(document).ready(function() {
            $("#menu1").load("/app/mypage/menu1");
        });

        // 수강목록 load
        $(document).ready(function() {
            $("#menu2").load("/app/mypage/menu2");
        });

        // 결제내역 load / fadeOut /fadeIn
        $(document).ready(function() {
            $("#menu3-1").load("/app/mypage/menu3-1");
        });
        
        $(function(){
            $("#classbkt").click(function(){
                $("#menu3-2").fadeOut(200);
                
                setTimeout(function() {
                    $("#menu3-1").fadeIn(200);
                  }, 200);
                
            });
        });
        
        $(function(){
            $("#productbkt").click(function(){
               
                $("#menu3-1").fadeOut(200);
                setTimeout(function() {
                    $("#menu3-2").load("/app/mypage/menu3-2");
                    $("#menu3-2").fadeIn(200);
                  }, 200);
                
            });
        });
        
     


        // 내활동보기 load 
      
         $(function(){
        $("#menu4-1").load("/app/mypage/menu4-1");
        });
        
        $(function(){
            $("#btn-menu4-1").click(function(){
                $("#menu4-2,#menu4-2,#menu4-3,#menu4-4,#menu4-5").fadeOut(200);
                
                setTimeout(function() {
                    $("#menu4-1").fadeIn(200);
                  }, 200);
                
            });
        });
        
        $(function(){
            $("#btn-menu4-2").click(function(){
                $("#menu4-1,#menu4-1,#menu4-3,#menu4-4,#menu4-5").fadeOut(200);
                
                setTimeout(function() {
                    $("#menu4-2").load("/app/mypage/menu4-2");
                    $("#menu4-2").fadeIn(200);
                  }, 200);
            });
        });
        
             $(function(){
            $("#btn-menu4-3").click(function(){
                $("#menu4-2,#menu4-2,#menu4-1,#menu4-4,#menu4-5").fadeOut(200);
                
                setTimeout(function() {
                    $("#menu4-3").load("/app/mypage/menu4-3");
                    $("#menu4-3").fadeIn("/app/mypage/menu4-3");
                }, 200);
            });
        });
        
             $(function(){
            $("#btn-menu4-4").click(function(){
                $("#menu4-2,#menu4-2,#menu4-1,#menu4-3,#menu4-5").fadeOut(200);
                
                setTimeout(function() {
                    $("#menu4-4").load("/app/mypage/menu4-4");
                    $("#menu4-4").fadeIn(200);
                }, 200);
            });
        });
        
             $(function(){
            $("#btn-menu4-5").click(function(){
                $("#menu4-2,#menu4-2,#menu4-1,#menu4-4,#menu4-3").fadeOut(200);
                
                setTimeout(function() {
                    $("#menu4-5").load("/app/mypage/menu4-5");
                    $("#menu4-5").fadeIn(200);
                }, 200);
            });
        });
             
             
          // 클래스 관리   
             $(document).ready(function() {
                 
                 var mtstat = $('#stat').attr('name');
                 
                 if (mtstat == "") {
                     
                     $("#menu5disable").load("/app/mypage/menu5disable");
                 }

                 else if(mtstat == "N"){
                     $("#menu5disable").load("/app/mypage/menu5disable");
                 }

                 else if(mtstat == "I"){
                   
                     $("#menu5disable2").load("/app/mypage/menu5disable2");
                     
                 }
                 
                 else if(mtstat == "Y"){
                     $("#menu5").load("/app/mypage/menu5");
                     
                 }


                 
                 
             });
            
             
             
          // 상품 관리   
             $(document).ready(function() {
                 $("#menu6").load("/app/mypage/menu6");
             });
             
