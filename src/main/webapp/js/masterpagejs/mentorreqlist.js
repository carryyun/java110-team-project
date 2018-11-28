
$(document).ready(function() {
    var activeSystemClass = $('.list-group-item.active');

    //something is entered in search form
    $('#system-search').keyup( function() {
        var that = this;
        // affect all table rows on in systems table
        var tableBody = $('.table-list-search tbody');
        var tableRowsClass = $('.table-list-search tbody tr');
        $('.search-sf').remove();
        tableRowsClass.each( function(i, val) {

            //Lower text for case insensitive
            var rowText = $(val).text().toLowerCase();
            var inputText = $(that).val().toLowerCase();
            if(inputText != '')
            {
                $('.search-query-sf').remove();
                tableBody.prepend('<tr class="search-query-sf"><td colspan="6"><strong>Searching for: "'
                        + $(that).val()
                        + '"</strong></td></tr>');
            }
            else
            {
                $('.search-query-sf').remove();
            }

            if( rowText.indexOf( inputText ) == -1 )
            {
                //hide rows
                tableRowsClass.eq(i).hide();

            }
            else
            {
                $('.search-sf').remove();
                tableRowsClass.eq(i).show();
            }
        });
        //all tr elements are hidden
        if(tableRowsClass.children(':visible').length == 0)
        {
            tableBody.append('<tr class="search-sf"><td class="text-muted" colspan="6">No entries found.</td></tr>');
        }
    });
});


var stopHref = function(event) {
    event.stopPropagation();
}

var fadeTime = 200;
function stat(no,name){
    removeItem(no)
    $.ajax({
        data : {
            meno : no,
            stat : name
        },
        url : "mtstat.do",
        success : location.href="#"
    });
}
function removeItem(no) {
    /* Remove row from DOM and recalc cart total */
    var getRow = document.getElementById("rmv"+no);
    getRow = $(getRow);
    getRow.slideUp(fadeTime, function () {
        getRow.remove();
    });
}

function checkItem(){
    var arr = new Array();
    var check = $('input:checkbox:checked.men-ck').map(function(){
        return this.value; }).get().join(",");
    arr=check.split(',');
    for(i in arr){
        stat(arr[i],'N');
    }

}