$(document).ready( function() {

    $('.instructionsQuestion').hide();
    $('#instructions1').show();

    function toggle($index) {
        $('.instructionsQuestion').each(function() {
            if ($(this).index() == $index) {
                $(this).show();
            } else {
                $(this).hide();
            }
        });
    }

    $('.listQuestion').click(function() {
        toggle($(this).index());
    });

});