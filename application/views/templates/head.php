<?php
    header("Cache-Control: no-cache, no-store, must-revalidate");
    header("Pragma: no-cache");
?>
<html>
<head>

    <!-- Include all meta-tags -->
    <title><?php echo $title;?></title>
    <meta name="description" content="<?php echo $description; ?>" />.
    <!-- Include all CSS -->
    <?php
    foreach ($css as $cssItem) {
        echo "<link rel='stylesheet' type='text/css' href='" . base_url() . "css/" . $cssItem . "' />\n\t";
    }
    ?>

    <!-- Include all javascript -->
    <?php
        foreach ($js as $jsItem) {
            if (strpos($jsItem, "http:") === FALSE) {
                echo "<script type='text/javascript' src='" . base_url() . "js/" . $jsItem . "'></script>\n\t";
            } else {
                echo "<script type='text/javascript' src='" . $jsItem . "'></script>\n\t";
            }

        }
    ?>

    <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-28951348-1']);
        _gaq.push(['_trackPageview']);

        (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

    </script>
</head>