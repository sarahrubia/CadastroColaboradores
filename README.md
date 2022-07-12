# Cadastro de Colaboradores

## Informações gerais sobre o projeto

Desenvolvimento de um projeto CRUD (Create, Retrieve/List, Update e Delete) utilizando o acesso a banco de dados com o MySQL e linguagem de programação Java.

## Assuntos Abordados no Desenvolvimento do Projeto:

- Acesso a banco de dados com o MySql;
- Conexão com o banco de dados através do JDBC;
- Uso de linguagens, como: JavaScript e CSS;
- Uso do framework Bootstrap para realização de um layout do projeto.


## Tecnologias e softwares utilizados
- Java
- JDBC
- HTML
- Javascript
- JQuery
- CSS
- Bootstrap
- MYSQL
- phpmyadmin
- MYSQL Workbench
- Apache Tomcat 
- Netbeans
- VSCode

## Escopo do projeto

FRONT-END:

LISTAR

Deve apresentar lista de colaboradores cadastrados em banco de dados, as colunas [Nome], [CPF] ou [CNPJ], [e-mail], [Cidade], [UF], [OPÇÃO PARA EDITAR], [OPÇÃO PARA EXCLUIR]

CADASTRO/ATUALIZAÇÃO

Campos do formulário:
[Nome] * Obrigatório, [Email] * Obrigatório, [Tipo de Pessoa]: Pessoa física ou Pessoa jurídica * Obrigatório, [CPF] (Exibido e obrigatório se a opção "Pessoa física" for selecionada). Campo deve possuir máscara e validação. [CNPJ] (Exibido e obrigatório se a opção "Pessoa jurídica" for selecionada).
Campo deve possuir máscara e validação. [CEP] (deve possuir máscara e validação e preenchimento obrigatório). Endereço (campos somente leitura - Deve preencher automaticamente após consulta a API - sugestão https://viacep.com.br/) [Logradouro], [Bairro], [Cidade], [Estado]

Os dados devem ser persistidos em dados em banco de dados MySql com código em Java.
