// Radio button na página formEditarColaborador.jsp

$(document).ready(function(){



    var cpfValue = $('#cpf').val();

    if (cpfValue != "") {
        $("#pessoaFisica").prop("checked", true).change();
        
    } else {
        $("#pessoaJuridica").prop("checked", true).change();
    };


});

