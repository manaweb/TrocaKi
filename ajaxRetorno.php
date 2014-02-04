<?php

include_once 'orcamento/checkout/actioncheckout.class.php';

function dataToString($datarr) {
	$str = '';
	foreach($datarr as $key => $value)
		$str .= "<strong>".ucfirst($key)."</strong>: $value<br>";
	return $str;
}


$type = $_GET['type'];
$msg = NULL;

$data = $_POST;

$opts = array(
	'assunto' => '',
	'remetente' => 'trocaki@grupotrocaki.com.br',
	'nomeRemetente' => 'TrocaKi',
	'destino' => array('TrocaKi' => 'contato@grupotrocaki.com.br'),
	'corpo' => ''
);

switch($type) {
	case 1:
		$opts['assunto'] = 'Contato';
		$opts['corpo'] = "<html><body><h1>Formulário de Contato</h1>
		".dataToString($data)."</body></html>";
	break;
	case 2:
		$opts['remetente'] = 'financeiro@grupotrocaki.com.br';
		$opts['assunto'] = 'Central de Vendas';
		$opts['corpo'] = "<html><body><h1>Formulário de Contato</h1>
		".dataToString($data)."</body></html>";
	break;
}

$Act = new ActionCheckout;
echo $Act->sendConfirm($opts);