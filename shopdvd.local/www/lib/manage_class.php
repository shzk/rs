<?php

require_once "config_class.php";
require_once "format_class.php";
require_once "product_class.php";

class Manage
{
    private $config;
    private $format;

    public function __construct()
    {
        session_start();
        $this->config = new Config();
        $this->format = new Format();
        $this->product = new Product();
        $this->data = $this->format->xss($_REQUEST);
    }

    public function addCart()
    {
        $id = $this->data["id"];
        if (!$this->product->existsID($id)) return false;
        if (@$_SESSION["cart"]) $_SESSION["cart"] .= ",$id";
        else $_SESSION["cart"] = $id;
    }
}