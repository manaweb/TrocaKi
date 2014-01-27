$(document).ready(function() {

	$('.carousel').carousel();

    $('#btnBuscarCep').click(function() {
        $.blockUI({
            message: '<h3> Consultando </h3>'
        });
        $('#panelFooter').text('');

        //Pega o conteudo do campo CEP e remove caracteres especiais
        var cep = $('#cep').val().replace(/[^\d]/g, "");

        $.ajax({
            url: "http://cep.correiocontrol.com.br/" + cep + ".json",
            type: "GET",
            dataType: "json",
            success: function(json) {
                $('#logradouro').val(json.logradouro);
                $('#bairro').val(json.bairro);
                $('#cidade').val(json.localidade);
                $('#estado').val(json.uf);

            },
            error: function() {
                $('#panelFooter').text('CEP não localizado!');
                 $('#txtLogradouro').val('');
                $('#txtBairro').val('');
                $('#txtCidade').val('');
                $('#txtEstado').val('');
            },
            complete: function() {
                $.unblockUI();
            }
        });


    });

});