$(document).ready( function() {
    $("#topBarUsername").val("Username");
    $("#topBarUsername").focus(function() {
        if ($(this).val() == "Username") $(this).val("");
    }).blur(function() {
        if ($(this).val() == "") $(this).val("Username");
    });
    $("#topBarFake").val("Password");
    $("#topBarPassword").hide();
    $("#topBarFake").focus(function() {
        $(this).hide();
        $("#topBarPassword").show();
        $("#topBarPassword").focus();
    });
    $("#topBarPassword").blur(function() {
        if ($(this).val() == "") {
            $(this).hide();
            $("#topBarFake").show();
        }
    });
    $("#populateBracket").click(function() {
        $("#dialog-autofill").dialog("open");
    });
});