    <?php include('topo.php'); ?>
    <div class="container">
      <div id="menu-lateral" class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
        <h3>
          <b>Ache o produto que deseja aqui.</b>
        </h3>
        <br>
        <div class="input-group">
          <!-- /input-group -->
          <input type="text" name="pesquisa" id="txtSearch" class="form-control" placeholder="Pesquisar" value="">
          <span class="input-group-btn">
            <button class="btn btn-primary buscar" id="btn-search" type="button">
              <span class="glyphicon glyphicon-search"></span>
            </button>
          </span>
        </div>
        <!-- /input-group -->
        <ul class="bullet menu-bar">
          <h3>
            <b>Nossos Produtos</b>
          </h3>
          <ul class="bullet">
            <li>
              <a href="javascript:void(0);"></a>
            </li>
          </ul>
        </ul>
      </div>
      <div id="produtos" class="clear produtos col-lg-8 col-md-8 co-sm-8 col-xs-8">
        <ul class="list-unstyled list-inline">
          <li class="produto">
            <a href="verprodutos.php">
              <h3 class="titulo">SUSPENSÃO</h3>
            </a>
            <img src="img/suspensao.png" alt="SUSPENSÃO">
          </li>
          <li class="produto">
            <a href="verprodutos.php?id=134">
              <h3 class="titulo">FREIO</h3>
            </a>
            <img src="img/freio.png" alt="FREIO">
          </li>
          <li class="produto">
            <a href="verprodutos.php?id=134">
              <h3 class="titulo">OLEO</h3>
            </a>
            <img src="img/oleo.png" alt="OLEO">
          </li>
        </ul>
      </div>
    </div>
    <?php include('rodape.php'); ?>
    </body>
</html>
