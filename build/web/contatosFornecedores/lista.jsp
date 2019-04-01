<%-- 
    Document   : lista
    Created on : 31/03/2019, 11:44:56
    Author     : Hayba
--%>

<%@page import="br.com.fatecpg.contatos.BDFornecedores"%>
<%@page import="br.com.fatecpg.contatos.ContatoFornecedores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Fornecedores</title>
    </head>
    <body>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>CNPJ</th>
                <th>Razão Social</th>
                <th>Endereço</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Comandos</th>
            </tr>
            <%for(ContatoFornecedores c:BDFornecedores.getContatos()){%>
            <%int index = BDFornecedores.getContatos().indexOf(c);%>
            <tr>
                <td><%=index%></td>
                <td><%=c.getNome()%></td>
                <td><%=c.getCnpj()%></td>
                <td><%=c.getRazaosocial()%></td>
                <td><%=c.getEndereco()%></td>
                <td><%=c.getEmail()%></td>
                <td><%=c.getTelefone()%></td>
                <td>
                    <a href="alterar.jsp?id=<%=index%>">Alterar</a>
                    <a href="excluir.jsp?id=<%=index%>">Excluir</a>
                </td>
            </tr>
            <%}%>
        </table>
        <a href="../index.jsp">HOME</a>
        <a href="adicionar.jsp">Adicionar</a>
        <a href="excluir.jsp">Excluir</a>
    </body>
</html>
