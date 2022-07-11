<%@page import="br.com.DAO.ColaboradorDAO"%>
<%@page import="br.com.DTO.ColaboradorDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Colaborador</title>
    </head>
    <body>
        <p>Colaborador foi cadastrado com sucesso!</p>
        <p>Retorne para a página de cadastro clicando <span><a href="/CadastroColaboradores/formVIEW.html">aqui</a></span>.</p>

        <%

        request.setCharacterEncoding("UTF8");
            try {
                ColaboradorDTO objcolaboradorDTO = new ColaboradorDTO();
                objcolaboradorDTO.setNome(request.getParameter("nome"));
                objcolaboradorDTO.setEmail(request.getParameter("email"));
                objcolaboradorDTO.setCpf(request.getParameter("cpf"));
                objcolaboradorDTO.setCnpj(request.getParameter("cnpj"));
                objcolaboradorDTO.setCep(request.getParameter("cep"));
                objcolaboradorDTO.setEndereco(request.getParameter("endereco"));
                objcolaboradorDTO.setLogradouro(request.getParameter("logradouro"));
                objcolaboradorDTO.setBairro(request.getParameter("bairro"));
                objcolaboradorDTO.setCidade(request.getParameter("cidade"));
                objcolaboradorDTO.setUf(request.getParameter("estado"));
                objcolaboradorDTO.setTipoPessoa(request.getParameter("tipoPessoa"));

                // Criar a classe e executar o método dentro da DAO
                ColaboradorDAO objcolaboradorDAO = new ColaboradorDAO();
                objcolaboradorDAO.cadastrarColaborador(objcolaboradorDTO);
                } catch (Exception e) {
                    
                }
        
        %>


    </body>
</html>
