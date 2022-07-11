// Mostrar campo CPF ou CNPJ dependendo da escolha do tipo de pessoa

$(document).ready(function () {
  $(".box").hide();

  $('input[type="radio"]').click(function () {
    var inputValue = $(this).attr("value");
    var targetBox = $("." + inputValue);
    $(".box").not(targetBox).hide();
    $(targetBox).show();

    if (inputValue == "PessoaFisica") {
      $("#cpf").attr("required", true);
      $("#cnpj").removeAttr("required");
    } else if (inputValue == "PessoaJuridica") {
      $("#cnpj").attr("required", true);
      $("#cpf").removeAttr("required");
    }
  });
});

// Requisição API viacep

$(document).ready(function() {

  function limpa_formulário_cep() {
      // Limpa valores do formulário de cep.
      $("#logradouro").val("");
      $("#bairro").val("");
      $("#cidade").val("");
      $("#estado").val("");
  }
  
  //Quando o campo cep perde o foco.
  $("#cep").blur(function() {

      //Nova variável "cep" somente com dígitos.
      var cep = $(this).val().replace(/\D/g, '');

      //Verifica se campo cep possui valor informado.
      if (cep != "") {

          //Expressão regular para validar o CEP.
          var validacep = /^[0-9]{8}$/;

          //Valida o formato do CEP.
          if(validacep.test(cep)) {

              //Preenche os campos com "..." enquanto consulta webservice.
              $("#logradouro").val("...");
              $("#bairro").val("...");
              $("#cidade").val("...");
              $("#estado").val("...");

              //Consulta o webservice viacep.com.br/
              $.getJSON("https://viacep.com.br/ws/"+ cep +"/json/?callback=?", function(dados) {

                  if (!("erro" in dados)) {
                      //Atualiza os campos com os valores da consulta.
                      $("#logradouro").val(dados.logradouro);
                      $("#bairro").val(dados.bairro);
                      $("#cidade").val(dados.localidade);
                      $("#estado").val(dados.uf);

                  } //end if.
                  else {
                      //CEP pesquisado não foi encontrado.
                      limpa_formulário_cep();
                      alert("CEP não encontrado.");
                  }
              });
          } //end if.
          else {
              //cep é inválido.
              limpa_formulário_cep();
              alert("Formato de CEP inválido.");
          }
      } //end if.
      else {
          //cep sem valor, limpa formulário.
          limpa_formulário_cep();
      }
  });
});

// Máscara

$(document).ready(function () {
    $("#cep").mask("99999-999");
    $("#cpf").mask('000.000.000-00', {reverse: true});
    $("#cnpj").mask('00.000.000/0000-00', {reverse: true});
});
