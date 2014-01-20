    <?php include('header.php'); ?>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->
    <?php include('topo.php'); ?>

      <div class="container">
        <div class="row">
        	<div class="carousel-content">
        		<div class="jcarousel-wrapper">
                  <div class="jcarousel" data-jcarousel="true">
                      <ul> 
  	                    <li>
  	                    	<div class="contentItem">
  		                		<img src="img/suspensao.png" alt="">
  		                	</div>
  		                </li>
  		                <li>
  		                	<div class="contentItem">
  		                    	<img src="img/freio.png" alt="">
  		                    </div>
  		                </li>
  		                <li>
  		                	<div class="contentItem">
  		                		<img src="img/oleo.png" alt="">
  		                	</div>
  		               	</li>

  		               	<li>
  	                    	<div class="contentItem">
  		                		<img src="img/suspensao.png" alt="">
  		                	</div>
  		                </li>
  		                <li>
  		                	<div class="contentItem">
  		                    	<img src="img/freio.png" alt="">
  		                    </div>
  		                </li>
  		                <li>
  		                	<div class="contentItem">
  		                		<img src="img/oleo.png" alt="">
  		                	</div>
  		               	</li>
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
        		<iframe src="http://www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2FFacebookDevelopers&amp;width=624&amp;height=292&amp;colorscheme=light&amp;show_faces=false&amp;header=false&amp;stream=true&amp;show_border=false" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:632px; height:292px;" allowTransparency="true"></iframe>
          </div>
        </div><!-- end row -->
        <div class="row boxContatos">
          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4 centralVendas">
            <h4>Central de Vendas</h4>
            <span class="icone"></span>
            <p>Envie os seus dados que a equipe de vendas da Troca KI  entrará em contato com você.</p>

            <form class="form-horizontal form-index" role="form">
              <div class="form-group">
                <label for="txtNome" class="col-sm-4 control-label">NOME</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" id="txtNome" name="txtNome">
                </div>
              </div>
              <div class="form-group">
                <label for="txtTelefone" class="col-sm-4 control-label">TELEFONE</label>
                <div class="col-sm-8">
                  <input type="text" class="form-control" id="txtTelefone" name="txtTelefone">
                </div>
              </div>
              <div class="form-group">
                <label for="txtObjetivo" class="col-sm-4 control-label">OBJETIVO DO CONTATO</label>
                <div class="col-sm-8">
                  <textarea class="form-control" rows="3" resize="none" name="txtObejtivo" name="txtObjetivo"></textarea>
                </div>
              </div>
              <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                  <button type="submit" class="btn btn-warning pull-right">Enviar <span class="glyphicon glyphicon-chevron-right"></span></button>
                </div>
              </div>
            </form>

          </div>

          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
            <h4>Atendimento por email</h4>
            <span class="icone"></span>
            <p>Mande uma mensagem para a nos e tire suas dúvidas, conheça os lançamentos e envie comentários ou sugestões.</p>
            <a href="javascript:void(0)" class="btn btn-warning pull-right">CLIQUE E TIRE SUAS DÚVIDAS <span class="glyphicon glyphicon-chevron-right"></span></a>
          </div>

          <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
            <h4>Atendimento</h4>
            <span class="icone"></span>
            <p class="telefone">(16) 3202-4399</p>
            <a href="javascript:void(0)" class="btn btn-warning pull-right btnLink">CLIQUE E FALE AGORA <span class="glyphicon glyphicon-chevron-right"></span></a>
          </div>
        </div>
      </div>
    <?php include('rodape.php'); ?>
    </body>
</html>
