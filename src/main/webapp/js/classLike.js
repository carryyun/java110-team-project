
$(document).ready(function () {
    var fadeTime = 100;
    $('.btncancel').click(function () {
        removeItem(this);

        $.ajax({ 
            type : "GET", 
            url : "removeLike",
            data : {"no": this.value},
            success : function(data){
                if(data != 0){
                    /*alert("success!");*/
                }else{
                    alert("fail!");
                }
            },
            error : function(request, status, error) {
                alert("에러가 발생했습니다. 관리자에게 문의하시기 바랍니다");
            }
        });

    });


    /* Remove item from cart */
    function removeItem(removeButton) {
        /* Remove row from DOM and recalc cart total */
        var productRow = $(removeButton).parent().parent();
        productRow.slideUp(fadeTime, function () {
            productRow.remove();
        });
    }

});

