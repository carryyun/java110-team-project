 // 회원정보수정 load 
        $(document).ready(function() {
            $("#menu1").load("/app/mypage/menu1");
        });

        // 수강목록 load
        $(document).ready(function() {
            $("#menu2").load("/app/mypage/menu2");
        });

        // 결제내역 load / hide /show
        $(function(){
        $("#menu3-1").load("/app/mypage/menu3-1");
        });
        
        $(function(){
            $("#classbkt").click(function(){
                $("#menu3-2").hide("/app/mypage/menu3-2");
                $("#menu3-1").show("/app/mypage/menu3-1");
            });
        });
        
        $(function(){
            $("#productbkt").click(function(){
                $("#menu3-2").load("/app/mypage/menu3-2");
                $("#menu3-1").hide("/app/mypage/menu3-1");
                $("#menu3-2").show("/app/mypage/menu3-2");
            });
        });
        
     


        // 내활동보기 load 
      
         $(function(){
        $("#menu4-1").load("/app/mypage/menu4-1");
        });
        
        $(function(){
            $("#btn-menu4-1").click(function(){
                $("#menu4-2,#menu4-2,#menu4-3,#menu4-4,#menu4-5").hide("/app/mypage/menu4-2,/app/mypage/menu4-2,/app/mypage/menu4-3,/app/mypage/menu4-4,/app/mypage/menu4-5");
                $("#menu4-1").show("/app/mypage/menu4-1");
            });
        });
        
        $(function(){
            $("#btn-menu4-2").click(function(){
                $("#menu4-2").load("/app/mypage/menu4-2");
                 $("#menu4-1,#menu4-1,#menu4-3,#menu4-4,#menu4-5").hide("/app/mypage/menu4-2,/app/mypage/menu4-2,/app/mypage/menu4-3,/app/mypage/menu4-4,/app/mypage/menu4-5");
                $("#menu4-2").show("/app/mypage/menu4-2");
            });
        });
        
             $(function(){
            $("#btn-menu4-3").click(function(){
                $("#menu4-3").load("/app/mypage/menu4-3");
                 $("#menu4-2,#menu4-2,#menu4-1,#menu4-4,#menu4-5").hide("/app/mypage/menu4-2,/app/mypage/menu4-2,/app/mypage/menu4-1,/app/mypage/menu4-4,/app/mypage/menu4-5");
                $("#menu4-3").show("/app/mypage/menu4-3");
            });
        });
        
             $(function(){
            $("#btn-menu4-4").click(function(){
                $("#menu4-4").load("/app/mypage/menu4-4");
                $("#menu4-2,#menu4-2,#menu4-1,#menu4-3,#menu4-5").hide("/app/mypage/menu4-2,/app/mypage/menu4-2,/app/mypage/menu4-1,/app/mypage/menu4-3,/app/mypage/menu4-5");
                $("#menu4-4").show("/app/mypage/menu4-4");
            });
        });
        
             $(function(){
            $("#btn-menu4-5").click(function(){
                $("#menu4-5").load("/app/mypage/menu4-5");
                $("#menu4-2,#menu4-2,#menu4-1,#menu4-4,#menu4-3").hide("/app/mypage/menu4-2,/app/mypage/menu4-2,/app/mypage/menu4-1,/app/mypage/menu4-4,/app/mypage/menu4-3");
                $("#menu4-5").show("/app/mypage/menu4-5");
            });
        });
             
             