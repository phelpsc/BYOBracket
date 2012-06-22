<div id="topBar">
    <div id="topBarContainer">
        <?php if ($session['loggedIn'] === TRUE) {?>

            <div id="twitterFollow">
                <a href="https://twitter.com/byobracket" class="twitter-follow-button" data-show-count="false">Follow @byobracket</a>
                <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
            </div>
            <?php echo form_open('logout'); ?>
            <input id="topBarLogout" type="submit" name="submit" value="Logout">
            <div id="topBarMessage">
                Welcome, <span class="topBarUsername"><?php echo $session['username']; ?></span>.
            </div>

        <?php } else { ?>

            <div id="twitterFollow">
                <a href="https://twitter.com/byobracket" class="twitter-follow-button" data-show-count="false">Follow @byobracket</a>
                <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
            </div>
            <div id="topBarForm">
                <?php echo form_open(''); ?>
                <input id="topBarUsername" type="input" name="username" />
                <input id="topBarFake" type="input" name="fakepassword" />
                <input id="topBarPassword" type="password" name="password" />
                <input type="submit" name="submit" value="Sign In" />
            </div>

        <?php } ?>
    </div>
</div>
<div id="header">
    <div id="logo">
        <a href="<?php echo base_url();?>"><img src="<?php echo base_url('images/logo.png');?>" /></a>
    </div>
    <div id="googleAd">
        <script type="text/javascript"><!--
        google_ad_client = "ca-pub-7717271551405970";
        /* BYOBracket Header */
        google_ad_slot = "3020212917";
        google_ad_width = 468;
        google_ad_height = 60;
        //-->
        </script>
        <script type="text/javascript"
                src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
        </script>
    </div>
    <div style='clear:both;'></div>
    <div id="navigationMenu">
        <ul>
            <?php
                if ($session['viewmode'] === 'other') {
                    ?><li id="myBracket"><a href="<?php echo base_url();?>">My Bracket</a></li><?php
                }
            ?>
            <?php
                if (strpos(uri_string(), "seeding") === FALSE && strpos(uri_string(), "instructions") === FALSE) {
                    ?>
                        <li id="seedListMode" title="Click to view bracket by seeding list."><a href="<?php echo base_url('seeding/' . $deeplink); ?>">View As Seed List</a></li>
                    <?php
                } else if (strpos(uri_string(), "instructions") === FALSE) {
                    ?>
                        <li id="bracketViewMode" title="Click to view as tournament bracket."><a href="<?php echo base_url('tournament/' . $deeplink); ?>">View As Tournament Bracket</a></li>
                    <?php
                }
            ?>
            <?php
                if (strpos(uri_string(), "instructions") === FALSE) {
                    ?>
                        <li id="shareButton" title="Click to share your bracket with friends (or rivals)!"><a>Share Bracket</a></li>
                    <?php
                }

                if (strpos(uri_string(), "instructions") === FALSE && $session['viewmode'] === "edit") {
                    ?>
                    <li id="populateBracket" title="Click to auto-populate your bracket with suggested teams."><a>Auto-Fill Bracket</a></li>
                    <?php
                }

                if (strpos(uri_string(), "instructions") === FALSE && $session['viewmode'] === "edit") {
                    ?>
                    <li id="validateBracket" title="Click to see if you have created a valid bracket."><a>Validate Bracket</a></li>
                    <?php
                }

            if (strpos(uri_string(), "instructions") === FALSE && $session['viewmode'] === "edit") {
                    ?>
                        <li id="resetBracket" title="Click to reset/clear all teams."><a>Clear Bracket</a></li>
                    <?php
                }
                if (strpos(uri_string(), "instructions") === FALSE) {
                    ?>
                        <li id="instructionsButton" title="Click here to find out what's going on!"><a href="<?php echo base_url('instructions'); ?>">Instructions!</a></li>
                    <?php
                }
                if ($session['loggedIn'] === FALSE) {
                    ?>
                        <li id="registerAccount" title="Click to sign up for a free account."><a href="<?php echo base_url('register');?>">Register</a></li>
                    <?php }
            ?>
        </ul>
    </div>
</div>