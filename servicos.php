<?php include('topo.php'); ?>
  <div class="container">
    <h2>SERVIÇOS</h2>
    <div class="row">

      <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 item-servico">
        <a href="#" class="thumbnail" class="thumbnail" data-toggle="modal" data-target="#freio">
          <span class="icon-servicos freio"></span>
          freio
        </a>
      </div>
      <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 item-servico">
        <a href="#" class="thumbnail" data-toggle="modal" data-target="#ar">
          <span class="icon-servicos ar"></span>
          ar condicionado
        </a>
      </div>
      <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 item-servico">
        <a href="#" class="thumbnail" class="thumbnail" data-toggle="modal" data-target="#balanceamento">
          <span class="icon-servicos balanceamento"></span>
          balanceamento
        </a>
      </div>
      <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 item-servico">
        <a href="#" class="thumbnail" class="thumbnail" data-toggle="modal" data-target="#pneu">
          <span class="icon-servicos pneu"></span>
          pneus
        </a>
      </div>
      <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 item-servico">
        <a href="#" class="thumbnail" class="thumbnail" data-toggle="modal" data-target="#refrigeracao">
          <span class="icon-servicos refrigeracao"></span>
          refrigeração
        </a>
      </div>
      <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 item-servico">
        <a href="#" class="thumbnail" class="thumbnail" data-toggle="modal" data-target="#suspensao">
          <span class="icon-servicos suspensao"></span>
          suspensão
        </a>
      </div>
      <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 item-servico">
        <a href="#" class="thumbnail" class="thumbnail" data-toggle="modal" data-target="#eletrica">
          <span class="icon-servicos eletrica"></span>
          elétrica
        </a>
      </div>
      <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 item-servico">
        <a href="#" class="thumbnail" class="thumbnail" data-toggle="modal" data-target="#mecanica">
          <span class="icon-servicos mecanica"></span>
          mecânica leve
        </a>
      </div>
      <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 item-servico">
        <a href="#" class="thumbnail" class="thumbnail" data-toggle="modal" data-target="#alinhamento">
          <span class="icon-servicos alinhamento"></span>
          alinhamento
        </a>
      </div>
      <!-- Modal -->
      <?php
        include_once('php/config/config.php');
        include_once('painel/includes/BancoDeDados.php');

        $db = db_conectar();
        $query = mysql_query("SELECT tipo,texto FROM servicos");
        while($result = mysql_fetch_assoc($query)):
      ?>
      <div class="modal fade" id="<?=$result['tipo']?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
        <a href="javascript:void(0);" class="modal-close pull-right" data-dismiss="modal" aria-hidden="true">&times;</a>
          <div class="modal-content">
            <div class="modal-body">
              <div class="scroll-pane">
                <p>
                  <?=utf8_encode($result['texto'])?>
                </p>
              </div>
            </div>
          </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
      </div><!-- /.modal -->
      <?php 
        endwhile;
        mysql_free_result($query);
        @mysql_close($db);
      ?>
  </div>
<?php include('rodape.php'); ?>
</body>
</html>