$(document).ready( function() {

    var validUsername = false;
    var validEmail = false;
    var validPassword = false;

    var usernameSideTips = ["usernameChoose","usernameWarnLength","usernameWarnUnique","usernameOk"];
    var emailSideTips = ["emailEnter", "emailWarnInvalid", "emailWarnUnique", "emailOk"];
    var passwordSideTips = ["passwordChoose", "passwordWarnLength", "passwordOk"];

    function toggleSideTip($array, $value) {
        for (var i=0; i<$array.length; i++) {
            if ($array[i] == $value) {
                $("."+$array[i]).show();
            } else {
                $("."+$array[i]).hide();
            }
        }
    }

    function checkForm() {
        if (validUsername && validEmail && validPassword) {
            $("#submitButton").attr("disabled", false);
            $("#submitButton").fadeTo(.5, 1);
        } else {
            $("#submitButton").attr("disabled", true);
            $("#submitButton").fadeTo(.01,.3);
        }
    }

    function isValidEmailAddress(emailAddress) {
        var pattern = new RegExp(/^(("[\w-+\s]+")|([\w-+]+(?:\.[\w-+]+)*)|("[\w-+\s]+")([\w-+]+(?:\.[\w-+]+)*))(@((?:[\w-+]+\.)*\w[\w-+]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][\d]\.|1[\d]{2}\.|[\d]{1,2}\.))((25[0-5]|2[0-4][\d]|1[\d]{2}|[\d]{1,2})\.){2}(25[0-5]|2[0-4][\d]|1[\d]{2}|[\d]{1,2})\]?$)/i);
        return pattern.test(emailAddress);
    };

    $("#submitButton").attr("disabled", true);
    $("#submitButton").fadeTo(.01,.3);


    /***
     *
     *  USERNAME
     *
     */
    $("#usernameInput").val("Username");
    $("#usernameInput").focus(function() {
        if ($(this).val() == "Username") {
            $(this).val("");
        }
    });
    $("#usernameInput").blur(function() {
        if ($(this).val() == "") {
            $(this).val("Username");
            toggleSideTip(usernameSideTips, "usernameChoose");
        }
    });
    $("#usernameInput").keypress(function() {
        validUsername = false;
        checkForm();
        if ($(this).val().length > 2) {
            toggleSideTip(usernameSideTips, "NONE");
        } else {
            toggleSideTip(usernameSideTips, "usernameWarnLength");
        }
        //Else display warning username must be longer!
    });
    $("#usernameInput").change(function() {
        $.ajax({
            type: "POST",
            url: "register/username/"+$("#usernameInput").val(),
            success: function(json) {
                if (json['success'] == true) {
                    toggleSideTip(usernameSideTips, "usernameOk");
                    validUsername = true;
                    checkForm();
                } else {
                    toggleSideTip(usernameSideTips, "usernameWarnUnique");
                }
            }
        });
    })
    toggleSideTip(usernameSideTips, "usernameChoose");


    /***
     *
     *  EMAIL VALIDATION
     *
     */
    $("#emailInput").val("Email");
    $("#emailInput").focus(function() {
        if ($(this).val() == "Email") {
            $(this).val("");
            toggleSideTip(emailSideTips, "emailEnter");
        }
    });
    $("#emailInput").blur(function() {
        if ($(this).val() == "") {
            $(this).val("Email");
            toggleSideTip(emailSideTips, "NONE");
        }
    });
    $("#emailInput").keypress(function() {
        validEmail = false;
        checkForm();
        if (isValidEmailAddress($(this).val())) {
            toggleSideTip(emailSideTips, "NONE");
        } else {
            toggleSideTip(emailSideTips, "emailWarnInvalid");
        }
    });
    $("#emailInput").change(function() {
        if (isValidEmailAddress($("#emailInput").val())) {
            var encodedURI = encodeURIComponent($("#emailInput").val());
            $.ajax({
                type: "POST",
                url: "register/email/"+encodedURI,
                success: function(json) {
                    if (json['success'] == true) {
                        toggleSideTip(emailSideTips, "emailOk");
                        validEmail = true;
                        checkForm();
                    } else {
                        toggleSideTip(emailSideTips, "emailWarnUnique");
                    }
                }
            });
        }
    });
    toggleSideTip(emailSideTips, "NONE");

    /***
     *
     *  PASSWORD VALIDATION
     *
     */
    $("#passwordFake").val("Password");
    $("#passwordFake").focus(function() {
        $(this).addClass("hidden");
        $("#passwordInput").removeClass("hidden");
        $("#passwordInput").focus();
        toggleSideTip(passwordSideTips, "passwordChoose");
    });
    $("#passwordInput").blur(function() {
        if ($(this).val() == "") {
            $(this).addClass("hidden");
            $("#passwordFake").removeClass("hidden");
            toggleSideTip(passwordSideTips, "NONE");
        }
    });

    $("#passwordInput").keypress(function() {
        if ($(this).val().length > 4) {
            toggleSideTip(passwordSideTips, "passwordOk");
            validPassword = true;
            checkForm();
        } else {
            toggleSideTip(passwordSideTips, "passwordWarnLength");
            validPassword = false;
            checkForm();
        }
    });
    toggleSideTip(passwordSideTips, "NONE");

});