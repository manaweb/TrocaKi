    <?php include('topo.php'); ?>
    <div class="container">
       <h2>CONTATO</h2>
       <div class="row">
         <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9">
            <form class="form contato" role="form">
              <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs12">
                  <div class="alert alert-danger alert-dismissable" style="display: none">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    
                  </div>
                </div>
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
                  <select class="form-control" name="departamento" id="depto" required>
                    <option value="">Escolha um departamento</option>
                    <option>Responsive Web Design</option>
                  </select>
                </div>
                <div class="form-group col-lg-6 col-md-6 col-sm-6 col-xs-6">
                  <label for="phone">TELEFONE :</label>
                  <input type="phone" name="telefone" id="phone" class="form-control" required>
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
                <a href="#" data-toggle="modal" data-target="#maps">
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
                    <div id="mapita" style="width: 100%;height: 500px;"></div>
                  </div>
                </div><!-- /.modal-content -->
              </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
          </div>
        </div>
      </div>
    </div>
    <?php include('rodape.php'); ?>
    <script type="text/javascript" src="js/jquery.validate.js"></script>
    <script src="js/maps.google.js"></script>
    <script>

        $('.modal').on('shown.bs.modal',function() {
          google.maps.event.trigger(map, "resize");
        });

        $(document).ready(function () {
          var myLatlng = new google.maps.LatLng(-21.25886,-48.323714);

          var myOptions = {
              zoom: 18,
              center: myLatlng,
              mapTypeId: google.maps.MapTypeId.HYBRID
            };

          map = new google.maps.Map(document.getElementById('mapita'), myOptions);

          var marker = new google.maps.Marker({
             position: new google.maps.LatLng(-21.26018,-48.321675),
             map: map,
             draggable: false,
             raiseOnDrag: false,
             labelContent: "A",
             labelAnchor: new google.maps.Point(3, 30),
             labelInBackground: false
           });

          var validator = $('.contato').validate({
            messages: {
              "nome": "",
              "telefone": "",
              "email": "",
              "mensagem": "",
              "departamento": ""
            }
          });

          $('form').submit(function() {
            if (!validator.valid()) {
              $('.alert').removeClass('alert-success').addClass('alert-danger').fadeIn('slow').html('<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Campos inválidos:<br>');
              //validator.errorMap is an object mapping input names -> error messages
              for (var i in validator.errorMap) {
                $('.alert').append("* <strong>"+i.toUpperCase()+"</strong><br>");
              }
            }else {
              $('.btn-primary').attr('disabled','disabled').text('Enviando...');
              $.post('ajaxRetorno.php?type=1',$(this).serialize(),function(data) {
                if (data == '') {
                  $('.alert').removeClass('alert-danger').addClass('alert-success').fadeIn('slow').html('<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Formulário enviado com sucesso');
                   $('.btn-primary').removeAttr('disabled').text('Enviado!');
                  setTimeout(function() {window.location = 'index.php'},3000);
                }
                else
                  $('.alert').removeClass('alert-success').addClass('alert-danger').fadeIn('slow').html('<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>Houve um erro, tente novamente mais tarde.');
              });
            }
            return false;
          });
        });
    </script>
    </body>
</html>
