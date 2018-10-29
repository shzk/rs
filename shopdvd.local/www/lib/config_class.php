<?php

class Config
{
    public $secret = "DFSJLFSDLJG";
    public $sitename = "ShopDVD.ru";
    public $address = "http://shopdvd.local/";
    public $address_admin = "http://shopdvd.local/admin/";
    public $db_host = "localhost";
    public $db_user = "root";
    public $db_password = "root";
    public $db_name = "shopdvd-local";
    public $db_prefix = "sdvd_";
    public $sym_query = "{?}";

    public $admname = "Denis";
    public $admemail = "no-reply@dtokarev.ru";
    public $adm_login = "Admin";
    public $adm_password = "6deaff5c019acfc2800e7f83a1a7456f";

    public $count_on_page = 8;
    public $count_others = 6;

    public $pagination_count = 10;

    public $dir_text = "lib/text/";
    public $dir_tmpl = "tmpl/";
    public $dir_tmpl_admin = "admin/tmpl/";
    public $dir_img_products = "images/products/";

    public $max_name = 255;
    public $max_title = 255;
    public $max_text = 65535;

    public $max_size_img = 102400;
}