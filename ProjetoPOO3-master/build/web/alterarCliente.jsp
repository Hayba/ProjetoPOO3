<%-- 
    Document   : alterar
    Created on : 31/03/2019, 11:45:31
    Author     : José
--%>

<%@page import="br.com.fatecpg.contatos.BD"%>
<%@page import="br.com.fatecpg.contatos.Clientes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar</title>
    </head>
    <body>
        <h1>Clientes</h1>
        <h2>Alterar</h2>
        <%
        int index = Integer.parseInt(request.getParameter("index"));
        Clientes c = BD.getClientes().get(index);
        %>
        
        <form action="indexCliente.jsp">
            <b>Índice <u><%=index%></u></b>
            Nome:<br/>
            <input type="text" name="nome" value="<%=c.getNome()%>"/><br/>
            CPF:<br/>
            <input type="text" name="cnpj" value="<%=c.getCpf ()%>"/><br/>
            RG:<br/>
            <input type="text" name="rg" value="<%=c.getRg()%>"/><br/>
            E-mail:<br/>
            <input type="text" name="email" value="<%=c.getEmail()%>"/><br/><br/>
            Telefone:<br/>
            <input type="text" name="telefone" value="<%=c.getTelefone()%>"/><br/>
            Endereço:<br/>
            <input type="text" name="endereco" value="<%=c.getEndereco()%>"/><br/>
            
            
            <input type="submit" name="alterar" value="sim"/>
            <input type="submit" name="alterar" value="nao"/>
            <input type="hidden" name="index" value="<%=index%>"/>
        </form>
        <a href="indexCliente.jsp">HOME</a>
        <a href="adicionarCliente.jsp">Adicionar</a>
    </body>
</html>
