<?php

require_once "global_class.php";

class Product extends GlobalClass
{
    public function __construct()
    {
        parent::__construct("products");
    }
}