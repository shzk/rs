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

    public function getAllSort($sort, $up, $count)
    {
        if (!$this->checkSortUp($sort, $up)) return $this->getAllData($count);
        $l = $this->getL($count, 0);
        $desc = "";
        if (!$up) $desc = "DESC";
        $query = "SELECT * FROM 
          (SELECT * FROM `".$this->table_name."` ORDER BY `date` DESC $l) a
          ORDER BY `$sort` $desc";
        return $this->transform($this->db->select($query));
    }

    public function getAllOnSectionId($section_id, $sort, $up)
    {
        if (!$this->checkSortUp($sort, $up)) return $this->transform($this->getAllOnField("section_id", $section_id));
        return $this->transform($this->getAllOnField("section_id", $section_id, $sort, $up));
    }

    private function checkSortUp($sort, $up)
    {
        return ((($sort === "title") || ($sort === "price")) && (($up === '1') || ($up === '0')));
    }

    protected function transformElement($product)
    {
        $product["img"] = $this->config->dir_img_products.$product["img"];
        $product["link"] = $this->url->product($product["id"]);
        $product["link_cart"] = $this->url->addCart($product["id"]);
        return $product;
    }
}