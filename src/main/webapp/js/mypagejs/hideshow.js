 // 회원정보수정 load 
        $(document).ready(function() {
            $("#menu1").load("/html/mypage/menu1.html");
        });

        // 수강목록 load
        $(document).ready(function() {
            $("#menu2").load("/html/mypage/menu2.html");
        });

        // 결제내역 load / hide /show
        $(function(){
        $("#menu3-1").load("/html/mypage/menu3-1.html");
        });
        
        $(function(){
            $("#classbkt").click(function(){
                $("#menu3-2").hide("/html/mypage/menu3-2.html");
                $("#menu3-1").show("/html/mypage/menu3-1.html");
            });
        });
        
        $(function(){
            $("#productbkt").click(function(){
                $("#menu3-2").load("/html/mypage/menu3-2.html");
                $("#menu3-1").hide("/html/mypage/menu3-1.html");
                $("#menu3-2").show("/html/mypage/menu3-2.html");
            });
        });
        
     


        // 내활동보기 load 
      
         $(function(){
        $("#menu4-1").load("/html/mypage/menu4-1.html");
        });
        
        $(function(){
            $("#btn-menu4-1").click(function(){
                $("#menu4-2,#menu4-2,#menu4-3,#menu4-4,#menu4-5").hide("/html/mypage/menu4-2.html,/html/mypage/menu4-2.html,/html/mypage/menu4-3.html,/html/mypage/menu4-4.html,/html/mypage/menu4-5.html");
                $("#menu4-1").show("/html/mypage/menu4-1.html");
            });
        });
        
        $(function(){
            $("#btn-menu4-2").click(function(){
                $("#menu4-2").load("/html/mypage/menu4-2.html");
                 $("#menu4-1,#menu4-1,#menu4-3,#menu4-4,#menu4-5").hide("/html/mypage/menu4-2.html,/html/mypage/menu4-2.html,/html/mypage/menu4-3.html,/html/mypage/menu4-4.html,/html/mypage/menu4-5.html");
                $("#menu4-2").show("/html/mypage/menu4-2.html");
            });
        });
        
             $(function(){
            $("#btn-menu4-3").click(function(){
                $("#menu4-3").load("/html/mypage/menu4-3.html");
                 $("#menu4-2,#menu4-2,#menu4-1,#menu4-4,#menu4-5").hide("/html/mypage/menu4-2.html,/html/mypage/menu4-2.html,/html/mypage/menu4-1.html,/html/mypage/menu4-4.html,/html/mypage/menu4-5.html");
                $("#menu4-3").show("/html/mypage/menu4-3.html");
            });
        });
        
             $(function(){
            $("#btn-menu4-4").click(function(){
                $("#menu4-4").load("/html/mypage/menu4-4.html");
                $("#menu4-2,#menu4-2,#menu4-1,#menu4-3,#menu4-5").hide("/html/mypage/menu4-2.html,/html/mypage/menu4-2.html,/html/mypage/menu4-1.html,/html/mypage/menu4-3.html,/html/mypage/menu4-5.html");
                $("#menu4-4").show("/html/mypage/menu4-4.html");
            });
        });
        
             $(function(){
            $("#btn-menu4-5").click(function(){
                $("#menu4-5").load("/html/mypage/menu4-5.html");
                $("#menu4-2,#menu4-2,#menu4-1,#menu4-4,#menu4-3").hide("/html/mypage/menu4-2.html,/html/mypage/menu4-2.html,/html/mypage/menu4-1.html,/html/mypage/menu4-4.html,/html/mypage/menu4-3.html");
                $("#menu4-5").show("/html/mypage/menu4-5.html");
            });
        });