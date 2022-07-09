<%-- 
    Document   : ExcluirColaborador
    Created on : 9 de jul de 2022, 18:31:29
    Author     : sarah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Colaborador</title>
    </head>
    <body>
        <form action="ExcluirColaborador.jsp" method="POST">
            <label for="labelCodigo">Código</label>
            <input type="text" name="id"
                   value="<%=request.getParameter("id")%>"> <br>
            
            <label for="labelNome">Nome</label>
            <input type="text" name="nome" 
                   value="<%=request.getParameter("nome")%>"> <br>

            <label for="labelEmail">E-mail</label>
            <input type="text" name="email"
                   value="<%=request.getParameter("email")%>"> <br>
            
            <p>Tipo de pessoa</p>
            <input type="radio" value="Pessoa Fisica" id="pessoaFisica"
                   name="<%=request.getParameter("tipoPessoa")%>">
            <label for="labelPessoaFisica">Pessoa Física</label>
            <input type="radio" value="Pessoa Juridica" id="pessoaJuridica"
                   name="<%=request.getParameter("tipoPessoa") %>">
            <label for="labelPessoaJuridica">Pessoa Jurídica</label> <br>

            <label for="labelCPF">CPF</label>
            <input type="text" name="cpf" 
                   value="<%=request.getParameter("cpf")%>"> <br>

            <label for="labelCNPJ">CNPJ</label>
            <input type="text" name="cnpj"
                   value="<%=request.getParameter("cpnj")%>"> <br>

            <label for="labelCEP">CEP</label>
            <input type="text" name="cep"
                   value="<%=request.getParameter("cep")%>"> <br>

            <label for="labelEndereco">Endereço</label>
            <input type="text" name="endereco"
                   value="<%=request.getParameter("endereco")%>"> <br>

            <label for="labelLogradouro">Logradouro</label>
            <input type="text" name="logradouro"
                   value="<%=request.getParameter("logradouro")%>"> <br>

            <label for="labelBairro">Bairro</label>
            <input type="text" name="bairro"
                   value="<%=request.getParameter("bairro")%>"> <br>

            <label for="labelCidade">Cidade</label>
            <input type="text" name="cidade"
                   value="<%=request.getParameter("cidade")%>"> <br>

            <label for="labelEstado">Estado</label>
            <input type="text" name="uf"
                   value="<%=request.getParameter("uf")%>"> <br>

            <button type="submit">Excluir</button>
        </form>
    </body>
</html>
