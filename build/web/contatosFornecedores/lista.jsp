<%-- 
    Document   : lista
    Created on : 31/03/2019, 11:44:56
    Author     : Hayba
--%>

<%@page import="br.com.fatecpg.contatos.BD"%>
<%@page import="br.com.fatecpg.contatos.Contato"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
            <%for(Contato c:BD.getContatos()){%>
            <%int id = BD.getContatos().indexOf(c);%>
            <tr>
                <td><%=id%></td>
                <td><%=c.getNome()%></td>
                <td><%=c.getCnpj()%></td>
                <td><%=c.getRazaosocial()%></td>
                <td><%=c.getEndereco()%></td>
                <td><%=c.getEmail()%></td>
                <td><%=c.getTelefone()%></td>
                <td>
                    <a href="alterar.jsp?id=<%=id%>">Alterar</a>
                    <a href="excluir.jsp?id=<%=id%>">Excluir</a>
                </td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
