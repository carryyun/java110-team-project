 // 회원정보수정 load 
        $(document).ready(function() {
            $("#menu1").load("menu1.html");
        });

        // 수강목록 load
        $(document).ready(function() {
            $("#menu2").load("menu2.html");
        });

        // 결제내역 load / hide /show
        $(function(){
        $("#menu3-1").load("menu3-1.html");
        });
        
        $(function(){
            $("#classbkt").click(function(){
                $("#menu3-2").hide("menu3-2.html");
                $("#menu3-1").show("menu3-1.html");
            });
        });
        
        $(function(){
            $("#productbkt").click(function(){
                $("#menu3-2").load("menu3-2.html");
                $("#menu3-1").hide("menu3-1.html");
                $("#menu3-2").show("menu3-2.html");
            });
        });
        
     


        // 내활동보기 load 
      
         $(document).ready(function() {
            $("#menu4").load("menu4.html");
        });

        
        
         $(function(){
        $("#menu4-1").load("menu4-1.html");
        });
        
        $(function(){
            $("#btn-menu4-1").click(function(){
                $("#menu4-2,#menu4-2,#menu4-3,#menu4-4,#menu4-5").hide("menu4-2.html,menu4-2.html,menu4-3.html,menu4-4.html,menu4-5.html");
                $("#menu4-1").show("menu4-1.html");
            });
        });
        
        $(function(){
            $("#btn-menu4-2").click(function(){
                $("#menu4-2").load("menu4-2.html");
                 $("#menu4-1,#menu4-1,#menu4-3,#menu4-4,#menu4-5").hide("menu4-2.html,menu4-2.html,menu4-3.html,menu4-4.html,menu4-5.html");
                $("#menu4-2").show("menu4-2.html");
            });
        });
        
             $(function(){
            $("#btn-menu4-3").click(function(){
                $("#menu4-3").load("menu4-3.html");
                 $("#menu4-2,#menu4-2,#menu4-1,#menu4-4,#menu4-5").hide("menu4-2.html,menu4-2.html,menu4-1.html,menu4-4.html,menu4-5.html");
                $("#menu4-3").show("menu4-3.html");
            });
        });
        
             $(function(){
            $("#btn-menu4-4").click(function(){
                $("#menu4-4").load("menu4-4.html");
                $("#menu4-2,#menu4-2,#menu4-1,#menu4-3,#menu4-5").hide("menu4-2.html,menu4-2.html,menu4-1.html,menu4-3.html,menu4-5.html");
                $("#menu4-4").show("menu4-4.html");
            });
        });
        
             $(function(){
            $("#btn-menu4-5").click(function(){
                $("#menu4-5").load("menu4-5.html");
                $("#menu4-2,#menu4-2,#menu4-1,#menu4-4,#menu4-3").hide("menu4-2.html,menu4-2.html,menu4-1.html,menu4-4.html,menu4-3.html");
                $("#menu4-5").show("menu4-5.html");
            });
        });