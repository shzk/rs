<?php

require_once "modules_class.php";

class SectionContent extends Modules
{

    public $title;

    protected function getContent()
    {
        $section_info = $this->section->get($this->data["id"]);

        $this->title = $section_info["title"];
        $this->meta_desc = "List films from ".$section_info["title"]." category";
        $this->meta_key = mb_strtolower($section_info["title"]);

        $this->setLinkSort();
        @$sort = $this->data["sort"];
        @$up = $this->data["up"];
        $this->template->set("table_products_title", $section_info["title"]);
        $this->template->set("products", $this->product->getAllOnSectionId($section_info["id"], $sort, $up));

        return "index";
    }
}