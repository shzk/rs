<?php

require_once "global_class.php";

class Product extends GlobalClass
{
    public function __construct()
    {
        parent::__construct("products");
    }

    public function getAllData($count)
    {
        return $this->transform($this->getAll("date", false, $count));
    }

    protected function transformElement($product)
    {
        $product["img"] = $this->config->dir_img_products.$product["img"];
        $product["link"] = $this->url->product($product["id"]);
        $product["link_cart"] = $this->url->addCart($product["id"]);
        return $product;
    }
}