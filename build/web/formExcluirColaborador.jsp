<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="dns-prefetch" href="https://fonts.gstatic.com" />
    <link
      href="https://fonts.googleapis.com/css?family=Raleway:300,400,600"
      rel="stylesheet"
      type="text/css"
    />
    <link href="assets/css/styles.css" type="stylesheet" />
    <!-- Bootstrap CSS -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
    />
    <title>Excluir Colaborador</title>
  </head>

  <body>
    <nav class="navbar navbar-expand-lg navbar-light navbar-java">
      <div class="container">
        <a class="navbar-brand" href="/CadastroColaboradores/"
          >Nexum Tecnologia</a
        >
        <button
          class="navbar-toggler"
          type="button"
          data-toggle="collapse"
          data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a
                class="nav-link"
                href="/CadastroColaboradores/ListarColaborador.jsp"
                >Tabela de Colaboradores</a
              >
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <main class="my-form">
      <div class="cotainer">
        <div class="row justify-content-center">
          <div class="col-md-8">
            <div class="card">
              <div class="card-header">Excluir Cadastro de Colaboradores</div>
              <div class="card-body">
                <form
                  action="ExcluirColaborador.jsp"
                  method="POST"
                  name="my-form"
                >
                <div class="form-group row">
                       <label for="labelCodigo" class="col-md-4 col-form-label text-md-right">Código</label>
                       <div class="col-md-6">
                              <input class="form-control" name="id" type="text" name="id" readonly value="<%=request.getParameter("id")%>">
                       </div>
                </div>
                <div class="form-group row">
                       <label for="labelNome" class="col-md-4 col-form-label text-md-right">Nome</label>
                       <div class="col-md-6">
                            <input type="text" class="form-control" name="nome"
                              value="<%=request.getParameter("nome")%>" readonly>
                       </div>
                </div>

                <div class="form-group row">
                       <label for="labelEmail" class="col-md-4  col-form-label text-md-right">E-mail</label>
                       <div class="col-md-6">
                            <input class="form-control" type="text" name="email"
                            value="<%=request.getParameter("email")%>" readonly>
                       </div>
                </div>

                <div class="form-group row row-cols-2">
                     <legend class="col-md-4 col-form-label text-md-right">Tipo de Pessoa</legend>
                     <div class="cols-8">
                         <div class="form-check form-check-inline">
                             <input class="form-check-input" type="radio" value="PessoaFisica" id="pessoaFisica" disabled
                             name="<%=request.getParameter("tipoPessoa")%>">
                             <label for="labelPessoaFisica" class="form-check-label">Pessoa
                                 Física</label>
                         </div>

                         <div class="form-check form-check-inline">
                             <input class="form-check-input" type="radio" value="PessoaJuridica" 
                                 id="pessoaJuridica" disabled name="<%=request.getParameter("tipoPessoa")%>">
                             <label for="labelPessoaJuridica" class="form-check-label">Pessoa
                                 Jurídica</label>
                         </div>
                     </div>
                 </div>

                 <div class="form-group row box boxcpf">
                     <label for="labelCPF" class="col-md-4 col-form-label text-md-right">CPF</label>
                     <div class="col-md-6">
                         <input type="text" id="cpf" class="form-control cpfEdit" name="cpf" readonly value="<%=request.getParameter("cpf")%>">
                     </div>
                 </div>

                <div class="form-group row box boxcnpj">
                  <label for="labelCNPJ" class="col-md-4 col-form-label text-md-right">CNPJ</label>
                  <div class="col-md-6">
                    <input type="text" id="cnpj" class="form-control" name="cnpj" readonly value="<%=request.getParameter("cnpj")%>">
                  </div>
                </div>

                 <div class="form-group row">
                     <label for="labelCEP" class="col-md-4 col-form-label text-md-right">CEP</label>
                     <div class="col-md-6">
                         <input type="text" id="cep" class="form-control" name="cep" readonly value="<%=request.getParameter("cep")%>">
                     </div>
                 </div>


                 <div class="form-group row">
                     <label for="labelLogradouro"
                         class="col-md-4 col-form-label text-md-right">Logradouro</label>
                     <div class="col-md-6">
                         <input type="text" id="logradouro" class="form-control" name="logradouro"
                             readonly value="<%=request.getParameter("logradouro")%>">
                     </div>
                 </div>

                 <div class="form-group row">
                     <label for="labelBairro"
                         class="col-md-4 col-form-label text-md-right">Bairro</label>
                     <div class="col-md-6">
                         <input type="text" id="bairro" class="form-control" name="bairro" readonly value="<%=request.getParameter("bairro")%>">
                     </div>
                 </div>                

                 <div class="form-group row">
                     <label for="labelCidade"
                         class="col-md-4 col-form-label text-md-right">Cidade</label>
                     <div class="col-md-6">
                         <input type="text" id="cidade" class="form-control" name="cidade" readonly value="<%=request.getParameter("cidade")%>">
                     </div>
                 </div>

                 <div class="form-group row">
                     <label for="labelEstado"
                         class="col-md-4 col-form-label text-md-right">Estado</label>
                     <div class="col-md-6">
                         <input type="text" id="estado" class="form-control" name="estado" readonly value="<%=request.getParameter("estado")%>">
                     </div>
                 </div>

                <div class="col-md-6 offset-md-4">
                  <button type="submit" class="btn btn-primary">
                    Excluir
                  </button>
                  <a href="/CadastroColaboradores/ListarColaborador.jsp" class="btn btn-secondary">Cancelar</a>
                </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </main>
    <script defer src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script defer src="./assets/js/jquery.js"></script>
    <script defer src="./assets/js/jquery_edit.js"></script>
  </body>
</html>

