$(function(){
    var deleteBox = '<span class="deleteBox"><p>수료처리 하시겠습니까?</p><span class="cancel">취소</span><span class="confirm">확인</span></span>';
    $('.delete').each(function(){
        $(this).append(deleteBox);
    }).click(function(){
        if(!$(this).hasClass('selected')){
            $(this).addClass('selected');
            var owner = $(this);
            
            $(this).find('.cancel').unbind('click').bind('click',function(){
                owner.removeClass('selected');
                return false;
            })
            
            $(this).find('.confirm').unbind('click').bind('click',function(){
                $(this).parent().addClass('loading');
                var parent = $(this).parent();
                
                //ajax to delete
                
                setTimeout(function(){ //On success
                    parent.addClass('deleted');
                    setTimeout(function(){
                        owner.fadeOut(50);
                        
                        //remove item deleted
                        
                        setTimeout(function(){
                            owner.find('.deleted').removeClass('loading').removeClass('deleted');
                            owner.removeClass('selected');
                            owner.show();
                        },1000) 
                    },1000)
                },1000)
                
                return false;
            })
        }       
        return false;
    });
  
  
  setTimeout(function(){
    $('.delete').addClass('selected');
    setTimeout(function(){
       $('.deleteBox').addClass('loading'); 
        setTimeout(function(){
        $('.deleteBox').addClass('deleted');
        setTimeout(function(){
          $('.delete').fadeOut(600,function(){
            
             $('.deleted').removeClass('loading').removeClass('deleted'); 
                    $('.delete').removeClass('selected');
            setTimeout(function(){
              $('.delete').show();
            },500)
                    
            
          });
 
          
          
        },500)
        
      },1000)
    },1000)
  },500)
  
  
})