<%@page import="java.util.ArrayList" %>
<%@page import="br.com.DTO.ColaboradorDTO" %>
<%@page import="br.com.DAO.ColaboradorDAO" %>
<%@page contentType="text/html" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet"
        type="text/css">
    <link href="assets/css/styles.css" type="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <title>Tabela de Colaboradores</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light navbar-java">
        <div class="container">
            <a class="navbar-brand" href="/CadastroColaboradores/">Nexum Tecnologia</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/CadastroColaboradores/">Cadastro de
                            Colaboradores</a>
                    </li>
                </ul>

            </div>
        </div>
    </nav>

    <div>
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Tabela de Colaboradores</div>
                    <div class="card-body">

                        <table class="table table-striped custab">
                            <thead>
                                <tr>
                                    <th>Nome</th>
                                    <th>CPF ou CNPJ</th>
                                    <th>E-mail</th>
                                    <th>Cidade</th>
                                    <th>UF</th>
                                    <th>Editar</th>
                                    <th>Excluir</th>
                                </tr>
                            </thead>

                            <% try { ColaboradorDAO objcolaboradorDAO=new ColaboradorDAO();
                                ArrayList<ColaboradorDTO> lista =
                                objcolaboradorDAO.PesquisarColaborador();
                                %><tr>
                                    <% for (int num=0; num < lista.size(); num++) { %>
                                        <td>
                                            <%out.print(lista.get(num).getNome() + "</td>");
                                        %>
                                        <td>
                                            <%
                                            if(lista.get(num).getCpf().equals("")) {
                                                out.print(lista.get(num).getCnpj() + "</td>");
                                            } else {
                                                out.print(lista.get(num).getCpf() + "</td>");
                                            }
                                            %>
                                        <td>
                                            <%out.print(lista.get(num).getEmail() + "</td>");
                                                %>
                                        <td>
                                            <%out.print(lista.get(num).getCidade() + "</td>");
                                                %>
                                        <td>
                                            <%out.print(lista.get(num).getUf() + "</td>");
                                                %>
                                        <td>
                                            <% out.print("<a href='formEditarColaborador.jsp?id="
                            + lista.get(num).getId()+ "&nome="
                            + lista.get(num).getNome() + "&cpf="
                            + lista.get(num).getCpf() + "&cnpj="
                            + lista.get(num).getCnpj() + "&email="
                            + lista.get(num).getEmail() + "&cep="
                            + lista.get(num).getCep() + "&logradouro="
                            + lista.get(num).getLogradouro() + "&bairro="
                            + lista.get(num).getBairro() + "&cidade="
                            + lista.get(num).getCidade() + "&estado="
                            + lista.get(num).getUf() + "&tipoPessoa="
                            + lista.get(num).getTipoPessoa() + "'> Editar</a>" + "</td>");
                                        %><td>
                                            <% out.print("<a href='formExcluirColaborador.jsp?id="
                            + lista.get(num).getId()+ "&nome="
                            + lista.get(num).getNome() + "&cpf="
                            + lista.get(num).getCpf() + "&cnpj="
                            + lista.get(num).getCnpj() + "&email="
                            + lista.get(num).getEmail() + "&cep="
                            + lista.get(num).getCep() + "&logradouro="
                            + lista.get(num).getLogradouro()+ "&bairro="
                            + lista.get(num).getBairro() + "&cidade="
                            + lista.get(num).getCidade() + "&estado="
                            + lista.get(num).getUf() + "&tipoPessoa="
                            + lista.get(num).getTipoPessoa() + "'> Excluir</a>" + "</td>");
                                        %>

                                </tr>
                                <%} } catch (Exception e) { } %>
                                
                    </div>
                </div>

            </div>

        </div>

    </div>
</body>

</html>