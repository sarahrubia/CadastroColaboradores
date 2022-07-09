<%-- 
    Document   : ListarColaborador
    Created on : 9 de jul de 2022, 17:06:45
    Author     : sarah
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="br.com.DTO.ColaboradorDTO"%>
<%@page import="br.com.DAO.ColaboradorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Colaboradores</title>
    </head>
    <body>
        
        <h1> Lista de Colaboradores</h1>

        <%
            try {
                ColaboradorDAO objcolaboradorDAO = new ColaboradorDAO();
                ArrayList<ColaboradorDTO> lista = objcolaboradorDAO.PesquisarColaborador();

                for (int num = 0; num < lista.size(); num++) {
                    out.print("Código: " + lista.get(num).getId() + "<br>");
                    out.print("Nome: " + lista.get(num).getNome() + "<br>");
                    out.print("CPF: " + lista.get(num).getCpf() + "<br>");
                    out.print("CNPJ: " + lista.get(num).getCnpj() + "<br>");
                    out.print("CPF: " + lista.get(num).getEmail() + "<br>");
                    out.print("CEP: " + lista.get(num).getCep() + "<br>");
                    out.print("Endereço: " + lista.get(num).getEndereco() + "<br>");
                    out.print("Logradouro: " + lista.get(num).getLogradouro() + "<br>");
                    out.print("Bairro: " + lista.get(num).getBairro() + "<br>");
                    out.print("Cidade: " + lista.get(num).getCidade() + "<br>");
                    out.print("Estado: " + lista.get(num).getUf() + "<br>");
                    out.print("Bairro: " + lista.get(num).getTipoPessoa() + "<br>");
                    

                    out.print("<a href='formExcluirColaborador.jsp?id="
                    + lista.get(num).getId()+ "&nome="
                    + lista.get(num).getNome() + "&cpf="
                    + lista.get(num).getCpf() + "&cnpj="
                    + lista.get(num).getCnpj() + "&email="
                    + lista.get(num).getEmail() + "&cep="
                    + lista.get(num).getCep() + "&endereco="
                    + lista.get(num).getEndereco()+ "&logradouro="
                    + lista.get(num).getLogradouro()+ "&bairro="
                    + lista.get(num).getBairro()+ "&cidade="
                    + lista.get(num).getCidade()+ "&uf="
                    + lista.get(num).getUf() + "&tipoPessoa="
                    + lista.get(num).getTipoPessoa() + "'> Excluir </a>");
                    
                    out.print("<a href='formEditarColaborador.jsp?id="
                    + lista.get(num).getId()+ "&nome="
                    + lista.get(num).getNome() + "&cpf="
                    + lista.get(num).getCpf() + "&cnpj="
                    + lista.get(num).getCnpj() + "&email="
                    + lista.get(num).getEmail() + "&cep="
                    + lista.get(num).getCep() + "&endereco="
                    + lista.get(num).getEndereco()+ "&logradouro="
                    + lista.get(num).getLogradouro()+ "&bairro="
                    + lista.get(num).getBairro()+ "&cidade="
                    + lista.get(num).getCidade()+ "&uf="
                    + lista.get(num).getUf() + "&tipoPessoa="
                    + lista.get(num).getTipoPessoa() + "'> Editar</a>");
                        
         %>
         <br><br>
        <%
                }
                    
                } catch (Exception e) {
                }
        %>
    </body>
</html>
