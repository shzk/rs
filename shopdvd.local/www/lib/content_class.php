<?php

require_once "modules_class.php";

class Content extends Modules
{
    protected $title = "Shop";
    protected $meta_desc = "My megashop";
    protected $meta_key = "Keywords here";



    protected function getContent()
    {
        $this->template->set("table_products_title", "Новинки");
        $this->template->set("products", $this->product->getAllData($this->config->count_on_page));

        return "index";
    }
}