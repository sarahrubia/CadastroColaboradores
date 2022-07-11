<%@page import="br.com.DAO.ColaboradorDAO"%>
<%@page import="br.com.DTO.ColaboradorDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

                <!-- Fonts -->
        <link rel="dns-prefetch" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">
        <link href="assets/css/styles.css" type="stylesheet">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

        <title>Excluir Cadastro de Colaborador</title>
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-light navbar-java">
            <div class="container">
                <a class="navbar-brand" href="#">Nexum Tecnologia</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
    
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="/CadastroColaboradores/formVIEW.html">Início</a>
                        </li>
                    </ul>
    
                </div>
            </div>
        </nav>

        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <div class="alert alert-success" role="alert">
                            Exclusão de colaborador concluída com sucesso!
                        </div>
                        <div class="card-body">
                            <p>Selecione uma das opções para ser redirecionado:</p>
                            <a href="/CadastroColaboradores/ListarColaborador.jsp" class="btn btn-primary btn-lg">Lista de Colaboradores</a>
                            <a href="/CadastroColaboradores/formVIEW.html" class="btn btn-secondary btn-lg">Cadastrar Colaborador</a>
                            </div>
                        </div>
                </div>
            </div>


        <%
        request.setCharacterEncoding("UTF8");
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
