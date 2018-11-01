<?php

require_once "start.php";
require_once $dir_lib."url_class.php";

$url = new URL();
$view = $url->getView();
$class = $view."Content";

if (file_exists($dir_lib.$class."_class.php")) {
    require_once $dir_lib.$class."_class.php";
    new $class();
} else {
    echo "404";
}