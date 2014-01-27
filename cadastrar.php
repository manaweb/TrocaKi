	<?php 
		if(!isset($_GET['id']) || !isset($_COOKIE) || !isset($_GET['qtd'])){
			header("Location:cart.php");
		}
		include "topo.php";
	?>

	<div class="container conteudoCadastrar">
		<h3>Para finalizar a compra, informe seu e-mail.<span>Rápido. Fácil. Seguro</span></h3>
		<form method="post" action="cadastro.php" class="formCadastrar form" role="form">
			<input type="hidden" name="id" value="<?=(isset($_GET['id']) ? $_GET['id'] : "")?>" />
			<input type="hidden" name="qtd" value="<?=(isset($_GET['qtd']) ? $_GET['qtd'] : "")?>" />
			<div class="form-group col-lg-9 col-lg-offset-1 col-md-9 col-md-offset-1 col-sm-9 col-sm-offset-1 col-xs-9 col-xs-offset-1">
				<input type="email" name="email" class="form-control inputao" placeholder="seu@email.com" required />
			</div>
			<div class="form-group" class="col-lg-1 col-md-1 col-sm-1 col-xs-1">
				<input type="submit" class="btn btn-primary btn-md" value="Continuar" />
			</div>
		</form>
		<br />
		<div class="infoCad">
			<p>Usamos seu e-mail de forma 100% segura para:</p>
			<ul>
				<li>Identificar seu perfil</li>
				<li>Notificar sobre o andamento do seu pedido</li>
				<li>Acelerar o preenchimento de suas informações</li>
			</ul>
		</div>
	</div>
	<script src="js/jquery.js"></script>
	<script src="validator/js/jquery.validationEngine-pt_BR.js" type="text/javascript" charset="utf-8"></script>
	<script src="validator/js/jquery.validationEngine.js" type="text/javascript" charset="utf-8"></script>
	<script>
		$(function(){
			$('form').validationEngine('attach');
		});
	</script>
	<?php include "rodape.php";?>
	</body>
</html>