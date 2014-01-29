    <?php
      if(!isset($_GET['id']) || !isset($_COOKIE)){
        header("Location:cart.php");
      }
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
      if($i == 0){
        header("Location: produtos.php"); 
      }
      include('topo.php');
    ?>
    <div class="container">
       <div class="aoLado pedido">
        <h3>Orçamento realizado em <?php
        date_default_timezone_set('America/Sao_Paulo'); 
        echo date('d/m/Y')?></h3>
        <!--<p>Pedido: </p>-->
        <div class="panel panel-default">
          <div class="panel-heading">Produto</div>
          <div class="panel-body">
            <?php
            for($i = 0; $i < sizeof($cookies); $i++){
              $meuArray = unserialize($_COOKIE[$cookies[$i]]);
              $sqlCarrinho = "select * from tbprodutos WHERE id = ".$meuArray['id'];
              $resultado = mysql_query($sqlCarrinho);
              $dadosCarrinho = mysql_fetch_array($resultado);
            ?>
              <div class="produto tdProduto clearfix">
                <a href="verproduto.php?id=<?=$dadosCarrinho['id']?>">
                  <img class="aoLadoMiddle" src="painel/arquivos/produtos/<?=$dadosCarrinho['foto1']?>" alt="" />
                  <p class="tituloproduto aoLadoMiddle"><?=utf8_encode($dadosCarrinho['nome'])?></p>
                </a>
              </div>
            <?php } ?>
          </div>
        </div>
      </div>

      <div class="aoLado miniCadastro">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
          <fieldset>
            <div class="form-group">
              <h3><img src="img/dados.png" alt="Dados Pessoais"> Dados pessoais</h3>
            </div>
        <?php
          $sqlCadastro = "select * from tbclientes where id = ".$_GET['id']."";
          $result = mysql_query($sqlCadastro);
          $dadosCliente = mysql_fetch_assoc($result);
          $tel = "";
          if($dadosCliente['telefone'] != ""){
            $tel = $dadosCliente['telefone'];
          }else if($dadosCliente['celular'] != ""){
            $tel = $dadosCliente['celular'];
          }
        ?>
          <p><?=$dadosCliente['email']?></p>
          <p><?=$dadosCliente['primeironome']?> <?=$dadosCliente['ultimonome']?></p>
          <p><?=$tel?></p>
          
        </fieldset>
        <fieldset>
          <h3><img src="img/orcamento.png" alt="Orçamento" /> Orçamento</h3>
          <div class="lblSubmit">
            <button class="fazerPedido btn btn-primary btn-lg" id="enviarOrcamento" onclick="javascript:void(0)">Enviar Orçamento</button>
          </div>
        </fieldset>
        <div id="carregando" class="carregando clear"><img src='img/loader.gif' alt='Loading' class="imgCarregando" /></div>
      </div>
      <div class="clear"></div>
    </div>
    <?php include('rodape.php'); ?>
    <script>
        $(function(){
          $("#enviarOrcamento").click(function(){
            $(this).addClass('disabled').attr('disabled','disabled');
            $('#carregando').show();
            $.ajax({
              url: "finalizar.php?id=<?=$_GET['id']?>&email=<?=$dadosCliente['email']?>",
              success: function(html) {
                $('#carregando img').replaceWith("<div class='sucessoEnvio'>Orçamento enviado com sucesso</div>");
                $(".sucessoEnvio").fadeIn();
                window.setTimeout(function(){
                  window.location='index.php'
                }, 5000);
              }
            });
          });
        });
      </script>
    </body>
</html>
