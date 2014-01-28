    <?php include('topo.php'); ?>
    <div class="container">
      <div id="menu-lateral" class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
        <h3>
          <b>Ache o produto que deseja aqui.</b>
        </h3>
        <br>
        <div class="input-group">
          <!-- /input-group -->
          <form action="produtos.php" method="get" class="input-group">
            <input type="text" name="pesquisar" id="txtSearch" class="form-control" placeholder="Pesquisar" value="<? echo isset($_GET['pesquisar']) ? $_GET['pesquisar'] : "" ?>">
            <span class="input-group-btn">
              <button class="btn btn-primary buscar" id="btn-search" type="button">
                <span class="glyphicon glyphicon-search"></span>
              </button>
            </span>
          </form>
        </div>
        <!-- /input-group -->
        <ul class="bullet menu-bar">
          <h3>
            <b>Nossos Produtos</b>
          </h3>
          <?php
            $ul = '';
            $final = '';
            $q = mysql_query("SELECT * FROM tbprodutos_categorias");
            while ($dados = mysql_fetch_assoc($q)) {
              $final = '';
              $id = $dados['id_categoria'];
              $qq = mysql_query("SELECT * FROM tbprodutos_subcategorias WHERE categoria = '$id'");
              while ($dados2 = mysql_fetch_assoc($qq))
                $final .= '<li id="'.$dados2['id_subcategoria'].'"><a href="produtos.php?subcategoria='.$dados2['id_subcategoria'].'">'.utf8_encode($dados2['subcategoria']).'</a></li>';
              $ul .= '<ul class="bullet"><li><h3><a href="javascript:void(0)" class="show-hide">'.utf8_encode($dados['categoria']).'</a></h3><ul class="colapsed">'.$final.'</ul></li></ul>';
              
            }
            echo $ul;
          ?>
        </ul>
      </div>
      <div id="produtos" class="clear produtos col-lg-8 col-md-8 co-sm-8 col-xs-8">
        <ul class="list-unstyled list-inline">
          <li style="display: none" class="produto" id="9999999999999999999999999999999"></li>
        </ul>
      </div>
      <div class="clearfix"></div>
      <div id="carregando" class="carregando clear"><img src='img/loader.gif' alt='Loading' class="imgCarregando" /></div>
    </div>
    <?php include('rodape.php'); ?>
    <script>
    $(function(){
      var posicaoAtual = $(window).scrollTop();
      var documentSize = $(document).height();
      var sizeWindow = $(window).height();
      var s = "";
      var p = "";
      var busy = 0;
      <?php
      //echo isset($_GET['subcategoria'])? "s = '&subcategoria=".$_GET['subcategoria']."';\n $('#".$_GET['subcategoria']."').parents('li').children('ul').slideToggle('slow');\n" : "";
      echo isset($_GET['pesquisar'])? "p = '&pesquisar=".$_GET['pesquisar']."';\n" : ""; 
      ?>
      carregaProdutos(s);
      
      function carregaProdutos(x){
        $('#carregando').show();
        window.setTimeout(function(){
          if(busy == 0){
            busy = 1;
            $.ajax({
              url: "retornoProdutos.php?lastId="+ $(".produto:last").attr('id') + s + p,
              success: function(html) {
                if(html){   
                  $("#produtos ul").append(html);
                  $('#carregando').hide();
                }else{
                  $("#produtos ul").append('<li class="clear" style="display: none;">');    
                  $('#carregando img').replaceWith("<p>Você já visualizou todos os produtos</p>");
                  $('#carregando').css('background-color','#CCC');
                }
                busy = 0;
              }
            }); 
          }
        },500);
      }
      
      $(window).scroll(function () {
        posicaoAtual = $(window).scrollTop();
        if($(window).scrollTop() >= $(document).height() - $(window).height()) {
          var x = "";
          carregaProdutos(x); 
        }
      });

          
      
      $('.show-hide').click(function() {
        $(this).parents('li').children('ul').slideToggle('slow');
      });
      
    });
  </script>
    </body>
</html>
