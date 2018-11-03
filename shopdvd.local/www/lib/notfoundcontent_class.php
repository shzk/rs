<?php

require_once "modules_class.php";

class NotFoundContent extends Modules
{
    protected $title = "404";
    protected $meta_desc = "Not found";
    protected $meta_key = "404, not found";



    protected function getContent()
    {
        header("HTTP/1.0 404 Not Found");
        return "notfound";
    }
}