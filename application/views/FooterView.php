
<?php if ($includeDialogs) { ?>

<div id="dialog-message" class="ui-dialog" title="Select A Team">
    Begin typing to select a team:
    <div class="ui-widget">
        <input id="teams" />
        <div id="suggestion0" class="suggestedTeam"></div>
        <div id="suggestion1" class="suggestedTeam"></div>
        <div id="suggestion2" class="suggestedTeam"></div>
        <div id="suggestion3" class="suggestedTeam"></div>
    </div>
</div>
<div id="dialog-autofill" class="ui-dialog" title="Autofill Your Bracket">
    Clicking OK will automatically populate all 68 tournament slots with suggested teams. Warning! This will overwrite all current existing teams you may have selected and cannot be undone!
</div>
<div id="dialog-share" class="ui-dialog" title="Share Your Bracket">
    <div id="dialog-share-message">Copy and paste the link below to share this bracket with others!</div>
    <div id="sharingLink">
        <input id="sharingLinkInputField" type="text" readonly="readonly"/>
        <div id="twitterShare"></div>
        <div id="fb-root"></div>
        <script>(function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
        <div id="fbLike" class="fb-like" data-href="http://byobracket.com" data-send="false" data-layout="button_count" data-width="150" data-show-faces="true"></div>
        <div id="gPlusOne">
            <g:plusone size="medium" annotation="inline" width="150" href="http://byobracket.com"></g:plusone>
            <script type="text/javascript">
                (function() {
                    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
                    po.src = 'https://apis.google.com/js/plusone.js';
                    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
                })();
            </script>
        </div>
    </div>
</div>
<div id="dialog-validate" class="ui-dialog" title="Validating Your Bracket...">
    Error validating your bracket...try again.
</div>
<div id="reset-dialog" class="ui-dialog" title="WARNING: Reset your bracket!">
    Clicking "OK" will clear the bracket of all teams. This operation cannot be undone. Are you sure you wish to continue?
</div>
<?php } ?>
<div id="footer">
    Email with feedback or questions to support@byobracket.com and/or follow on twitter: @BYOBracket<br/>
    BYOBracket is intended for entertainment purposes only, for bracketology aficionados and hobbyists alike.<br/>
    &copy;2012 Caziq, Inc. All rights reserved.
</div>

</body>
</html>