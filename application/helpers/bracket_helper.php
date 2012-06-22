<?php

if (! defined('BASEPATH')) exit('No direct script access allowed');

if (!function_exists('getSessionBracket')) {

    function getSessionBracket($sessionBracket) {

        $bracket = "";
        if (!$sessionBracket) {
            for ($i=0; $i<68; $i++) {
                $bracket .= "0";
                if ($i < 67) $bracket .= ",";
            }
        } else {
            $bracket = $sessionBracket;
        }
        return $bracket;

    }
}

if (!function_exists('generateRandomString')) {


    function generateRandomString($length, $charset="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789") {
        $str = '';
        $count = strlen($charset);
        while ($length--) {
            $str .= $charset[mt_rand(0, $count-1)];
        }

        //TODO: check database for uniqueness of string

        return $str;
    }
}
?>