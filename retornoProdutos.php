<?php
	include("php/config/config.php");
	include("painel/includes/BancoDeDados.php");
	$conexao = db_conectar();
	$lastId = $_GET['lastId'];
	$subcategoria = isset($_GET['subcategoria']) ? "and id_subcategoria = ".$_GET['subcategoria'] : "";
	$pesquisar = isset($_GET['pesquisar']) ? "and (upper(nome) like upper('%".$_GET['pesquisar']."%') or upper(descricao) like upper('%".$_GET['pesquisar']."%'))" : ""; 
	$sql = ("SELECT p.* from tbprodutos p");
	$sqlProdutosRelacionados = "select * from tbprodutos where id < $lastId $subcategoria $pesquisar order by id desc limit 8";
	$result = mysql_query($sqlProdutosRelacionados);
	$html = "";
	while ($dados2 = mysql_fetch_array($result)) {
		$html.= "<li id='".$dados2['id']."' class='produto'>
			<a href='verprodutos.php?id=".$dados2['id']."'>
				<h3 class='titulo'>".utf8_encode($dados2['nome'])."</h3>
			</a>
			<img src='painel/arquivos/produtos/_miniaturas/".$dados2['foto1']."' alt='".utf8_encode($dados2['nome'])."'/>
		</li>";
	} 
	echo $html;
	
?>