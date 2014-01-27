<?php
      include("php/config/config.php");
      include("painel/includes/BancoDeDados.php");
      $conexao = db_conectar();
    ?>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>TrocaKi</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="fonts/century_gothic/stylesheet.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/jcarousel.responsive.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" type="text/css" href="zoom/css/zoom.css">
        <!--[if lt IE 9]>
            <script src="js/vendor/html5-3.6-respond-1.1.0.min.js"></script>
            <link rel="stylesheet" href="css/main_ie.css">
        <![endif]-->
    </head>
    <body>
      <!--[if lt IE 7]>
          <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
      <![endif]-->
<header>
      <div class="section">
        <div class="container navbar">
          <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 text-left">
              <a href="index.php">
                <div class="separador">
                  <img src="img/logo.png" alt="TrocaKi">
                </div>
              </a>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 text-right">
              <div class="espaco">
                <div class="central-de-vendas">
                    <span class="celular-xs">CENTRAL DE VENDAS 16 3877-7919</span>
                </div>
                <form action="produtos.php" method="get" role="form" class="espaco">
                  <div class="form-group">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
                      <input type="search" class="form-control buscar col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1" placeholder="Procure por nossos produtos" name="pesquisar" value="<?php echo isset($_GET['pesquisar']) ? $_GET['pesquisar'] : ""; ?>" />
                    </div>
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                      <button class="btn btn-primary btn-circle btn-md pull-right" type="submit">
                        <span class="glyphicon glyphicon-play"></span>
                      </button>
                    </div>
                  </div>
                </form>
                 <div class="menu clearfix text-left">
                  <ul class="list-inline espaco">
                    <li>
                      <a href="index.php">
                        home
                      </a>
                    </li>
                    <li>
                      <a href="quemsomos.php">
                        quem somos
                      </a>
                    </li>
                    <li>
                      <a href="produtos.php">
                        produtos
                      </a>
                    </li>
                    <li>
                      <a href="servicos.php">
                        serviços
                      </a>
                    </li>
                    <li>
                      <a href="contato.php">
                        contato
                      </a>
                    </li>
                    <li>
                      <a href="javascript:void(0);">
                        <img src="img/facebook-icon.png">
                      </a>
                    </li>
                  </ul>
                </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </header>

      <div class="jumbotron">
        <div class="container">
          <div id="carousel-trocaki" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
              
              <?php
                $sql = "select * from tbpublicidade order by id_publicidade desc";
                $result = mysql_query($sql);
                $qtd = mysql_num_rows($result);
                $html = "";
                $active = "active";
                while($dadosBanner = mysql_fetch_assoc($result)){
                  $link = $dadosBanner['destino'] == "" ? "" : "href='".$dadosBanner['destino']."' target='_blank'";
                  $html .= 
                  '<div class="item '.$active.'">
                    <div style="width: 100%;height: 439px;background: url(painel/arquivos/banner/'.$dadosBanner['arquivo'].') center no-repeat;"></div>
                    <div class="carousel-caption">
                      <a '.$link.'>'.$dadosBanner['titulo'].'</a>
                    </div>
                  </div>';
                  $active = "";
                }
                echo $html;
              ?>
            </div>
            <ol class="carousel-indicators">
            <?php
              
              $active = 'class="active"';
              for($i = 0; $i < $qtd; $i++){
                echo '<li data-target="#carousel-trocaki" data-slide-to="'.$i.'" '.$active.'></li>';
                $active = "";
              }
            ?>
          </ol>
          </div>
        </div>
      </div>

      <div class="container">
        <!-- Example row of columns -->
        <div class="row">
          <div class="barraLateral"></div>
          <ul class="parceiros">
            <li><img src="img/bridgestone.png"/></li>
            <li><img src="img/michelin.png"/></li>
            <li><img src="img/yokohama.png"/></li>
            <li><img src="img/cofap.png"/></li>
          </ul>
        </div>