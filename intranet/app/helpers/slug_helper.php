<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

function generate_uri($title)
{
    $characters = array(
        "Á" => "A", "Ç" => "c", "É" => "e", "Í" => "i", "Ñ" => "n", "Ó" => "o", "Ú" => "u",
        "á" => "a", "ç" => "c", "é" => "e", "í" => "i", "ñ" => "n", "ó" => "o", "ú" => "u",
        "à" => "a", "è" => "e", "ì" => "i", "ò" => "o", "ù" => "u"
    );

    $title = strtr($title, $characters);
    $title = strtolower(trim($title));
    $title = preg_replace("/[^a-z0-9-]/", "-", $title);
    $title = preg_replace("/-+/", "-", $title);
    if(substr($title, strlen($title) - 1, strlen($title)) === "-") {
        $title = substr($title, 0, strlen($title) - 1);
    }
    return $title;
}
