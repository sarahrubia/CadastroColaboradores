<%@page import="br.com.DAO.ColaboradorDAO"%>
<%@page import="br.com.DTO.ColaboradorDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            try {
                ColaboradorDTO objcolaboradorDTO = new ColaboradorDTO();
                objcolaboradorDTO.setId(Integer.parseInt(request.getParameter("id")));
                objcolaboradorDTO.setNome(request.getParameter("nome"));
                objcolaboradorDTO.setCpf(request.getParameter("cpf"));
                objcolaboradorDTO.setCnpj(request.getParameter("cnpj"));
                objcolaboradorDTO.setCep(request.getParameter("cep"));
                objcolaboradorDTO.setEmail(request.getParameter("email"));
                objcolaboradorDTO.setEndereco(request.getParameter("endereco"));
                objcolaboradorDTO.setLogradouro(request.getParameter("logradouro"));
                objcolaboradorDTO.setBairro(request.getParameter("bairro"));
                objcolaboradorDTO.setCidade(request.getParameter("cidade"));
                objcolaboradorDTO.setUf(request.getParameter("estado"));
                objcolaboradorDTO.setTipoPessoa(request.getParameter("tipoPessoa"));
                

                ColaboradorDAO objcolaboradorDAO = new ColaboradorDAO();
                objcolaboradorDAO.EditarColaborador(objcolaboradorDTO);
                } catch (Exception e) {
                    
                }
        
        %>
    </body>
</html>
