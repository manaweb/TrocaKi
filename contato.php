    <?php include('topo.php'); ?>
    <div class="container">
       <h2>CONTATO</h2>
       <div class="row">
         <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
            <form class="form contato" role="form">
              <div class="row">
                <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-6">
                  <label for="nome">NOME :</label>
                  <input type="text" name="nome" id="nome" class="form-control" required>
                </div>
                <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-6">
                  <label for="email">EMAIL :</label>
                  <input type="email" name="email" id="email" class="form-control" required>
                </div>
                <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-6">
                  <label for="depto">DEPARTAMENTO :</label>
                  <select class="form-control" name="depto" id="depto" required>
                    <option value="">Escolha um departamento</option>
                    <option>Responsive Web Design</option>
                  </select>
                </div>
                <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-6">
                  <label for="phone">TELEFONE :</label>
                  <input type="phone" name="phone" id="phone" class="form-control" required>
                </div>
              </div>
              <div class="row">
                <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                  <label for="mensagem">MENSAGEM :</label>
                  <textarea class="form-control" id="mensagem" name="mensagem" rows="5" required></textarea>
                </div>
                <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                  <button class="btn btn-primary btn-lg pull-right">Enviar</button>
                </div>
              </div>
            </form>
         </div>
         <div class="contato col-lg-3 col-md-3 col-sm-3 col-xs-3">
          <div class="row">
            <ul class="table-infos list-unstyled">
              <li>
                <h2 class="text-center"><strong>telefone</strong></h2>
              </li>
              <li>
                <a href="#">
                  <span class="glyphicon glyphicon-earphone pull-left"></span>
                  <p>(16) 3202-1178</p>
                </a>
              </li>
              <li>
                <a href="#">
                  <span class="glyphicon glyphicon-map-marker pull-left"></span>
                  <p>Rua Monteiro Lobato, 987, Jaboticabal - SP</p>
                </a>
              </li>
            </ul>
          </div>
          <div class="row">
            <a href="javascript:void(0);" data-toggle="modal" data-target="#maps">
              <img src="img/map.png" class="img-responsive" alt="TrocaKi - Map">
            </a>
          </div>
          <div class="row">
            <div class="modal fade" id="maps" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
              <div class="modal-dialog">
              <a href="javascript:void(0);" class="modal-close pull-right" data-dismiss="modal" aria-hidden="true">&times;</a>
                <div class="modal-content">
                  <div class="modal-body">
                    <iframe width="100%" height="600px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=pt-BR&amp;geocode=&amp;q=Rua+Monteiro+Lobato,+977,+Jaboticabal+-+SP&amp;aq=&amp;sll=37.0625,-95.677068&amp;sspn=60.116586,135.263672&amp;t=h&amp;ie=UTF8&amp;hq=&amp;hnear=Rua+Monteiro+Lobato,+977+-+Barra+Funda,+S%C3%A3o+Paulo,+14870-410,+Brasil&amp;z=14&amp;ll=-21.259184,-48.323084&amp;output=embed"></iframe>
                  </div>
                </div><!-- /.modal-content -->
              </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
          </div>
        </div>
      </div>
    </div>
    <?php include('rodape.php'); ?>
    </body>
</html>
