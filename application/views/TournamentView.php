<?php

    //echo $session['bracket'];
    $bracketArray = explode(",", $session['bracket']);

    if (!function_exists('doesTeamItemExist')) {
        function doesTeamItemExist($index, $array) {
            if ($array[$index] != "0") return TRUE;
            return FALSE;
        }
    }

    if (!function_exists('getTeamItemImage')) {
        function getTeamItemImage($index, $array, $teams) {
            if ($array[$index] != "0") {
                $teamID = (int)$array[$index] - 1;
                return $teams[$teamID]['image'];
            }
            return "default.gif";
        }
    }

    if (!function_exists('getTeamItemName')) {
        function getTeamItemName($index, $array, $teams, $seedArray) {
            if ($array[$index] != "0") {
                $teamID = (int)$array[$index] - 1;
                return "#" . $seedArray[$index] . " " . $teams[$teamID]['name'];
            }
            return "Team Not Found";
        }
    }

    if (!function_exists('getTeamHTML')) {
        function getTeamHTML($index, $array, $teams) {

            $seedArray = array(
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
            );

            if ($array[$index] != "0") {
                $teamID = (int)$array[$index] - 1;
                $image = base_url() . "images/" . $teams[$teamID]['image'];
                $name = $teams[$teamID]['name'];
            } else {
                $image = base_url() . "images/default.gif";
                $name = "";
            }

            ?>
                <div id="tournamentTeamSeed<?php echo $index; ?>" class="tournamentTeamSeed"><?php echo $seedArray[$index]; ?></div>
                <div class="tournamentTeamIcon"><img id="tournamentTeamIcon<?php echo $index; ?>" src="<?php echo $image; ?>" height="40" width="40" /></div>
                <div id="tournamentTeamName<?php echo $index; ?>" class="tournamentTeamName"><?php echo $name; ?></div>
                <div id="teamCloseButton<?php echo $index;?>" class="teamCloseButton"><a><span class="ui-icon ui-icon-closethick"></span></a></div>
            <?php
        }
    }

    if (!function_exists('getSplitHTML')) {
        function getSplitHTML($index) {
            $seedArray = array(
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
            );
            ?>
                <div class="tournamentTeamSeed"><?php echo $seedArray[$index]; ?></div>
                <div class="tournamentTeamName">PLAY-IN GAME</div>
            <?php
        }
    }

?>
<div id="tournamentContainer">
    <div id="southRegion">
        <div id="team2" class="tournamentTeam clickableTeam"><?php getTeamHTML(2,$bracketArray,$teamInfo); ?></div>
        <div id="teams64and67" class="tournamentTeam clickableTeam"><?php getSplitHTML(66); ?></div>
        <div id="team30" class="tournamentTeam clickableTeam"><?php getTeamHTML(30,$bracketArray,$teamInfo); ?></div>
        <div id="team34" class="tournamentTeam clickableTeam"><?php getTeamHTML(34,$bracketArray,$teamInfo); ?></div>
        <div id="team14" class="tournamentTeam clickableTeam"><?php getTeamHTML(14,$bracketArray,$teamInfo); ?></div>
        <div id="team50" class="tournamentTeam clickableTeam"><?php getTeamHTML(50,$bracketArray,$teamInfo); ?></div>
        <div id="team18" class="tournamentTeam clickableTeam"><?php getTeamHTML(18,$bracketArray,$teamInfo); ?></div>
        <div id="team46" class="tournamentTeam clickableTeam"><?php getTeamHTML(46,$bracketArray,$teamInfo); ?></div>
        <div id="team22" class="tournamentTeam clickableTeam"><?php getTeamHTML(22,$bracketArray,$teamInfo); ?></div>
        <div id="team42" class="tournamentTeam clickableTeam"><?php getTeamHTML(42,$bracketArray,$teamInfo); ?></div>
        <div id="team10" class="tournamentTeam clickableTeam"><?php getTeamHTML(10,$bracketArray,$teamInfo); ?></div>
        <div id="team56" class="tournamentTeam clickableTeam"><?php getTeamHTML(56,$bracketArray,$teamInfo); ?></div>
        <div id="team26" class="tournamentTeam clickableTeam"><?php getTeamHTML(26,$bracketArray,$teamInfo); ?></div>
        <div id="team38" class="tournamentTeam clickableTeam"><?php getTeamHTML(38,$bracketArray,$teamInfo); ?></div>
        <div id="team6" class="tournamentTeam clickableTeam"><?php getTeamHTML(6,$bracketArray,$teamInfo); ?></div>
        <div id="team60" class="tournamentTeam clickableTeam"><?php getTeamHTML(60,$bracketArray,$teamInfo); ?></div>
    </div>
    <div id="eastRegion">
        <div id="team3" class="tournamentTeam clickableTeam"><?php getTeamHTML(3,$bracketArray,$teamInfo); ?></div>
        <div id="team65" class="tournamentTeam clickableTeam"><?php getTeamHTML(65,$bracketArray,$teamInfo); ?></div>
        <div id="team31" class="tournamentTeam clickableTeam"><?php getTeamHTML(31,$bracketArray,$teamInfo); ?></div>
        <div id="team35" class="tournamentTeam clickableTeam"><?php getTeamHTML(35,$bracketArray,$teamInfo); ?></div>
        <div id="team15" class="tournamentTeam clickableTeam"><?php getTeamHTML(15,$bracketArray,$teamInfo); ?></div>
        <div id="team51" class="tournamentTeam clickableTeam"><?php getTeamHTML(51,$bracketArray,$teamInfo); ?></div>
        <div id="team19" class="tournamentTeam clickableTeam"><?php getTeamHTML(19,$bracketArray,$teamInfo); ?></div>
        <div id="team47" class="tournamentTeam clickableTeam"><?php getTeamHTML(47,$bracketArray,$teamInfo); ?></div>
        <div id="team23" class="tournamentTeam clickableTeam"><?php getTeamHTML(23,$bracketArray,$teamInfo); ?></div>
        <div id="team43" class="tournamentTeam clickableTeam"><?php getTeamHTML(43,$bracketArray,$teamInfo); ?></div>
        <div id="team11" class="tournamentTeam clickableTeam"><?php getTeamHTML(11,$bracketArray,$teamInfo); ?></div>
        <div id="team57" class="tournamentTeam clickableTeam"><?php getTeamHTML(57,$bracketArray,$teamInfo); ?></div>
        <div id="team27" class="tournamentTeam clickableTeam"><?php getTeamHTML(27,$bracketArray,$teamInfo); ?></div>
        <div id="team39" class="tournamentTeam clickableTeam"><?php getTeamHTML(39,$bracketArray,$teamInfo); ?></div>
        <div id="team7" class="tournamentTeam clickableTeam"><?php getTeamHTML(7,$bracketArray,$teamInfo); ?></div>
        <div id="team61" class="tournamentTeam clickableTeam"><?php getTeamHTML(61,$bracketArray,$teamInfo); ?></div>
    </div>
    <div style="clear:both;"></div>
    <div id="westRegion">
        <div id="team1" class="tournamentTeam clickableTeam"><?php getTeamHTML(1,$bracketArray,$teamInfo); ?></div>
        <div id="team63" class="tournamentTeam clickableTeam"><?php getTeamHTML(63,$bracketArray,$teamInfo); ?></div>
        <div id="team29" class="tournamentTeam clickableTeam"><?php getTeamHTML(29,$bracketArray,$teamInfo); ?></div>
        <div id="team33" class="tournamentTeam clickableTeam"><?php getTeamHTML(33,$bracketArray,$teamInfo); ?></div>
        <div id="team13" class="tournamentTeam clickableTeam"><?php getTeamHTML(13,$bracketArray,$teamInfo); ?></div>
        <div id="teams48and52" class="tournamentTeam clickableTeam"><?php getSplitHTML(52); ?></div>
        <div id="team17" class="tournamentTeam clickableTeam"><?php getTeamHTML(17,$bracketArray,$teamInfo); ?></div>
        <div id="team45" class="tournamentTeam clickableTeam"><?php getTeamHTML(45,$bracketArray,$teamInfo); ?></div>
        <div id="team21" class="tournamentTeam clickableTeam"><?php getTeamHTML(21,$bracketArray,$teamInfo); ?></div>
        <div id="team41" class="tournamentTeam clickableTeam"><?php getTeamHTML(41,$bracketArray,$teamInfo); ?></div>
        <div id="team9" class="tournamentTeam clickableTeam"><?php getTeamHTML(9,$bracketArray,$teamInfo); ?></div>
        <div id="team55" class="tournamentTeam clickableTeam"><?php getTeamHTML(55,$bracketArray,$teamInfo); ?></div>
        <div id="team25" class="tournamentTeam clickableTeam"><?php getTeamHTML(25,$bracketArray,$teamInfo); ?></div>
        <div id="team37" class="tournamentTeam clickableTeam"><?php getTeamHTML(37,$bracketArray,$teamInfo); ?></div>
        <div id="team5" class="tournamentTeam clickableTeam"><?php getTeamHTML(5,$bracketArray,$teamInfo); ?></div>
        <div id="team59" class="tournamentTeam clickableTeam"><?php getTeamHTML(59,$bracketArray,$teamInfo); ?></div>
    </div>
    <div id="midwestRegion">
        <div id="team0" class="tournamentTeam clickableTeam"><?php getTeamHTML(0,$bracketArray,$teamInfo); ?></div>
        <div id="teams62and66" class="tournamentTeam clickableTeam"><?php getSplitHTML(62); ?></div>
        <div id="team28" class="tournamentTeam clickableTeam"><?php getTeamHTML(28,$bracketArray,$teamInfo); ?></div>
        <div id="team32" class="tournamentTeam clickableTeam"><?php getTeamHTML(32,$bracketArray,$teamInfo); ?></div>
        <div id="team12" class="tournamentTeam clickableTeam"><?php getTeamHTML(12,$bracketArray,$teamInfo); ?></div>
        <div id="teams49and53" class="tournamentTeam clickableTeam"><?php getSplitHTML(51); ?></div>
        <div id="team16" class="tournamentTeam clickableTeam"><?php getTeamHTML(16,$bracketArray,$teamInfo); ?></div>
        <div id="team44" class="tournamentTeam clickableTeam"><?php getTeamHTML(44,$bracketArray,$teamInfo); ?></div>
        <div id="team20" class="tournamentTeam clickableTeam"><?php getTeamHTML(20,$bracketArray,$teamInfo); ?></div>
        <div id="team40" class="tournamentTeam clickableTeam"><?php getTeamHTML(40,$bracketArray,$teamInfo); ?></div>
        <div id="team8" class="tournamentTeam clickableTeam"><?php getTeamHTML(8,$bracketArray,$teamInfo); ?></div>
        <div id="team54" class="tournamentTeam clickableTeam"><?php getTeamHTML(54,$bracketArray,$teamInfo); ?></div>
        <div id="team24" class="tournamentTeam clickableTeam"><?php getTeamHTML(24,$bracketArray,$teamInfo); ?></div>
        <div id="team36" class="tournamentTeam clickableTeam"><?php getTeamHTML(36,$bracketArray,$teamInfo); ?></div>
        <div id="team4" class="tournamentTeam clickableTeam"><?php getTeamHTML(4,$bracketArray,$teamInfo); ?></div>
        <div id="team58" class="tournamentTeam clickableTeam"><?php getTeamHTML(58,$bracketArray,$teamInfo); ?></div>
    </div>
    <div style="clear:both;"></div>
    <div id="firstRoundGames">
        <div class="firstRoundPair">
            <div class="firstRoundLabel">MIDWEST</div>
            <div id="team48" class="firstRoundTeam clickableTeam"><?php getTeamHTML(48,$bracketArray,$teamInfo); ?></div>
            <div id="team52" class="firstRoundTeam clickableTeam"><?php getTeamHTML(52,$bracketArray,$teamInfo); ?></div>
        </div>
        <div class="firstRoundPair">
            <div class="firstRoundLabel">SOUTH</div>
            <div id="team64" class="firstRoundTeam clickableTeam"><?php getTeamHTML(64,$bracketArray,$teamInfo); ?></div>
            <div id="team67" class="firstRoundTeam clickableTeam"><?php getTeamHTML(67,$bracketArray,$teamInfo); ?></div>
        </div>
        <div class="firstRoundPair">
            <div class="firstRoundLabel">WEST</div>
            <div id="team49" class="firstRoundTeam clickableTeam"><?php getTeamHTML(49,$bracketArray,$teamInfo); ?></div>
            <div id="team53" class="firstRoundTeam clickableTeam"><?php getTeamHTML(53,$bracketArray,$teamInfo); ?></div>
        </div>
        <div class="firstRoundPair">
            <div class="firstRoundLabel">MIDWEST</div>
            <div id="team62" class="firstRoundTeam clickableTeam"><?php getTeamHTML(62,$bracketArray,$teamInfo); ?></div>
            <div id="team66" class="firstRoundTeam clickableTeam"><?php getTeamHTML(66,$bracketArray,$teamInfo); ?></div>
        </div>
    </div>
    <div id="bracketBackgroundTop"><img src="<?php echo base_url();?>images/tournament-bracket-background.png" /></div>
    <div id="bracketBackgroundBottom"><img src="<?php echo base_url();?>images/tournament-bracket-background.png" /></div>
    <div id="southLabel" class="regionLabel">SOUTH</div>
    <div id="eastLabel" class="regionLabel">EAST</div>
    <div id="westLabel" class="regionLabel">WEST</div>
    <div id="midwestLabel" class="regionLabel">MIDWEST</div>
</div>