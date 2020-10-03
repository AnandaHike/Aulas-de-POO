<%-- 
    Document   : cadastros
    Created on : 21 de set de 2020, 18:12:00
    Author     : nanda
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="br.edu.fatecpg.poo.Cadastros"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<Cadastros> usersList = (ArrayList)application.getAttribute("usersList");
    if(usersList == null){
        usersList = new ArrayList<>();
        usersList.add(new Cadastros("admin", "admin@domain.com", "(13)99999-9999"));
        usersList.add(new Cadastros("Fulano", "fulano@domain.com", "(13)98888-8888"));
        usersList.add(new Cadastros("Beltrano", "beltrano@domain.com", "(13)97777-7777"));
        usersList.add(new Cadastros("Cicrano", "cicrano@domain.com", "(13)96666-6666"));
        application.setAttribute("usersList", usersList);
    }
    if(request.getParameter("add")!=null){
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String telefone = request.getParameter("telefone");
        usersList.add(new Cadastros(nome, email, telefone));
        response.sendRedirect(request.getRequestURI());
    }
    if(request.getParameter("remove")!=null){
        int i = Integer.parseInt(request.getParameter("i"));
        usersList.remove(i);
        response.sendRedirect(request.getRequestURI());
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>POO - Cadastro</title>
    </head>
    <body>
        <h2><a href="index.jsp">Voltar</a></h2>
        <h1>POO</h1>
        <h2>Cadastro</h2>
        <form>
            Nome: <input type="text" name="nome" />
            Email: <input type="text" name="email" />
            Telefone: <input type="password" name="telefone" />
            <input type="submit" value="Adicionar" name="add" />
        </form>
        <hr/>
        <table border="1">
            <tr>
                <th>Índice</th>
                <th>Nome</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Comandos</th>
            </tr>
            <%for(int i=0; i<usersList.size(); i++){%>
            <tr>
                <td><%= i %></td>
                <% Cadastros u = usersList.get(i); %>
                <td><%= u.getNome() %></td>
                <td><%= u.getEmail() %></td>
                <td><%= u.getTelefone()%></td>
                <td>
                    <form>
                        <input type="hidden" name="i" value="<%= i %>"/>
                        <input type="submit" name="remove" value="Remover"/>
                    </form>
                </td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
