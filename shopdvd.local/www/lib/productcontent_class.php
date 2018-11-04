<?php

require_once "modules_class.php";

class ProductContent extends Modules
{

    public $title;

    protected function getContent()
    {
        $product_info = $this->product->getter($this->data["id"], $this->section->getTableName());
        if (!$product_info) return $this->notFound();
        $this->title = $product_info["title"];
        $this->meta_desc = "Movie ".$product_info["title"];
        $this->meta_key = mb_strtolower($product_info["title"]);
        $this->template->set("link_section", $this->url->section($product_info["section_id"]));
        $this->template->set("product", $product_info);
        $this->template->set("products", $this->product->getOthers($product_info, $this->config->count_others));

        return "product";
    }
}