<%-- 
    Document   : excluir
    Created on : 31/03/2019, 11:45:07
    Author     : Hayba
--%>

<%@page import="br.com.fatecpg.contatos.ContatoFornecedores"%>
<%@page import="br.com.fatecpg.contatos.BDFornecedores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir</title>
    </head>
    <body>
        <h1>Fornecedores</h1>
        <h2>Excluir</h2>
        <% int index = Integer.parseInt(request.getParameter("id"));
           ContatoFornecedores c = BDFornecedores.getContatos().get(index);
        %>
        <form action="../index.jsp">
            <b>Índice: <u><%=index%></u></b>
            <br>Nome: <b><%=c.getNome()%></b>
            <br>CNPJ: <b><%=c.getCnpj()%></b>
            <br>Razão Social: <b><%=c.getRazaosocial()%></b>
            <br>Endereço: <b><%=c.getEndereco()%></b>
            <br>Telefone: <b><%=c.getTelefone()%></b>
            <br>E-Mail: <b><%=c.getEmail()%></b>
            <hr/>
            <h2>Deseja excluir o fornecedor?</h2>
            <input type="submit" name="excluir" value="sim"/>
            <input type="submit" name="excluir" value="nao"/>
            <input type="hidden" name="index" value="<%=index%>"
        </form>
        <a href="../index.jsp">HOME</a>
        <a href="adicionar.jsp">Adicionar</a>
    </body>
</html>
