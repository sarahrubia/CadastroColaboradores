// Marcando radiobuttons no formEditarColaborador.jsp;

$(document).ready(function(){

    var cpfValue = $('.cpfEdit').val();
    if (cpfValue !== "") {
        $("#pessoaFisica").prop("checked", true).change();
        $('.boxcpf').show();      
    } else {
        $("#pessoaJuridica").prop("checked", true).change();
        $('.boxcnpj').show();
    };
  
  });