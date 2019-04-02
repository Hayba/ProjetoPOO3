<%-- 
    Document   : alterar
    Created on : 31/03/2019, 11:45:31
    Author     : Hayba
--%>

<%@page import="br.com.fatecpg.contatos.BD"%>
<%@page import="br.com.fatecpg.contatos.Fornecedores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar</title>
    </head>
    <body>
        <h1>Fornecedores</h1>
        <h2>Alterar</h2>
        <%
        int index = Integer.parseInt(request.getParameter("index"));
        Fornecedores c = BD.getFornecedores().get(index);
        %>
        
        <form action="indexFornecedor.jsp">
            <b>Índice <u><%=index%></u></b>
            Nome:<br/>
            <input type="text" name="nome" value="<%=c.getNome()%>"/><br/>
            CNPJ:<br/>
            <input type="text" name="cnpj" value="<%=c.getCnpj()%>"/><br/>
            Razão Social:<br/>
            <input type="text" name="razaosocial" value="<%=c.getRazaosocial()%>"/><br/>
            Endereço:<br/>
            <input type="text" name="endereco" value="<%=c.getEndereco()%>"/><br/>
            Telefone:<br/>
            <input type="text" name="telefone" value="<%=c.getTelefone()%>"/><br/>
            E-mail:<br/>
            <input type="text" name="email" value="<%=c.getEmail()%>"/><br/><br/>
            
            <input type="submit" name="alterar" value="sim"/>
            <input type="submit" name="alterar" value="nao"/>
            <input type="hidden" name="index" value="<%=index%>"/>
        </form>
        <a href="indexFornecedor.jsp">HOME</a>
        <a href="adicionarFornecedor.jsp">Adicionar</a>
    </body>
</html>
