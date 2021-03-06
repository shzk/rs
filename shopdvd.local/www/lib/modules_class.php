<?php

require_once "config_class.php";
require_once "url_class.php";
require_once "format_class.php";
require_once "template_class.php";
require_once "section_class.php";
require_once "product_class.php";


abstract class Modules
{
    protected $config;
    protected $data;
    protected $url;
    protected $format;
    protected $section;
    protected $product;

    public function __construct()
    {
        session_start();
        $this->config = new Config();
        $this->url = new URL();
        $this->format = new Format();
        $this->data = $this->format->xss($_REQUEST);
        $this->template = new Template($this->config->dir_tmpl);
        $this->section = new Section();
        $this->product = new Product();

        $this->setInfoCart();
        $this->template->set("content", $this->getContent());
        $this->template->set("title", $this->title);
        $this->template->set("meta_desc", $this->meta_desc);
        $this->template->set("meta_key", $this->meta_key);
        $this->template->set("index", $this->url->index());
        $this->template->set("link_delivery", $this->url->delivery());
        $this->template->set("link_contacts", $this->url->contacts());
        $this->template->set("link_cart", $this->url->cart());
        $this->template->set("link_search", $this->url->search());
        $this->template->set("items", $this->section->getAllData());
        $this->template->display("main");
    }

    protected function notFound()
    {
        $this->redirect($this->url->notFound());
    }

    protected function redirect($link)
    {
        header("Location: $link");
        exit;
    }

    private function setInfoCart()
    {
        $ids = explode(",", $_SESSION["cart"]);
        $summa = $this->product->getPriceOnIDs($ids);
        $this->template->set("cart_count", count($ids));
        $this->template->set("cart_summa", $summa);
    }

    protected function setLinkSort()
    {
        $this->template->set("link_price_up", $this->url->sortPriceUp());
        $this->template->set("link_price_down", $this->url->sortPriceDown());
        $this->template->set("link_title_up", $this->url->sortTitleUp());
        $this->template->set("link_title_down", $this->url->sortTitleDown());
    }

    abstract protected function getContent();
}