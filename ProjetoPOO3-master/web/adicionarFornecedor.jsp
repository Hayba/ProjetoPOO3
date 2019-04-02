<%-- 
    Document   : adicionar
    Created on : 31/03/2019, 11:45:18
    Author     : Hayba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar</title>
    </head>
    <body>
        <h1>Fornecedores</h1>
        <h2>Adicionar</h2>
        <form action="indexFornecedor.jsp">
            Nome:<br/>
            <input type="text" name="nome"/><br/>
            CNPJ:<br/>
            <input type="text" name="cnpj"/><br/>
            Razão Social:<br/>
            <input type="text" name="razaosocial"/><br/>
            Endereço:<br/>
            <input type="text" name="endereco"/><br/>
            Telefone:<br/>
            <input type="text" name="telefone"/><br/>
            E-mail:<br/>
            <input type="text" name="email"/><br/>
            <input type="submit" name="adicionar" value="sim">
            <input type="submit" name="adicionar" value="nao">
        </form>
    </body>
</html>
