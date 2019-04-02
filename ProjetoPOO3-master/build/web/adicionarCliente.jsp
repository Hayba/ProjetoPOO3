<%-- 
    Document   : adicionar
    Created on : 31/03/2019, 11:45:18
    Author     : José
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar</title>
    </head>
    <body>
        
        <h1>Clientes</h1>
        <h2>Adicionar</h2>
        <form action="indexCliente.jsp">
            Nome:<br/>
            <input type="text" name="nome"/><br/>
            CPF:<br/>
            <input type="text" name="cpf"/><br/>
            RG:<br/>
            <input type="text" name="rg"/><br/>
            Email:<br/>
            <input type="text" name="email"/><br/>
            Telefone:<br/>
            <input type="text" name="telefone"/><br/>
            Endereço:<br/>
            <input type="text" name="endereco"/><br/>
            <input type="submit" name="adicionar" value="sim">
            <input type="submit" name="adicionar" value="nao">
        </form>
    </body>
</html>
