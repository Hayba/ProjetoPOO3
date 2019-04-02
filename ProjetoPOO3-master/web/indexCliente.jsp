<%@page import="br.com.fatecpg.contatos.BD"%>
<%@page import="br.com.fatecpg.contatos.Clientes"%>
<%-- 
    Document   : index
    Created on : 01/04/2019, 09:30:00
    Author     : José
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("adicionar")!=null){
        if(request.getParameter("adicionar").equals("sim")){
        Clientes c = new Clientes();
        c.setNome(request.getParameter("nome"));
        c.setCpf(request.getParameter("cpf"));
        c.setRg(request.getParameter("rg"));
        c.setEmail(request.getParameter("email"));
        c.setTelefone(request.getParameter("telefone"));
        c.setEndereco(request.getParameter("endereco"));
        BD.getClientes().add(c);
    }
    response.sendRedirect(request.getRequestURI());
}
    
    if(request.getParameter("alterar")!=null){
        if(request.getParameter("alterar").equals("sim")){
            int index = Integer.parseInt(request.getParameter("index"));
            Clientes c = new Clientes();
            c.setNome(request.getParameter("nome"));
            c.setCpf(request.getParameter("cpf"));
            c.setRg(request.getParameter("rg"));
            c.setEmail(request.getParameter("email"));
            c.setTelefone(request.getParameter("telefone"));
            c.setEndereco(request.getParameter("endereco"));
            BD.getClientes().set(index,c);
        }
            response.sendRedirect(request.getRequestURI());
    }
    
    
    if(request.getParameter("excluir")!=null){
        if(request.getParameter("excluir").equals("sim")){
            int indexCliente = Integer.parseInt(request.getParameter("index"));
            BD.getClientes().remove(indexCliente);
    }
    response.sendRedirect(request.getRequestURI());
    }
    %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de clientes</title>
    </head>
    <body>
       
        <h1>Clientes</h1>
        <h2><a href="adicionarCliente.jsp">Adicionar cliente</a></h2>        
                <table border="1">
                    <tr>
                        <th>Indice</th>
                        <th>Nome</th>
                        <th>CPF</th>
                        <th>RG</th>
                        <th>Email</th>
                        <th>Telefone</th>
                        <th>Endereco</th>
                    </tr>
                    <%for(Clientes c: BD.getClientes()){%>
                    <%int index = BD.getClientes().indexOf(c);%>
                    <tr>
                        <td><%=index%></td>
                        <td><%=c.getNome()%></td>
                        <td><%=c.getCpf()%></td>
                        <td><%=c.getRg() %></td>
                        <td><%=c.getEmail() %></td>
                        <td><%=c.getTelefone() %></td>
                        <td><%=c.getEndereco() %></td>
                        <td>
                            <a href="alterarCliente.jsp?indexCliente=<%=index%>">Alterar</a>
                            <a href="excluirCliente.jsp?indexCliente=<%=index%>">Excluir</a>
                        </td>
                    </tr>
                    <% } %>
                </table>                           
    </body>
</html>
