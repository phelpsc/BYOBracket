$(document).ready( function() {

    var seeds = [
        1,1,1,1,
        2,2,2,2,
        3,3,3,3,
        4,4,4,4,
        5,5,5,5,
        6,6,6,6,
        7,7,7,7,
        8,8,8,8,
        9,9,9,9,
        10,10,10,10,
        11,11,11,11,
        12,12,12,12,12,12,
        13,13,13,13,
        14,14,14,14,
        15,15,15,15,
        16,16,16,16,16,16
    ];

    var teamlist;
    var itemClicked;
    var itemClickedID;
    var seedClicked;
    var selectingTeam = false;

    //Store TeamIDs in bracket array
    var bracket = [
        0,0,0,0,
        0,0,0,0,
        0,0,0,0,
        0,0,0,0,
        0,0,0,0,
        0,0,0,0,
        0,0,0,0,
        0,0,0,0,
        0,0,0,0,
        0,0,0,0,
        0,0,0,0,
        0,0,0,0,
        0,0,0,0,0,0,
        0,0,0,0,
        0,0,0,0,
        0,0,0,0,0,0
    ];

    function convertBracketToArray() {
        //Loop through all bracket divs and store team ID associated therein.
    };

    //$("div, img, p").disableSelection();

    function updateTeamItemHTML($teamID, $targetID) {
        var teamName = "";
        var teamImage = "default.gif";
        var teamMascot = "";
        for (var i=0; i<teamlist.length; i++) {
            if (teamlist[i]['id'] == $teamID) {
                teamName = teamlist[i]['name'];
                teamMascot = teamlist[i]['mascot'];
                teamImage = teamlist[i]['image'];
                break;
            }
        }
        $("#seedItemTeamIcon"+$targetID).attr("src", "images/"+teamImage);          //seedItemTeamIcon (update src)
        $("#seedItemTeamName"+$targetID).html("#"+seeds[$targetID]+" "+teamName);    //seedItemTeamName (update html)
        $('#seedItemTeamMascot'+$targetID).html(teamMascot);                        //seedItemTeamMascot (update html)
    };

    $(".seedItemTeam").droppable({
        accept: ".seedItemTeam",
        hoverClass: "ui-state-active",
        drop: function(event, ui) {
            var originID  = ui.draggable.parent().index();
            var targetID = $(this).parent().index();
            var originTeamID = bracket.split(",")[targetID];
            var targetTeamID = bracket.split(",")[originID];

            //update html
            updateTeamItemHTML(originTeamID, originID);
            updateTeamItemHTML(targetTeamID, targetID);

            //post ajax to update bracket
            $.ajax({
                type: "POST",
                url: "team/drag/"+originID+"/"+targetID,
                success: function(json) {
                    bracket = json['bracket'];
                }
            });
        }
    });

    $(".seedItemDropArea").droppable({
        accept: ".seedItemTeam",
        hoverClass: "ui-state-active",
        drop: function(event, ui) {

            var originID  = ui.draggable.parent().index();
            var targetID = $(this).parent().index();
            var teamID = bracket.split(",")[originID];

            //add hidden to current dragged item
            $("#seedItemTeam"+originID).addClass('hidden');

            //remove hidden from origin seedItemDropArea
            $("#seedItemDropArea"+originID).removeClass('hidden');

            //add hidden to target seedItemDropArea
            $("#seedItemDropArea"+targetID).addClass('hidden');

            //remove hidden from droptarget draggable and update html
            updateTeamItemHTML(teamID, targetID);
            $("#seedItemTeam"+targetID).removeClass('hidden');

            //post ajax to update bracket
            $.ajax({
                type: "POST",
                url: "team/drag/"+originID+"/"+targetID,
                success: function(json) {
                    bracket = json['bracket'];
                }
            });
        }
    });

    $(".seedItem").click(function(e) {

        $("#dialog-message").dialog("option", "title", "Select your seed");
        $("#dialog-message").dialog("open");
        selectingTeam = true;
        $("#teams").val("");
        for (var j=0; j<4; j++) {
            $("#suggestion"+j).html("");
            $("#suggestion"+j).attr("title", "");
        }

        var itemIndex = ($(this).index() > 49) ? $(this).index() - 1 : $(this).index();
        itemClicked = "#seedItem" + itemIndex;
        itemClickedID = itemIndex;
        seedClicked = seeds[itemIndex];

    });

    $("#dialog-message").dialog({
        autoOpen: false,
        draggable: false,
        modal: true,
        resizable: false,
        width: 440,
        buttons: {
            Cancel: function() {
                $(this).dialog("close");
            }
        }
    });

    $("#dialog-share").dialog({
        autoOpen: false,
        draggable: false,
        modal: true,
        resizable: false,
        width: 440,
        buttons: {
            Cancel: function() {
                $(this).dialog("close");
            }
        }
    });

    $("#reset-dialog").dialog({
        autoOpen: false,
        draggable: false,
        modal: true,
        resizable: false,
        width: 440,
        buttons: {
            Continue: function(bool) {
                //Ajax post to team/reset
                $.ajax({
                    type: "POST",
                    url: "team/reset",
                    success: function() {
                        //Loop through fields to "reset" list
                        for (var i=0; i<68; i++) {
                            $("#seedItemDropArea"+i).removeClass("hidden");    //seedItemDropArea (remove .hidden)
                            $("#seedItemTeam"+i).addClass("hidden");     //seedItemTeam (add .hidden)
                        }
                    }
                });
                $(this).dialog("close");
            },
            Cancel: function() {
                $(this).dialog("close");
            }
        }
    });

    $("#dialog-autofill").dialog({
        autoOpen: false,
        draggable: false,
        modal: true,
        resizable: false,
        width: 440,
        buttons: {
            Ok: function() {
                //Do the auto-fill!
                $.ajax({
                    type: "POST",
                    url: "team/autoFill",
                    success: function(json) {

                        for (var i=0; i<json['bracket'].length; i++) {
                            var teamName = "";
                            var teamImage = "default.gif";
                            for (var j=0; j<teamlist.length; j++) {
                                if (teamlist[j]['id'] == json['bracket'][i]) {
                                    teamName = teamlist[j]['name'];
                                    teamImage = teamlist[j]['image'];
                                    teamMascot = teamlist[j]['mascot'];
                                    break;
                                }
                            }

                            $("#seedItemDropArea"+i).addClass("hidden");                    //seedItemDropArea (add .hidden)
                            $("#seedItemTeam"+i).removeClass("hidden");                     //seedItemTeam (remove .hidden)
                            $("#seedItemTeamIcon"+i).attr("src", "images/"+teamImage);      //seedItemTeamIcon (update src)
                            $("#seedItemTeamName"+i).html("#"+seeds[i]+" "+teamName);    //seedItemTeamName (update html)
                            $('#seedItemTeamMascot'+i).html(teamMascot);                    //seedItemTeamMascot (update html)
                        }

                        bracket = json['bracket'].join(",");
                        $("#dialog-autofill").dialog("close");
                    }
                });
            },
            Cancel: function() {
                $(this).dialog("close");
            }
        }
    });



    $("#validateBracket").click(function() {
        isBracketValid();
    });

    $("#dialog-validate").dialog({
        autoOpen: false,
        draggable: false,
        modal: true,
        resizable: false,
        width: 440,
        buttons: {
            Done: function() {
                $(this).dialog("close");
            }
        }
    });

    //validate bracket
    function isBracketValid() {
        //Loop through bracket array

        var b = bracket.split(",");
        var valid = true;
        var conferenceChamps = [];
        for (var i = 0; i < b.length; i++) {
            if (b[i] == 0) {
                valid = false;
                break;
            }

            var conference = "Independent";
            for (j = 0; j < teamlist.length; j++) {
                if (b[i] == teamlist[j]['id']) {
                    conference = teamlist[j]['conference'];
                }
            }

            if ($.inArray(conference, conferenceChamps) == -1 && conference != "Independent") {
                conferenceChamps.push(conference);
            }
        }

        if (conferenceChamps.length < 31) {
            valid = false;
        }
        if (valid) {
            //.dialog( "option" , optionName , [value] )
            $("#dialog-validate").dialog("option", "title", "Validation successful!");
            $("#dialog-validate").html("You have successfully populated your bracket and it is eligible for ranking if you are a registered user.");
            $("#dialog-validate").dialog("open");
        } else {
            $("#dialog-validate").dialog("option", "title", "Validation failed.");
            $("#dialog-validate").html("Your bracket is incomplete. You are either missing teams or not all conferences are represented.");
            $("#dialog-validate").dialog("open");
        }
    }


    $(".seedItemTeam").hover(
        function() {
            $(this).find('.seedItemCloseButton').removeClass('hidden');
        },
        function() {
            $(this).find('.seedItemCloseButton').addClass('hidden');
        }
    );

    $(".seedItemCloseButton").click(function(event) {
        event.stopPropagation();
        var teamIndexToDelete = $(this).parent().parent().index();
        //Hide the team div
        $('#seedItemTeam'+teamIndexToDelete).addClass('hidden');
        $('#seedItemDropArea'+teamIndexToDelete).removeClass('hidden');
        //Post a call to set the session/database bracket
        $.ajax({
            type: "POST",
            url: "team/remove/"+teamIndexToDelete
        });
        var updatedBracket = bracket.split(",");
        updatedBracket[teamIndexToDelete] = 0;
        bracket = updatedBracket.join(",");
    });

    $("#shareButton").click(function() {
        $("#dialog-share").dialog("open");

        $.ajax({
            type: "POST",
            url: "share",
            success: function(json) {
                $("#sharingLinkInputField").val(json['link']).focus().select();

                var twitterShareURL = "https://twitter.com/share?text=" + encodeURIComponent("This is my bracket prediction: " + json['link']);

                //Reset the HTML in the TwitterShare div tag and run the create twitter button script on it.
                $("#twitterShare").html(
                    "<a id='twitterShareButton' href='" + twitterShareURL + "' class='twitter-share-button'>Tweet</a>"
                );
                twttr.widgets.load();
            }
        });

    });

    $("#sharingLinkInputField").click(function() {
        $("#sharingLinkInputField").select();
    });

    $("#resetBracket").click(function() {
        $("#reset-dialog").dialog("open");
    });

    $.ajax({
        type: "POST",
        url: "teamlist",
        success: function(json) {
            teamlist = json;

            /**
             * After Team List loads, next thing we'll do is check to see if there is a bracket in our session!
             */
            $.ajax({
                type: "POST",
                url: "team/get",
                success: function(jsonBracket) {
                    bracket = jsonBracket['bracket'];
                }
            });

        }
    });

    $("#teams").keyup(function() {

        var str = $("#teams").val();
        var result = [];

        //What 4 teams match our string closest?
        for (var i=0; i<teamlist.length; i++) {
            if (teamlist[i]['name'].substr(0, str.length).toLowerCase() === str.toLowerCase()) {
                result.push(teamlist[i]);
                if (result.length > 3) break;
            }
        }

        if (result.length < 4) {
            for (var k=0; k<teamlist.length; k++) {
                if (teamlist[k]['alt_name'].substr(0, str.length).toLowerCase() === str.toLowerCase()) {
                    result.push(teamlist[k]);
                    if (result.length > 3) break;
                }
            }
        }

        for (var j=0; j<4; j++) {
            if (result[j]) {
                $("#suggestion"+j).html(result[j]['name']);
                $("#suggestion"+j).attr("title", result[j]['id']);
            } else {
                $("#suggestion"+j).html("");
                $("#suggestion"+j).attr("title", "");
            }
        }

    });

    $(".seedItemTeam").draggable({
        //handle: "img, p",
        cursor:'move',
        opacity:0.35,
        revert:true,
        zIndex:1000,
        start: function(event, ui) {
            ui.helper.dropTarget = $(this);
        }
    });

    $(".suggestedTeam").click(function() {

        var teamIndex = $(this).index() - 1;
        var team = $("#suggestion"+teamIndex).html();
        var teamID = $("#suggestion"+teamIndex).attr("title");

        if (!team) return;

        selectingTeam = false;

        $.ajax({
            type: "POST",
            url: "team/"+teamID+"/"+itemClickedID,
            success: function(json) {

                var teamName = "";
                var teamImage = "default.gif";
                var teamMascot = "";
                for (var i=0; i<teamlist.length; i++) {
                    if (teamlist[i]['id'] == teamID) {
                        teamName = teamlist[i]['name'];
                        teamMascot = teamlist[i]['mascot'];
                        teamImage = teamlist[i]['image'];
                        break;
                    }
                }

                $("#seedItemDropArea"+itemClickedID).addClass("hidden");                    //seedItemDropArea (add .hidden)
                $("#seedItemTeam"+itemClickedID).removeClass("hidden");                     //seedItemTeam (remove .hidden)
                $("#seedItemTeamIcon"+itemClickedID).attr("src", "images/"+teamImage);      //seedItemTeamIcon (update src)
                $("#seedItemTeamName"+itemClickedID).html("#"+seedClicked+" "+teamName);    //seedItemTeamName (update html)
                $('#seedItemTeamMascot'+itemClickedID).html(teamMascot);                    //seedItemTeamMascot (update html)

                //bracket[itemClickedID] = teamID;
                bracket = json['bracket'];


                $("div, img, p").disableSelection();
                $("#dialog-message").dialog("close");
            }
        });
    });

    $(document).jkey("enter", function($e) {
        //Check to see if team selection dialog is open
        if (selectingTeam) {
            $("#suggestion0").click();
        }
    });
});