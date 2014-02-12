    </div></div>
    <footer>
      <div class="footer">
         <div class="container espaco">
            <div class="row espaco">
              <div class="col-lg-12">
                <div class="menu clearfix text-right pull-right">
                    <ul class="list-inline espaco">
                       <li>
                        <a href="index.php;">
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
                  </div>
                </div>
            </div>
            <div class="row espaco clearfix">
              <a href="javascript:void(0);">
                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3" style="margin-top: -30px">
                  <img src="img/logo-mini.png" alt="TrocaKi">
                </div>
              </a>
              <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
                <address>
                  Troca Ki | Rua Monteiro Lobato, 987 | Jaboticabal | SP | Brasil - ©Todos Direitos Reservados
                </address>
              </div>
            </div>
         </div>
      </div>
      <div class="sub-footer">
        <div class="container">
          <a href="http://manaweb.com.br" target="_blank" class="pull-right" title="Maná WEB">
            <img src="img/logo-mana.png">
          </a>
        </div>
      </div>
    </footer>
      <script src="js/vendor/jquery-1.10.1.min.js"></script>
      <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.1.min.js"><\/script>')</script>

      <script src="js/vendor/bootstrap.min.js"></script>
      <script src="js/jquery.mousewheel.js"></script>
      <script src="js/scroll.js"></script>

      <script src="js/plugins.js"></script>
      <script src="js/main.js"></script>
      <?php
        if(!isset($page) || $page != 'index'){?>
          <script>
            $(function(){
              $("html, body").animate({scrollTop: '600px'},500);
            })
          </script> 
          
      <?php } ?>
      <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-47841142-1', 'grupotrocaki.com.br');
        ga('send', 'pageview');

      </script>