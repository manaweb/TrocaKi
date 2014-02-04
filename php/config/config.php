<?php

@include 'php/classes/header.class.php';
@include 'php/functions/functions.php';

session_start();

define('DB_SERVIDOR','localhost');
define('DB_USUARIO','grupotro_trocaki');
define('DB_SENHA','trocaki001');
define('DB_BANCO','grupotro_trocaki');
define('CONF_EMAIL', '');

define ('DOMAIN','http://higvac.net/101fm/');
define ('CSS_DIRECTORY',DOMAIN.'css/');
define ('JS_DIRECTORY',DOMAIN.'js/');
define ('IMG_DIRECTORY',DOMAIN.'img/');
