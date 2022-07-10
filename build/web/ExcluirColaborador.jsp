<%-- 
    Document   : ExcluirLivro
    Created on : 9 de jul de 2022, 18:44:53
    Author     : sarah
--%>

<%@page import="br.com.DAO.ColaboradorDAO"%>
<%@page import="br.com.DTO.ColaboradorDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Colaborador</title>
    </head>
    <body>
        <%
            try {
                ColaboradorDTO objcolaboradorDTO = new ColaboradorDTO();
                objcolaboradorDTO.setId(Integer.parseInt(request.getParameter("id")));

                // Criar a classe e executar o método dentro da DAO
                ColaboradorDAO objcolaboradorDAO = new ColaboradorDAO();
                objcolaboradorDAO.ExcluirColaborador(objcolaboradorDTO);
                } catch (Exception e) {
                    
                }
        
        %>
    </body>
</html>
