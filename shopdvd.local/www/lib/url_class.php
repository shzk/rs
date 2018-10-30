<?php

require_once "config_class.php";

class URL
{
    private $config;
    private $amp;

    public function __construct($amp = true)
    {
        $this->config = new Config();
        $this->amp = $amp;
    }

    public function setAMP($amp)
    {
        $this->amp = $amp;
    }

    public function getThisURL()
    {
        $uri = substr($_SERVER["REQUEST_URI"], 1);
        return $this->config->address.$uri;
    }

    private function deleteGET($url, $param)
    {
        $res = $url;
        if ($p = strpos($res, "?") !== false ) {
            $paramstr = substr($res, $p + 1);
            $params = explode("&", $paramstr);
            $paramsarr = array();
            foreach ($params as $value) {
                $tmp = explode("=", $value);
                $paramsarr[$tmp[0]] = $tmp[1];
            }
            if (array_key_exists($param, $paramsarr)) {
                unset($paramsarr[$param]);
                $res = substr($res, 0, $p + 1);
                foreach ($paramsarr as $key => $value) {
                    $str = $key;
                    if ($value !== "") {
                        $str .= "=$value";
                    }
                    $res .= "$str&";
                }
                $res = substr($res, 0, -1);
            }
        }

        return $res;
    }

    private function returnURL($url, $index = false)
    {
        if (!$index) $index = $this->config->address;
        if ($url == "") return $index;
        if (strpos($url, $index) !== 0) $url = $index.$url;
        if ($this->amp) $url = str_replace("&", "&amp;", $url);

        return $url;
    }

    public function index()
    {
        return $this->returnURL("");
    }

    public function cart()
    {
        return $this->returnURL("cart");
    }
}