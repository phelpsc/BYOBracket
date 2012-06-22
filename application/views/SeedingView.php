<div id="lastModified">
    This bracket was last modified on: <?php echo $lastModifiedDate; ?>
</div>
<div id="seedingView">
    <?php

        //echo $session['bracket'];
        $bracketArray = explode(",", $session['bracket']);

        for ($i = 0; $i < 68; $i++) {

            //Determine Region
            $regionArray = array(
                "midwest", "west", "south", "east",
                "midwest", "west", "south", "east",
                "midwest", "west", "south", "east",
                "midwest", "west", "south", "east",
                "midwest", "west", "south", "east",
                "midwest", "west", "south", "east",
                "midwest", "west", "south", "east",
                "midwest", "west", "south", "east",
                "midwest", "west", "south", "east",
                "midwest", "west", "south", "east",
                "midwest", "west", "south", "east",
                "midwest", "west", "south", "east",
                "midwest", "west", "south", "east", "midwest", "west",
                "midwest", "west", "south", "east",
                "midwest", "west", "south", "east",
                "midwest", "west", "south", "east", "midwest", "south"
            );

            //Determine Seed
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
                12,12,12,12,12,12,
                13,13,13,13,
                14,14,14,14,
                15,15,15,15,
                16,16,16,16,16,16
            );

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

            if (!function_exists('getTeamItemMascot')) {
                function getTeamItemMascot($index, $array, $teams) {
                    if ($array[$index] != "0") {
                        $teamID = (int)$array[$index] - 1;
                        return $teams[$teamID]['mascot'];
                    }
                    return "...";
                }
            }

            ?>

            <div id='seedItem<?php echo $i; ?>' class='seedItem<?php if ($i===67) {echo ' lastTeam';} ?>'>
                <div id='seedItemDropArea<?php echo $i; ?>' class='seedItemDropArea seed<?php echo $seedArray[$i] . " " . $regionArray[$i]; if (doesTeamItemExist($i, $bracketArray)) {echo ' hidden';} ?> '>
                    <p><?php echo $regionArray[$i]; ?></p>
                    <h1><?php echo $seedArray[$i]; ?></h1>
                </div>
                <div id='seedItemTeam<?php echo $i;?>' class='seedItemTeam<?php if (!doesTeamItemExist($i, $bracketArray)) {echo ' hidden';}?>'>
                    <img id='seedItemTeamIcon<?php echo $i;?>' class='seedItemTeamIcon' src="<?php echo base_url(); ?>images/<?php echo getTeamItemImage($i, $bracketArray, $teamInfo); ?>" />
                    <p id='seedItemTeamName<?php echo $i;?>' class='seedItemTeamName'><?php echo getTeamItemName($i, $bracketArray, $teamInfo, $seedArray); ?></p>
                    <p id='seedItemTeamMascot<?php echo $i;?>' class='seedItemTeamMascot'><?php echo getTeamItemMascot($i, $bracketArray, $teamInfo); ?></p>
                    <div id='seedItemCloseButton<?php echo $i;?>' class="seedItemCloseButton hidden"><a><span class="ui-icon ui-icon-closethick"></span></a></div>
                </div>
            </div>

            <?php

            if ($i === 49) {
                echo "<div style='clear:left;'></div>";
            }

        }
    ?>
</div>