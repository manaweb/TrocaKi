    <?php
    $id = intval($_GET['id']);
    if(isset($id) && $id > 0) {
      $id = $_GET['id'];
    }else{
      header("Location: index.php");
    }
    include('topo.php'); ?>
    <link rel="stylesheet" href="css/jquery.bxslider.css" />
    <div class="container">
       <h2>PRODUTOS</h2>
       <div id="corpoTodo" class="clearFix col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div id="fotoInformacoes" class="larguraTotal">
          <div id="foto" class="aoLado">
            <div id="zoom">
              <?php
                error_reporting(E_ERROR);
                $sql = "select * from tbprodutos where id = $id";
                $dados = mysql_fetch_assoc(mysql_query($sql));
              ?>
              <img src="<?php echo "painel/arquivos/produtos/".$dados['foto1'];?>">
            </div>
            <div id="zoomhover" class="" style="background-image: url(<?php echo "painel/arquivos/produtos/".$dados['foto1'];?>); background-position: 10% 69%;"><img src="<?php echo "painel/arquivos/produtos/".$dados['foto1'];?>"></div>
            <div id="miniaturas">
              <?php
              for($i = 1; $i <= 5; $i ++){
                if($dados["foto$i"] != "" && $dados["foto$i"] != null){
                  echo "<img src='painel/arquivos/produtos/_miniaturas/".$dados["foto$i"]."' name='img$i' alt='".utf8_encode($dados['nome'])."' />";
                  echo "<img src='painel/arquivos/produtos/".$dados["foto$i"]."' id='img$i' style='display: none;'>";
                } 
              }
              ?>
            </div>
          </div>
          <div id="informacoes" class="aoLado">
            <form action="cart.php?type=add" method="post">
              <input type="hidden" name="id" value="<?php echo $dados['id'];?>">
              <input type="hidden" name="nome" value="<?php echo $dados['nome'];?>">
              <input type="hidden" name="foto1" value="<?php echo $dados['foto1'];?>">
            <h3 class="corTitulo"><?php echo utf8_encode($dados['nome']);?></h3>
            <div id="precos">

            <div class="pull-right" style="margin-top: 15px;">
              <span class="forma">Formas de Pagamento</span><br>
              <span class="cartoes">Cartões de Crédito</span><br>
                <img src="img/cielo.png" alt="Cielo">
            </div>
            <div class="clearfix"></div>
            <div id="escolherQuantidade">

              <div id="inputNumber">
                <p>Escolha a quantidade</p>
                <input type="text" id="qtd" name="qtd" value="1" readonly="">
                <div id="controls">
                  <div class="qtdMore"></div>
                  <div class="qtdLess"></div>
                </div>
              </div>
              <input type="submit" class="btnOrcamento" value="Orçamento">
              
            </div></form>
          </div>
        </div>
        <div id="descricao" class="setorAbas">
          <div class="topoAba">
            <span class="aba">
              DESCRIÇÃO DO PRODUTO
            </span>
          </div>
          <div class="conteudoAba">
            <div><?php echo utf8_encode($dados['descricao']);?></div>
          </div>
          <div class="bottomAba">
            <span class="voltarTopo">
              VOLTAR AO TOPO
            </span>
          </div>
        </div>

        <div id="relacionados" class="setorAbas">
          <div class="topoAba">
            <span class="aba">
              QUEM VIU, VIU TAMBÉM
            </span>
          </div>
          <div class="abaProdutosRelacionados conteudoAba"><div class="produtoRelacionado">
                <ul class="bxslider">
                  <?php
                    $sqlProdutosRelacionados = "select * from tbprodutos where id <> $id and id_subcategoria = ".$dados['id_subcategoria'];
                    $result = mysql_query($sqlProdutosRelacionados);
                    echo $sqlProdutosRelacionados;
                    while ($dados2 = mysql_fetch_array($result)) {
                    ?>
                  <li>
                    <a href="verprodutos.php?id=<?php echo $dados2['id'];?>">
                      <img src="<?php echo "painel/arquivos/produtos/".$dados2['foto1'];?>" alt="<?php echo utf8_encode($dados2['nome']);?>">
                    </a>
                    <a href="verprodutos.php?id=<?php echo $dados2['id'];?>" class="saibaMais">Saiba Mais</a>
                  </li>
                  <?php } ?>
                </ul>
              </div></div>
          </div>
          <div class="bottomAba">
            <span class="voltarTopo">
              VOLTAR AO TOPO
            </span>
          </div>
        </div>
      </div>
    </div>
    </div>
    <?php include('rodape.php'); ?>
    <script>
        $(function(){

          $(".qtdMore").click(function(){
            var qtd = parseInt($("#qtd").val());
            $("#qtd").val(qtd+1);
          });

          $(".qtdLess").click(function(){
            var qtd = parseInt($("#qtd").val());
              if(qtd > 1)
                $("#qtd").val(qtd-1);
          });

          $(".voltarTopo").click(function(){
            $("html, body").animate({ scrollTop: 0 }, 600);
            return false;
          });

          $("select").change(function(){
            $(this).css('background-color', "#" + $(this).val());
            if($(this).val() == 'Selecione a Cor'){
              $(this).css('background-color', "#FFFFFF");
            }
          })

          $("#miniaturas img").hover(function(){
            var id = $(this).attr('name');
            var imagem = $("#"+id).attr('src');
            $("#zoom img, #zoomhover img").attr('src',imagem);
            $("#zoomhover").css("background-image","url("+imagem+")");
          });

        });
      </script>
      <script src="js/jquery.bxslider.min.js"></script>
    <script>
    $(function(){
      $('.bxslider').bxSlider({
        minSlides: 4,
        maxSlides: 4,
        slideWidth: 190,
        slideMargin: 10

      });
    })
    </script>
    <script type="text/javascript" src="zoom/js/jquery.zoom.js"></script>
    </body>
</html>
