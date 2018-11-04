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
        $product["description"] = str_replace("\n", "<br>", $product["description"]);
        return $product;
    }

    public function getter($id, $section_table) {
        if (!$this->check->id($id)) return false;
        $query = "SELECT `".$this->table_name."`.`id`,
		`".$this->table_name."`.`section_id`,
		`".$this->table_name."`.`img`,
		`".$this->table_name."`.`title`,
		`".$this->table_name."`.`price`,
		`".$this->table_name."`.`year`,
		`".$this->table_name."`.`country`,
		`".$this->table_name."`.`director`,
		`".$this->table_name."`.`play`,
		`".$this->table_name."`.`cast`,
		`".$this->table_name."`.`description`,
		`$section_table`.`title` as `section`
		FROM `".$this->table_name."`
		INNER JOIN `$section_table` ON `$section_table`.`id` = `".$this->table_name."`.`section_id`
		WHERE `".$this->table_name."`.`id` = ".$this->config->sym_query;
        return $this->transform($this->db->selectRow($query, array($id)));
    }

    public function getOthers($product_info, $count)
    {
        $l = $this->getL($count, 0);
        $query = "SELECT * FROM `".$this->table_name."` WHERE `section_id` = ".$this->config->sym_query." AND `id` != ".$this->config->sym_query. " ORDER BY RAND() $l";
        return $this->transform($this->db->select($query, array($product_info["section_id"], $product_info["id"])));
    }
}