
$(document).ready(function () {
    
    

    /* Set rates + misc */
    var shippingRate = 0;
    var fadeTime = 200;


    /* Assign actions */
    $('.product-quantity input').change(function () {
        updateQuantity(this);
    });
    

    $('.product-removal button').click(function () {
        removeItem(this);
        
        $.ajax({ 
            type : "GET", 
            url : "removeDate",
            data : {"no": this.value},
            success : function(data){
                if(data != 0){
                   alert("success!");
                }else{
                   alert("fail!");
                }
            },
        error : function(request, status, error) {
            alert("에러가 발생했습니다. 관리자에게 문의하시기 바랍니다");
        }
     });
        
    });


    /* Recalculate cart */
    function recalculateCart() {
        var subtotal = 0;

        /* Sum up row totals */
        $('.product').each(function () {
            subtotal += parseInt($(this).children('.product-line-price').text());
        });

        /* Calculate totals */

        var total = subtotal

        /* Update totals display */
        $('.totals-value').fadeOut(fadeTime, function () {
            $('#cart-total').html(total);
            if (total == 0) {
                $('.checkout').fadeOut(fadeTime);
            } else {
                $('.checkout').fadeIn(fadeTime);
            }
            $('.totals-value').fadeIn(fadeTime);
        });
    }


    /* Remove item from cart */
    function removeItem(removeButton) {
        /* Remove row from DOM and recalc cart total */
        var productRow = $(removeButton).parent().parent();
        productRow.slideUp(fadeTime, function () {
            productRow.remove();
            recalculateCart();
        });
    }

});

