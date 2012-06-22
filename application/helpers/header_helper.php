<?php

    if (! defined('BASEPATH')) exit('No direct script access allowed');

    if (!function_exists('getDefaultData')) {

        function getDefaultData() {

            $data['title'] = "BYOBracket - Create your own tournament bracket!";
            $data['description'] = "A college basketball NCAA March Madness tournament bracket creation tool. Create and share your own predictions of who will be in the tournament and how they will be seeded.";

            $data['css'] = array(
                'jqueryUI' => 'ui-lightness/jquery-ui-1.8.17.custom.css',
                'application' => 'application.css',
                'header' => 'header.css',
                'footer' => 'footer.css'
            );

            $data['js'] = array(
                'jquery' => 'jquery-1.7.1.min.js',
                'jqueryUI' => 'jquery-ui-1.8.17.custom.min.js',
                'header' => 'header.js',
                'jqueryKey' => 'jquery.jkey-1.2.js'
            );

            return $data;
        }

    }
?>