	<?php
		if(!isset($_POST['email']) || !isset($_COOKIE)){
			header("Location:cart.php");
		}
		$email = $_POST['email'];
		
		if (isset($_COOKIE['produto_']))
			unset($_COOKIE['produto_']);

		$cookies = array();
		$i = 0;
		foreach($_COOKIE as $key => $value){
			if('produto_' == substr($key, 0, 8)){
				$cookies[$i] = $key;
				$i++;
			}
		}
		
		include "topo.php";
	?>

	<div class="container">
		<div class="aoLado pedido">
			<h3>Orçamento realizado em <?php
			date_default_timezone_set('America/Sao_Paulo'); 
			echo date('d/m/Y')?></h3>
			<!--<p>Pedido: </p>-->
			<div class="cabecalhoOrcamento">Produto</div>
			<div>
				<?php
				for($i = 0; $i < sizeof($cookies); $i++){
					$meuArray = unserialize($_COOKIE[$cookies[$i]]);
					$sqlCarrinho = "select * from tbprodutos WHERE id = ".$meuArray['id'];
					$resultado = mysql_query($sqlCarrinho);
					$dadosCarrinho = mysql_fetch_array($resultado);
				?>
					<div class="produto tdProduto clear">
						<a href="verproduto.php?id=<?=$dadosCarrinho['id']?>">
							<img class="aoLadoMiddle" src="painel/arquivos/produtos/<?=$dadosCarrinho['foto1']?>" alt="" />
							<p class="tituloproduto aoLadoMiddle"><?=utf8_encode($dadosCarrinho['nome'])?></p>
						</a>
					</div>
				<?php } ?>
			</div>
		</div>
		<div class="aoLado miniCadastro">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			<fieldset>
				<div class="form-group">
					<h3><img src="img/dados.png" alt="Dados Pessoais"/> Dados pessoais</h3>
					<p>Solicitamos apenas as informações essenciais para o orçamento</p>
					<?php
						$sqlCadastro = "select * from tbclientes where email = '".$email."'";
						$result = mysql_query($sqlCadastro);
						//$numRows = mysql_num_rows($result);
						//$firstName = $lastName = $telefone = $celular = "";
						/*if($numRows > 0){
							$dadosCliente = mysql_fetch_assoc($result);
							$firstName = "value='".$dadosCliente['primeironome']."' readonly";
							$lastName = "value='".$dadosCliente['ultimonome']."' readonly";
							$telefone = "value='".$dadosCliente['telefone']."' readonly";
							$celular = "value='".$dadosCliente['celular']."' readonly";
						} */
					?>
				</div>
				
				<form method="post" action="realizarCadastro.php" class="formCadastrar form" role="form">
					<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<label>
							E-mail
						</label>
						<input type="email" name="email" class="form-control" value="<?=$email?>" readonly />
					</div>
					<div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-6">
						<label>
							Primeiro nome
						</label>
						<input type="text" name="firstName" class="form-control" required/>
					</div>
					<div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-6">
						<label>
							Último nome
						</label>
						<input type="text" name="lastName" class="form-control" required/>
					</div>
					<div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-6">
						<label>
							Celular
						</label>
						<input type="text" name="celular" id='celular' class="form-control" required />
					</div>
					<div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-6">
						<label>
							Telefone
						</label>
						<input type="text" name="telefone" id='telefone' class="form-control" required />
					</div>
					<fieldset>
						<legend>Endereço</legend>
						<div class="form-group col-lg-9 col-md-9 col-sm-9 col-xs-9">
							<label>
								CEP
							</label>
							<input type="text" name="cep" id='cep' class="form-control col-lg-4 col-md-4 col-sm-4 col-xs-4" required />
						</div>
						<div class="form-group col-lg-3 col-md-3 col-sm-3 col-xs-3"></div>
						<div class="form-group col-lg-3 col-md-3 col-sm-3 col-xs-3">
							<button id="btnBuscarCep" class="btn btn-primary btn-md">Buscar</button>
						</div>
						<div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-6">
							<label>
								Logradouro
							</label>
							<input type="text" name="logradouro" id='logradouro' class="form-control" required />
						</div>
						<div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-6">
							<label>
								Nº/Complemento
							</label>
							<input type="text" name="numero" id='numero' class="form-control" required />
						</div>
						<div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-6">
							<label>
								Bairro
							</label>
							<input type="text" name="bairro" id='bairro' class="form-control" required/>
						</div>
						<div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-6">
							<label>
								Cidade
							</label>
							<input type="text" name="cidade" id='cidade' class="form-control" required/>
						</div>
						<div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-6">
							<label>
								Estado
							</label>
							<input type="text" name="estado" id='estado' maxlength="2" class="form-control" required />
						</div>
						<div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12 pull-left">
							<button type="submit" class="btn btn-default btn-md">Fechar Orçamento</button>
						</div>
					</fieldset>
				</form>
		</div>
		<div class="clear"></div>
	</div>
	<?php include "rodape.php";?>
	<script src="js/jquery.blockUI.js"></script>
	<script type="text/javascript" src="js/jquery.maskedinput.min.js"></script>
	<script>
		$(function(){
			$("#celular").mask("(99) 99999-9999");
			$("#telefone").mask("(99) 9999-9999");
			$("#cep").mask("99.999-999");
		});
	</script>
	</body>
</html>