    <?php include_once('topo.php'); ?>

    <!-- Main jumbotron for a primary marketing message or call to action -->
      <div class="container">

        <div class="row">
          <div class="carousel-content">
            <div class="jcarousel-wrapper">
                  <div class="jcarousel" data-jcarousel="true">
                      <ul> 
                        <?php
                          $sql = "select * from tbprodutos order by id desc";
                          $result = mysql_query($sql);
                          while($dadosProdutos = mysql_fetch_assoc($result)){
                            echo "
                              <li>
                                <div class='contentItem'>
                                  <a href='verprodutos.php?id=".$dadosProdutos['id']."'>
                                    <img src='painel/arquivos/produtos/_miniaturas/".$dadosProdutos['foto1']."' alt='".$dadosProdutos['nome']."'>
                                  </a>
                                </div>
                              </li>";
                          }
                        ?>
                    </ul>
                  </div>

                  <a href="#" class="jcarousel-control-prev" data-jcarouselcontrol="true">‹</a>
                  <a href="#" class="jcarousel-control-next" data-jcarouselcontrol="true">›</a>
              </div><!-- end jcarousel-wrapper -->
          </div><!-- end carousel content -->
        </div><!-- end row -->
        <div class="row">
          <div class="box-left">
            <div class="sobre">
              <h1>Sobre a Empresa</h1>
              <p>A empresa, devidamente, atua no mercado a mais de 10 anos. Atualmente se encontra instalada no Distrito Industrial de JABOTICABAL-SP, colaborando para o crescimento do Distrito da Cidade.</p>
            </div>
          </div>
          <div class="likeboxfacebook">
            <iframe src="http://www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2Fpages%2FTroca-Ki%2F264307743736977&amp;width=624&amp;height=290&amp;colorscheme=light&amp;show_faces=true&amp;header=true&amp;stream=false&amp;show_border=true" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:624px; height:290px;" allowTransparency="true"></iframe>
          </div>
        </div><!-- end row -->
        <div class="row boxContatos">
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 centralVendas">
            <h4>Central de Vendas</h4>
            <span class="icone"></span>
            <p>Envie os seus dados que a equipe de vendas da Troca KI  entrará em contato com você.</p>

            <form class="form-horizontal form-index" role="form">
              <div class="form-group">
                <label for="txtNome" class="col-lg-4 col-md-4 col-sm-4 col-xs-4 control-label">NOME</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" id="txtNome" name="nome" required>
                </div>
              </div>
              <div class="form-group">
                <label for="txtTelefone" class="col-lg-4 col-md-4 col-sm-4 col-xs-4 control-label">TELEFONE</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" id="txtTelefone" name="telefone" required>
                </div>
              </div>
              <div class="form-group">
                <label for="txtObjetivo" class="col-lg-4 col-md-4 col-sm-4 col-xs-4 control-label">OBJETIVO DO CONTATO</label>
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8">
                  <textarea class="form-control" rows="2" name="objetivo" id="txtObjetivo" required></textarea>
                </div>
              </div>
              <div class="form-group">
                <div class="col-lg-offset-2 col-lg-10 col-md-offset-2 col-md-10 col-xs-offset-2 col-xs-10 col-sm-offset-2 col-sm-10">
                  <button type="submit" class="btn btn-warning pull-right">Enviar <span class="glyphicon glyphicon-chevron-right"></span></button>
                </div>
              </div>
            </form>
          </div>


          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
            <h4>Atendimento por email</h4>
            <span class="icone"></span>
            <p>Mande uma mensagem para nós e tire suas dúvidas, conheça os lançamentos e envie comentários ou sugestões.</p>
            <a href="mailto:contato@grupotrocaki.com.br" class="btn btn-warning pull-right">CLIQUE E TIRE SUAS DÚVIDAS <span class="glyphicon glyphicon-chevron-right"></span></a>
          </div>

          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
            <h4>Atendimento</h4>
            <span class="icone"></span>
            <p class="telefone">(16) 3202-1178</p>
            <a href="contato.php" class="btn btn-warning pull-right btnLink">CLIQUE E FALE AGORA <span class="glyphicon glyphicon-chevron-right"></span></a>
          </div>
        </div>
        </div>
        <?php 
          $page = "index";
          include_once('rodape.php'); 
        ?>
        <script src="js/jquery.jcarousel.min.js"></script>
        <script src="js/jcarousel.responsive.js"></script>
        <script>
          $(function() {
              $('.boxContatos form').submit(function() {
               var papi = $(this);
               $('.btn-warning',papi).attr('disabled','disabled').text('Enviando...');
                $.post('ajaxRetorno.php?type=2',$(this).serialize(),function(data) {
                    $('.btn-warning',papi).removeAttr('disabled').text('Enviado!');
                     setTimeout(function() {window.location = 'index.php'},3000);
                });
              return false;
            });    
          });
        </script>
    </body>
</html>
