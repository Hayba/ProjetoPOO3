<%-- 
    Document   : index2
    Created on : 29/03/2019, 16:15:20
    Author     : hayba
--%>


<%@page import="br.com.fatecpg.contatos.BD"%>
<%@page import="br.com.fatecpg.contatos.Fornecedores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 if(request.getParameter("adicionar")!=null){
        if(request.getParameter("adicionar").equals("sim")){
        Fornecedores f = new Fornecedores();
        f.setNome(request.getParameter("nome"));
        f.setRazaosocial(request.getParameter("razao"));
        f.setCnpj(request.getParameter("cnpj"));
        f.setEmail(request.getParameter("email"));
        f.setTelefone(request.getParameter("telefone"));
        f.setEndereco(request.getParameter("endereco"));
        BD.getFornecedores().add(f);
    }
    response.sendRedirect(request.getRequestURI());
}
    
    if(request.getParameter("alterar")!=null){
        if(request.getParameter("alterar").equals("sim")){
            int index = Integer.parseInt(request.getParameter("index"));
            Fornecedores f = new Fornecedores();
            f.setNome(request.getParameter("nome"));
            f.setRazaosocial(request.getParameter("razao"));
            f.setCnpj(request.getParameter("cnpj"));
            f.setEmail(request.getParameter("email"));
            f.setTelefone(request.getParameter("telefone"));
            f.setEndereco(request.getParameter("endereco"));
            BD.getFornecedores().set(index,f);
        }
            response.sendRedirect(request.getRequestURI());
    }
    
    
    if(request.getParameter("excluir")!=null){
        if(request.getParameter("excluir").equals("sim")){
            int index = Integer.parseInt(request.getParameter("index"));
            BD.getFornecedores().remove(index);
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
        
        <h1>Fornecedores</h1>
        <h2><a href="adicionarFornecedor.jsp">Adicionar fornecedor</a></h2>        
                <table border="1">
                    <tr>
                        <th>Indice</th>
                        <th>Nome</th>
                        <th>Razão social</th>
                        <th>CNPJ</th>
                        <th>Email</th>
                        <th>Telefone</th>
                        <th>Endereco</th>
                    </tr>
                    <%for(Fornecedores f: BD.getFornecedores()){%>
                    <%int index = BD.getFornecedores().indexOf(f);%>
                    <tr>
                        <td><%=index%></td>
                        <td><%=f.getNome()%></td>
                        <td><%=f.getRazaosocial()%></td>
                        <td><%=f.getCnpj() %></td>
                        <td><%=f.getEmail() %></td>
                        <td><%=f.getTelefone() %></td>
                        <td><%=f.getEndereco() %></td>
                        <td>
                            <a href="alterarFornecedor.jsp?index=<%=index%>">Alterar</a>
                            <a href="excluirFornecedor.jsp?index=<%=index%>">Excluir</a>
                        </td>
                    </tr>
                    <% } %>
                </table>                           
    </body>
</html>