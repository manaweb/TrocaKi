<?php
      include("php/config/config.php");
      include("painel/includes/BancoDeDados.php");
      $conexao = db_conectar();
    ?>
<header>
      <div class="section">
        <div class="container navbar">
          <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 text-left">
              <a href="javascript:void(0);">
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
                <form action="" role="form" class="espaco">
                  <div class="form-group">
                    <div class="col-lg-10 col-md-10 col-sm-10 col-xs-10">
                      <input type="search" class="form-control buscar col-lg-offset-1 col-md-offset-1 col-sm-offset-1 col-xs-offset-1" placeholder="Procure por nossos produtos" />
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
                      <a href="javascript:void(0);">
                        home
                      </a>
                    </li>
                    <li>
                      <a href="javascript:void(0);">
                        quem somos
                      </a>
                    </li>
                    <li>
                      <a href="javascript:void(0);">
                        produtos
                      </a>
                    </li>
                    <li>
                      <a href="javascript:void(0);">
                        serviços
                      </a>
                    </li>
                    <li>
                      <a href="javascript:void(0);">
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