<%-- 
    Document   : index
    Created on : 31/03/2019, 11:42:51
    Author     : Hayba
--%>

<%@page import="br.com.fatecpg.contatos.BDFornecedores"%>
<%@page import="br.com.fatecpg.contatos.ContatoFornecedores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        <%
        if(request.getParameter("adicionar")!= null){
            if(request.getParameter("adicionar").equals("sim")){
                ContatoFornecedores c = new ContatoFornecedores();
                c.setNome(request.getParameter("nome"));
                c.setCnpj(request.getParameter("cnpj"));
                c.setRazaosocial(request.getParameter("razaosocial"));
                c.setEndereco(request.getParameter("endereco"));
                c.setEmail(request.getParameter("email"));
                c.setTelefone(request.getParameter("telefone"));
                BDFornecedores.getContatos().add(c);
            }
            response.sendRedirect(request.getRequestURI());
        }
        if(request.getParameter("alterar")!=null){
            if(request.getParameter("alterar").equals("sim")){
                int index = Integer.parseInt(request.getParameter("index"));
                ContatoFornecedores c = new ContatoFornecedores();
                c.setNome(request.getParameter("nome"));
                c.setCnpj(request.getParameter("cnpj"));
                c.setRazaosocial(request.getParameter("razaosocial"));
                c.setEndereco(request.getParameter("endereco"));
                c.setEmail(request.getParameter("email"));
                c.setTelefone(request.getParameter("telefone"));
                BDFornecedores.getContatos().set(index,c);
            }
            response.sendRedirect(request.getRequestURI());
        }
        if(request.getParameter("excluir")!=null){
            if (request.getParameter("excluir").equals("sim")){
                int index = Integer.parseInt(request.getParameter("id"));
                BDFornecedores.getContatos().remove(index);
            }
            response.sendRedirect(request.getRequestURI());
        }
        %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastros</title>
    </head>
    <body>
        <h1>Sistema de Contatos</h1>
        <a href="/Projeto03/contatosFornecedores/lista.jsp">Lista Fornecedores</a>
        

    </body>
</html>
