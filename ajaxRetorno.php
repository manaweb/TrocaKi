<?php

include_once 'orcamento/checkout/actioncheckout.class.php';

function dataToString($datarr) {
	$str = '';
	foreach($datarr as $key => $value)
		$str .= "<strong>".ucfirst($key)."</strong>: $value<br>";
	return $str;
}


$type = $_GET['type'];
$data = $_POST;
$opts = array(
	'assunto' => '',
	'remetente' => 'trocaki@grupotrocaki.com.br',
	'nomeRemetente' => 'TrocaKi',
	'destino' => array('TrocaKi' => 'contato@grupotrocaki.com.br'),
	'corpo' => "<html><body><h1>Formulário de Contato</h1>".dataToString($data)."</body></html>"
);

switch($type) {
	case 1:
		$opts['assunto'] = 'Contato';
	break;
	case 2:
		$opts['destino'] = array('Financeiro' => 'wesley@manaweb.com.br');
		$opts['assunto'] = 'Central de Vendas';
	break;
}

$Act = new ActionCheckout;
echo $Act->sendConfirm($opts);