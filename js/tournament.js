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
        12,12,12,12,
        13,13,13,13,13,13,
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

    $(".teamCloseButton").hide();
    $(".clickableTeam").hover(
        function() {
            var teamID = $(this).attr("id").replace("team", "");
            //Only show close button if team exists on div
            if ($("#tournamentTeamName"+teamID).html() != "") {
                $("#teamCloseButton"+teamID).show();
            }
        },
        function() {
            var teamID = $(this).attr("id").replace("team", "");
            $("#teamCloseButton"+teamID).hide();
        }
    );

    $(".teamCloseButton").click(function(event) {
        event.stopPropagation();
        var teamIndexToDelete = $(this).attr("id").replace("teamCloseButton", "");
        //Hide the team div
        $("#tournamentTeamIcon"+teamIndexToDelete).attr("src", "images/default.gif");      //seedItemTeamIcon (update src)
        $("#tournamentTeamName"+teamIndexToDelete).html("");
        //Post a call to set the session/database bracket
        $.ajax({
            type: "POST",
            url: "team/remove/"+teamIndexToDelete
        });

        var updatedBracket = bracket.split(",");
        updatedBracket[teamIndexToDelete] = 0;
        bracket = updatedBracket.join(",");
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
                                    break;
                                }
                            }

                            $("#tournamentTeamIcon"+i).attr("src", "images/"+teamImage);      //seedItemTeamIcon (update src)
                            $("#tournamentTeamName"+i).html(teamName);
                            $('#tournamentTeamSeed'+i).html(seeds[i]);
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

    $(".clickableTeam").draggable({
        //handle: "img, p",
        cursor:'move',
        opacity:0.35,
        revert:true,
        zIndex:1000,
        start: function(event, ui) {
            ui.helper.dropTarget = $(this);
        }
    });

    function updateTeamItemHTML($teamID, $targetID) {
        var teamName = "";
        var teamImage = "default.gif";
        for (var i=0; i<teamlist.length; i++) {
            if (teamlist[i]['id'] == $teamID) {
                teamName = teamlist[i]['name'];
                teamImage = teamlist[i]['image'];
                break;
            }
        }
        $("#tournamentTeamIcon"+$targetID).attr("src", "images/"+teamImage);
        $("#tournamentTeamName"+$targetID).html(teamName);
    };

    $(".clickableTeam").droppable({
        accept: ".clickableTeam",
        hoverClass: "droppableHoverClass",
        drop: function(event, ui) {
            var originID  = ui.draggable.attr("id").replace("team", "");
            var targetID = $(this).attr("id").replace("team", "");
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
                            $("#tournamentTeamIcon"+i).attr("src", "images/default.gif");      //seedItemTeamIcon (update src)
                            $("#tournamentTeamName"+i).html("");
                            $('#tournamentTeamSeed'+i).html(seeds[i]);
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

    $(".clickableTeam").click(function(e) {
        var itemID = $(this).attr("id");
        var itemIndex = itemID.replace("team", "");
        itemClicked = "#" + itemID;
        seedClicked = seeds[itemIndex];
        itemClickedID = itemIndex;

        $("#dialog-message").dialog("option", "title", "Select your seed");
        $("#dialog-message").dialog("open");

        selectingTeam = true;

        $("#teams").val("");
        for (var j=0; j<4; j++) {
            $("#suggestion"+j).html("");
            $("#suggestion"+j).attr("title", "");
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

    $(".suggestedTeam").click(function() {

        var teamIndex = $(this).index() - 1;
        var team = $("#suggestion"+teamIndex).html();
        var teamID = $("#suggestion"+teamIndex).attr("title");  //TODO make this better

        if (!team) return;
        selectingTeam = false;

        $.ajax({
            type: "POST",
            url: "team/"+teamID+"/"+itemClickedID,
            success: function(json) {

                var teamName = "";
                var teamImage = "default.gif";
                for (var i=0; i<teamlist.length; i++) {
                    if (teamlist[i]['id'] == teamID) {
                        teamName = teamlist[i]['name'];
                        teamImage = teamlist[i]['image'];
                        break;
                    }
                }

                $("#tournamentTeamIcon"+itemClickedID).attr("src", "images/"+teamImage);      //seedItemTeamIcon (update src)
                $("#tournamentTeamName"+itemClickedID).html(teamName);
                $('#tournamentTeamSeed'+itemClickedID).html(seedClicked);

                //bracket[itemClickedID] = teamID;
                bracket = json['bracket'];

                $("#dialog-message").dialog("close");
            }
        });
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

    $("#resetBracket").click(function() {
        $("#reset-dialog").dialog("open");
    });

    $(document).jkey("enter", function($e) {
        //Check to see if team selection dialog is open
        if (selectingTeam) {
            $("#suggestion0").click();
        }
    });
});
